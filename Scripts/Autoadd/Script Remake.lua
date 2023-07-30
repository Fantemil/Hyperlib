


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/memejames/Hide/main/Sss%20v2"))()
local Window = Library.CreateLib("Easy Grow Obby | Script", "Kiwi")

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Features")

Section:NewTextBox("Change Size", "TextboxInfo", function(txt)
	local args = {
    [1] = txt
}

game:GetService("ReplicatedStorage"):WaitForChild("ScaleEvent"):FireServer(unpack(args))
end)

Section:NewButton("Tween To End", "ButtonInfo", function()
    local tweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear)
local tween = tweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(Vector3.new(660.721558, 186.882568, 391.24527, 0.960841835, -4.25554596e-08, -0.277097434, 2.15347935e-08, 1, -7.89033976e-08, 0.277097434, 6.98464433e-08, 0.960841835))})
tween:Play()
end)

Section:NewButton("Open VIP", "ButtonInfo", function()
for _,v in ipairs(game.Workspace:GetChildren()) do
	if v.Name == "VIPDoor" then
		v:Destroy()
	elseif v.Name == "PLACA VIP" then
		v:Destroy()
	end
end
end)