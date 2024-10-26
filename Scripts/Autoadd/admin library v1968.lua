
--[[

    skires admin library [v1]

    Credits:
        Skire (x6x_0) - creating the whole thing

        
    Custom functions:
        :GetUser(string) -- get a user from user/display name

    Built-in commands:
        ui, gui -- not developed yet, opens the main admin ui

    examples:
        functions:
            GetUser():
                local user = "shafto00"
                admin:GetUser(user) -- admin being the library!!
                print(user.DisplayName)

        Built-in commands:
            ui, gui:
                --prefix is !
                !ui
                !gui
]]

local admin = loadstring(game:HttpGet("https://pastebin.com/raw/d5MmWFD0"))()

--create the admin, (name, prefix)
local cmds = admin:create("very very cool admin", "!")

-- add a command, (keywords, callback)
cmds:addcmd({"re", "reset"}, function(user)
    local target = admin:GetUser(user)
    target.Character.Head:Destroy()
    print("Killed", target.DisplayName, " [@"..target.Name.."]!")
end)
--example: !re <user>, !reset <user>, no user = localplayer