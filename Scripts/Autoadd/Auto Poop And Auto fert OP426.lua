local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load("ð Pooping Simulator! - Free - ð©", "Default")

local tab = DrRayLibrary.newTab("Autofarm", "ImageIdHere")

local counter = 0
local poopRunning = false
local fartRunning = false

tab.newToggle("Auto Poop", "Toggle", false, function(state)
    poopRunning = state
    coroutine.wrap(function()
        while poopRunning do
            workspace.RemoteEvent:FireServer("poop")
            counter = counter + 1
            
            if counter % 5 == 0 then
                task.wait(0.01)
            end
        end
    end)()
end)

tab.newToggle("Auto Fart", "Toggle", false, function(state)
    fartRunning = state
    coroutine.wrap(function()
        while fartRunning do
            workspace.RemoteEvent:FireServer("fart")
            counter = counter + 1
            
            if counter % 5 == 0 then
                task.wait(0.01)
            end
        end
    end)()
end)

tab.newLabel("Other")

tab.newButton("Delete Poop Parts","Permanently Delete Poops", function()
if game:GetService("Workspace"):FindFirstChild("poop") then
    game:GetService("Workspace").poop:Destroy()
end
end)