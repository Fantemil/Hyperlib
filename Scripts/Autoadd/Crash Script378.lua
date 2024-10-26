local Gun = "Remington 870"
 
local Player = game.Players.LocalPlayer.Name
local Plr = game:GetService("Players").LocalPlayer

function GetGun(Item, Ignore)
	task.spawn(function()
		workspace:FindFirstChild("Remote")['ItemHandler']:InvokeServer({
			Position = Plr.Character.Head.Position,
			Parent = workspace.Prison_ITEMS:FindFirstChild(Item, true)
		})
	end)
end
GetGun("Remington 870")

for i,v in pairs(game.Players[Player].Backpack:GetChildren()) do
    if v.Name == (Gun) then
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
 
while game:GetService("RunService").Stepped:Wait() do
        for count = 0, 10, 10 do
                FireGun()
        end
end