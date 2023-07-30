--[[ Made by ThroughTheFireAndFlames#9925 | Universal

        Universal Human Shield [Requires ALT]

--]]---------------------------------------

-- Note: Only ALT is supposed to execute this!
getgenv().Owners = {"RobloxUsernameHere"} -- Your main name [Not ALT username]
getgenv().Offset = 5 -- [1] the closest

getgenv().StartCommand = "start" -- What to chat to activate
getgenv().StopCommand = "stop" -- What to chat to deactivate

task.spawn(function()
    while true do wait(0.1)
        -- Attacking remote event here [Optional]
    end
end)

loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/HumanShield/main/Universal"))();