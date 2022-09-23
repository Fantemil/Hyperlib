if not funcs then
loadstring(game:HttpGet("https://raw.githubusercontent.com/exceptional0/scr/main/funcs.lua"))()
end

local rem=game:GetService("ReplicatedStorage").Events.RefreshChar
local lastpiv



local function god(ch)

local hum=ch:WaitForChild("Humanoid",10)
if hum and hum:IsA("Humanoid") then

hum.HealthChanged:Connect(function(x)
lastpiv=ch:GetPivot()
if x<=50 then
rem:FireServer()
end
end)

end
end

funcs.uip.InputBegan:Connect(function(inpuut,proc)
if inpuut.UserInputType == Enum.UserInputType.Keyboard and inpuut.KeyCode == Enum.KeyCode.R and funcs.uip:IsKeyDown(Enum.KeyCode.LeftControl) and lastpiv then
getchar():PivotTo(lastpiv)
end
end)

god(getchar())

funcs.lplr.CharacterAdded:Connect(god)
if syn and game.PlaceId==10491640406 then
syn.queue_on_teleport("task.wait(2) game:GetService('TeleportService'):TeleportToPlaceInstance("..game.PlaceId..",'"..game.JobId.."',funcs.lplr)") end