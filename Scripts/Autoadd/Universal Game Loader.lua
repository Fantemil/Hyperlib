-- edit: added more accurate timers (tenth)

repeat task.wait() until game:IsLoaded()
repeat task.wait() until game:GetService("Players") and game:GetService("Players").LocalPlayer and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid")

task.wait(10)

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Content Loader",
    Text = "Starting...",
    Duration = 10
})

local Services = {}

local Start = os.clock()

for i,v in pairs(game:GetChildren()) do
    pcall(function()
        Services[v.Name] = v
    end)
end

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Content Loader",
    Text = "Loading GUIs...",
    Duration = 5
})

local GUIStart = os.clock()

local PlayerGui = game:GetService("Players").LocalPlayer:FindFirstChildOfClass("PlayerGui")

game:GetService("ContentProvider"):PreloadAsync(PlayerGui:GetDescendants())

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Content Loader",
    Text = "Successfully loaded GUIs in "..(math.floor((os.clock() - GUIStart) * 10) / 10).." seconds.",
    Duration = 10
})

for Name,Service in pairs(Services) do
    if #Service:GetDescendants() > 1 then
        local ServiceStart = os.clock()
        game:GetService("ContentProvider"):PreloadAsync(Service:GetDescendants())
        
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Content Loader",
            Text = "Successfully loaded "..Name.." in "..(math.floor((os.clock() - ServiceStart) * 10) / 10).." seconds.",
            Duration = 5
        })
    end
end

task.wait(2.5)

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Content Loader",
    Text = "Finalising...",
    Duration = 10
})

game:GetService("ContentProvider"):PreloadAsync(game:GetDescendants())

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Content Loader",
    Text = "Successfully loaded all content in "..(math.floor((os.clock() - Start) * 10) / 10).." seconds.",
    Duration = 10
})