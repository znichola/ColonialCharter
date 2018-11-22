script.on_event(defines.events.on_rocket_launched, function(event)
    local rocket = event.rocket
    if rocket.get_item_count("satellite") < 1 then
     remote.call("silo_script", "set_show_launched_without_satellite", false)
    end
end)

script.on_init(setup_remote_call)
script.on_configuration_changed(setup_remote_call)

  function setup_remote_call()
    remote.call(interface_name, "set_show_launched_without_satellite", false)
end

script.on_event(defines.events.on_research_finished, function(event)
    if event.research.name == 'colonial-charter' then
        function setup_remote_call()
            remote.call(interface_name, "set_show_launched_without_satellite", false)
        end
    end
end)

script.on_event(defines.events.on_research_finished, function(event)
    if event.research.name == 'colonial-charter' then
         remote.call("silo_script", "add_tracked_item", "colony-ship")
    end
end)
