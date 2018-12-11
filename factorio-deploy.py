#!/usr/bin/env python3

""" Factorio mod deployement script """

import os
import sys
import shutil
import glob
import zipfile
import json

import platform
import subprocess

# Load Windows RedEdit Lib
if platform.system() == "Windows":
    import winreg

## Configuration Section
deploy_mod = True
start_game = True
### Complete this if you're not using Steam
### Example :
### factorio_exe = "c:\\Games\\Factorio\\bin\\factorio.exe"
### factorio_exe = "/home/user/.steam/steam/steamapps/common/Factorio/bin/x64/factorio"
### factorio_exe = "/home/user/.steam/steam/steamapps/common/Factorio/bin/x64/factorio --load-game /home/user/.factorio/saves/TestColonie2"
factorio_exe = 'c:\\Program Files\\Factorio\\bin\\x64\\factorio.exe'

## Get information from filesystem
user_dir = ""
factorio_mod_dir = ""
steam_exe = ""
steam_game_id = "steam://rungameid/427520"

factorio_cmd = ''

user_dir = os.path.expanduser('~')
if platform.system() == "Windows":
    factorio_mod_dir = os.path.join(user_dir, "AppData", "Roaming", "Factorio", "mods")
    key = winreg.OpenKey(winreg.HKEY_CURRENT_USER, "Software\\Valve\\Steam")
    # steam_exe = winreg.QueryValueEx(key, "SteamExe")[0]
else:
    factorio_mod_dir = os.path.join(user_dir, ".factorio", "mods")
    steam_exe = "steam"

print("Steam_exe:", steam_exe)
print("factorio_mod_dir:", factorio_mod_dir)
print("factorio_exe:", factorio_exe)

if factorio_exe == "":
    factorio_cmd = [steam_exe, steam_game_id]
else:
    factorio_cmd = factorio_exe.split(' ')

print("Factorio Command:", factorio_cmd)

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

if start_game:
    print("\nStarting Factorio Game")
    print("run command:", factorio_cmd)
    subprocess.call(factorio_cmd)

