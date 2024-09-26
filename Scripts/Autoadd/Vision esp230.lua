-- dev note HELP ME
wait(8)
local StarterGui = game:GetService("StarterGui")

local bindable = Instance.new("BindableFunction")

function bindable.OnInvoke(response)
    if response == "Vision" then
        
local Players = game:GetService("Players")

local function highlightPlayer(player)
    
    if player and player.Character then
        
        for _, part in ipairs(player.Character:GetDescendants()) do
       
            local highlight = Instance.new("PointLight")
            highlight.Color = Color3.fromRGB(123, 210, 255)  
            highlight.Brightness = 2  
            highlight.Range = 15  
            highlight.Parent = part
        end
    end
end

local function highlightAllPlayers()
    for _, player in ipairs(Players:GetPlayers()) do
        highlightPlayer(player)
    end
end

highlightAllPlayers()
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        highlightPlayer(player)
    end)
end)

Players.PlayerRemoving:Connect(function(player)
    if player.Character then
        for _, part in ipairs(player.Character:GetDescendants()) do
            for _, obj in ipairs(part:GetChildren()) do
                if obj:IsA("PointLight") then
                    obj:Destroy()
                end
            end
        end
    end
end)


        
    elseif response == "Space" then
wait(6)
StarterGui:SetCore("SendNotification", {
    Title = "msg",
    Text = "Space x only works on da hood",
Button1 = "okay"
})

        loadstring(game:HttpGet("https://raw.githubusercontent.com/spacexrandom/Lua/main/DaHood", true))()
        
    end
end

StarterGui:SetCore("SendNotification", {
    Title = "msg",
    Text = "Do you want to load Vision hub or Space X?",
    Duration = 5,
    Callback = bindable,
    Button1 = "Vision",
    Button2 = "Space"
})