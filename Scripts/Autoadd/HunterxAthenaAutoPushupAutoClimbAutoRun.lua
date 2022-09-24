_G.Settings = {
    ["AutoPushups"] = false,
    ["MeditationAmount"] = 1000,
    ["AutoStamina"] = false,
    ["AutoRun"] = false,
}

local LocalPlayer = game.Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

function AutoPushups()
    while task.wait(1) do
        if _G.Settings.AutoPushups == false then break end
        
        if not LocalPlayer.PlayerGui:FindFirstChild("PushupsGui") then
            Character.Character.input:FireServer("J", false)
        end
        
        LocalPlayer.PlayerGui:WaitForChild("PushupsGui", 10)
        
        repeat
            pcall(function()
                LocalPlayer.PlayerGui.PushupsGui.Pushups.RemoteEvent:FireServer()
                task.wait()
            end)
        until _G.Settings.AutoPushups == false or not LocalPlayer.PlayerGui:FindFirstChild("PushupsGui")
    end
end

function AutoMeditation()
    for i = 1, _G.Settings.MeditationAmount do
        LocalPlayer.Character.Character.input:FireServer("M", false)
    end
end

function AutoClimb()
    while task.wait(0.5) and _G.Settings.AutoStamina do
        pcall(function()
            LocalPlayer.PlayerGui.MainMenu.Enabled = false
            
            for i = 1, 100 do
                LocalPlayer.Character.Character.input:FireServer("ClimbStart")
            end
            
            if LocalPlayer.Character:FindFirstChild("Head") then
                LocalPlayer.Character.Head:Destroy()
            end
        end)
    end
end

function AutoRun()
    while task.wait(0.5) and _G.Settings.AutoRun do
        pcall(function()
            LocalPlayer.PlayerGui.MainMenu.Enabled = false
            
            for i = 1, 100 do
                LocalPlayer.Character.Character.input:FireServer("FastSprintStart", true)
            end
            
            if LocalPlayer.Character:FindFirstChild("Head") then
                LocalPlayer.Character.Head:Destroy()
            end
        end)
    end
end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/miroeramaa/TurtleLib/main/TurtleUiLib.lua"))()

local win = library:Window("Main")

win:Toggle("Auto Pushups", false, function(state)
    _G.Settings.AutoPushups = state
    
    if state then
        AutoPushups() 
    end
end)

win:Toggle("Auto Climb", false, function(state)
    _G.Settings.AutoStamina = state
    
    if state then
        pcall(AutoClimb) 
    end
end)

win:Toggle("Auto Run", false, function(state)
    _G.Settings.AutoRun = state
    
    if state then
        pcall(AutoRun) 
    end
end)

win:Button("Mass Meditate", function()
    pcall(AutoMeditation) 
end)

win:Box("Amount", function(text, focuslost)
   if focuslost and tonumber(text) and tonumber(text) > 0 then
       _G.Settings.MeditationAmount = tonumber(text)
   end
end)