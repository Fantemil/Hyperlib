-- RECOMMENDED TO PUT THIS IN AUTOEXEC!

loadstring(game:HttpGet("https://raw.githubusercontent.com/devnorb/LFE/main/scriptloader.lua"))()

task.spawn(function()
    repeat
        task.wait(0.3)
    until game:IsLoaded()
    task.wait(1.5)
    while task.wait(0.3) do
        local Old
        Old = hookfunction(debug.setmetatable or setmetatable, function(...)
            if tostring(getcallingscript()):find("BAC_") then
                return
            end
            return Old(...)
        end)
    end
end)

pcall(function()
    game.ReplicatedFirst:ClearAllChildren()

    local descendants = game.ReplicatedFirst:GetDescendants()

    for _, descendant in ipairs(descendants) do
        if descendant:IsA("LocalScript") then
            descendant:Destroy()
        end
    end
end)

pcall(function()
    while task.wait(0.3) do
        for i, v in game.ReplicatedStorage.Events:GetChildren() do
            v:Destroy()
        end
        for i, v in game.AdService:GetChildren() do
            v:Destroy()
        end
        game.ReplicatedStorage.Events:Destroy()
        game.ReplicatedFirst:RemoveDefaultLoadingScreen()
    end
end)

warn("fuck off anticheat kys - norb_ | devs better not see this :>")
        local notif =
            loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Jailbreak/Notification/Source.lua"
            )
        )()
        notif.new(
            {
                Text = "anticheat should be bypassed :p - norb_",
                Duration = 5
            }
        )