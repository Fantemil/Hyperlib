local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local Window = Fluent:CreateWindow({
	Title = "Miner's Haven Script",
	SubTitle = "https://discord.gg/gYhqMRBeZV",
	TabWidth = 160,
	Size = UDim2.fromOffset(580, 460),
	Acrylic = false,
	Theme = "Dark",
	MinimizeKey = Enum.KeyCode.LeftControl
})
local Clovers = Window:AddTab({
	Title = "Clovers",
	Icon = "globe"
})
local Options = Fluent.Options
Clovers:AddButton({
	Title = "Collect All Clovers",
	Description = "Self explainatory",
	Callback = function()
		for i, v in workspace.Clovers:GetChildren() do
         if v:FindFirstChild("ProximityPrompt") then
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
          task.wait(.15)
          fireproximityprompt(v.ProximityPrompt)
          task.wait(.1)
         end
        end
	end
})
Clovers:AddButton({
	Title = "Buy x8 Clovium Mines",
	Description = "Self explainatory",
	Callback = function()
		for i = 1, 8 do
         local args = {
    [1] = 376
}

game:GetService("ReplicatedStorage"):WaitForChild("PatrickRemotes"):WaitForChild("PurchaseCloverItem"):InvokeServer(unpack(args))
        end
	end
})