#!/usr/bin/env python3

""" Factorio mod deployement script """

import os
import sys
import shutil
import glob
import zipfile
import json

import platform

## Configuration Section
deploy_mod = True

## Get information from filesystem
user_dir = ""
factorio_mod_dir = ""

user_dir = os.path.expanduser('~')
if platform.system() == "Windows":
    factorio_mod_dir = os.path.join(user_dir, "AppData", "Roaming", "Factorio", "mods")
else:
    factorio_mod_dir = os.path.join(user_dir, ".factorio", "mods")

if not os.path.exists(factorio_mod_dir):
    print ("No Factorio mod directory found. Aborting.")
    sys.exit(-1)

## Get informations from info.json
version = ""
mod_name = ""

with open("info.json") as info:
    js = json.load(info)
    version = js["version"]
    mod_name = js["name"]

if (mod_name == ""):
    print("No name found. Aborting.")
    sys.exit(-1)

if (version == ""):
    print ("No version found. Aborting.")
    sys.exit(-1)

print("Generating archive file for", mod_name, "version", version)

directory = mod_name + "_" + version

if not os.path.exists(directory):
    os.makedirs(directory)
    print ("Directory", directory, "created.")
else:
    print ("Directory", directory, "already exists. Aborting...")
    sys.exit(-2)

os.chdir('src')
for file in glob.glob('**/*.lua', recursive=True):
    print ("~~~ Copying ", file, "...", sep="")
    sub_dirs = os.path.split(file)[0]
    if len(sub_dirs) > 0:
        os.makedirs(os.path.join('..', directory, sub_dirs), exist_ok=True)
    shutil.copy(file, os.path.join('..', directory, file))
os.chdir('..')

print ("~~~ Copying locales")
shutil.copytree("locale", os.path.join(directory, "locale"))

print ("~~~ Copying Images")
shutil.copytree("graphics", os.path.join(directory, "graphics"))

print ("~~~ Copying info.json")
shutil.copy("info.json", directory)

print ("Creating zipfile...")
zipname = directory + '.zip'
zipf = zipfile.ZipFile(zipname, 'w', zipfile.ZIP_DEFLATED)

for root, dirs, files in os.walk(directory):
    for file in files:
        zipf.write(os.path.join(root, file))
zipf.close()

print ("Removing directory...")
shutil.rmtree(directory)

print ("Release " + version + " completed.")

if deploy_mod:
    print("\nDeploying mod...")
    destination = os.path.join(factorio_mod_dir, zipname)
    print("Moving file to:", destination)
    if os.path.exists(destination):
        os.remove(destination)
    shutil.move(zipname, destination)
