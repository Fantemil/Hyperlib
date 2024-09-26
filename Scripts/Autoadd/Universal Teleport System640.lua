local engine = loadstring(game:HttpGet("https://raw.githubusercontent.com/Singularity5490/rbimgui-2/main/rbimgui-2.lua"))()

local plrs = game.Players
local lp = plrs.LocalPlayer

local function updatePlayers(partition)
	for _, plr in pairs(plrs:GetPlayers()) do
        if plr ~= lp then
            partition.new(plr.Name)
        end
	end
end

local window1 = engine.new({
    text = "Teleport System (BETA)",
    size = UDim2.new(300, 200),
})

window1.open()

local tab1 = window1.new({
    text = "Manager",
})

local players = tab1.new("dropdown", {
    text = "Players",
})

updatePlayers(players)
players.event:Connect(function(name)
    lp.Character.HumanoidRootPart.CFrame = plrs:FindFirstChild(name).Character.HumanoidRootPart.CFrame
end)

local refresh_trigger = tab1.new("button", {
    text = "Refresh",
})
refresh_trigger.event:Connect(function()
    players:close()
    updatePlayers(players)
end)