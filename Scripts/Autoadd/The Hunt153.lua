local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("Tbao Hub | The Hunt")

local KillingCheats = PhantomForcesWindow:NewSection("Combat")


KillingCheats:CreateTextbox("Hitbox", function(value)
        _G.HeadSize = value
_G.Disabled = true
game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
end)

KillingCheats:CreateToggle("Show esp", function(value)
while wait(0.5) do
    for i, box in ipairs(workspace:GetDescendants()) do
        if box:FindFirstChild("Humanoid") then
            if not box:FindFirstChild("EspBox") then
                if box ~= game.Players.LocalPlayer.Character then
                    local esp = Instance.new("BoxHandleAdornment",box)
                    esp.Adornee = box
                    esp.ZIndex = 0
                    esp.Size = Vector3.new(5, 6, 2)
                    esp.Transparency = 0.5 --Changes Transparency 
                    esp.Color3 = Color3.fromRGB(0,255,0) --Color change
                    esp.AlwaysOnTop = true
                    esp.Name = "EspBox"
                end
            end
        end
    end
end
end)

function SpamChat()
			while autochat == true do
				local ohString1 = "Ez GG"
				local ohString2 = "All"	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
				wait(1)
			end
		end


KillingCheats:CreateToggle("Spam chat Ez GG", function(Value)
autochat = Value
				SpamChat()
end)
