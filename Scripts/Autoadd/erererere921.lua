local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/IreXion-UI-Library/main/IreXion%20UI%20Library"))()

local Gui = Library:AddGui({
	Title = {"SHITLINES ", game.JobId},
	ThemeColor = Color3.fromRGB(0, 255, 0),
	ToggleKey = Enum.KeyCode.RightShift,
})

local plr = game.Players.LocalPlayer 
local rpath = game:GetService("ReplicatedStorage").Events.DataEvent
local headpath = plr.Character:FindFirstChild("FakeHead")

local Tab = Gui:AddTab("Farming")

local Category = Tab:AddCategory("Collection")

local Button = Category:AddButton("Hide Player Name", function()
	headpath:Destroy()
end)

local Toggle = Category:AddToggle("Auto Collect Items", false, function(toggle)
	getgenv().autocollect = toggle 
	if toggle then 
	    while wait(3) do 
	       if not getgenv().autocollect then break end 
	        for _,shitgame in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                if shitgame:IsA("MeshPart") then
                    plr.Character.HumanoidRootPart.CFrame = shitgame.CFrame * CFrame.new(0, -1, 0)
                    wait(1)
                end
            end
	    end
	end
end)

while wait() do 
    for i,v in pairs(game.Workspace:GetDescendants()) do 
        if v:IsA("NumberValue") and v.Name == "ID" then
            rpath:FireServer("PickUp", v.Value)
        end
    end
end