local a = game.Players.LocalPlayer.Character.HumanoidRootPart
local b = workspace.__THINGS
local s = "Small"
local d = "Diamond Bag"


local function get()
    local cf = a.CFrame
    for i,v in pairs(b.Lootbags:GetChildren()) do
    v:PivotTo(cf)
    end
    for i,v in pairs(b.Orbs:GetChildren()) do
    v:PivotTo(cf)

    end
end


while task.wait(0.5) do
get()
end