local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RemoteFunction = select(
 2,
 pcall(function()
  return ReplicatedStorage.Remote.RemoteFunction
 end)
)
local RemoteEvent = select(
 2,
 pcall(function()
  return ReplicatedStorage.Remote.RemoteEvent
 end)
)

--- Use task.cancel to stop the loop.
--- @param Loop boolean Whether the function should repeat itself.
local function KillAll(Loop)
 if
  typeof(RemoteFunction) == "Instance"
  and RemoteFunction:IsA("RemoteFunction")
  and typeof(RemoteEvent) == "Instance"
  and RemoteEvent:IsA("RemoteEvent")
 then
  local LocalPlayer = Players.LocalPlayer
  local Character = LocalPlayer.Character
  local WorldPivot = Character:GetPivot()
  if typeof(Character) == "Instance" and Character:IsA("Model") then
   if LocalPlayer.Team.Name ~= "Heroes" then
    RemoteFunction:InvokeServer("RequestTeamChange", "Heroes")
   end
   Character:PivotTo(CFrame.new(-1367, 534, 1149))
   wait(0.5)
   RemoteEvent:FireServer("InteractBegin", "7")
   wait(1)
   RemoteEvent:FireServer("InteractRun", "7")
   wait(0.4)
   RemoteEvent:FireServer("EnablePower")
   LocalPlayer.Character:PivotTo(WorldPivot)
   task.spawn(function()
    while true do
     for _, v in pairs(workspace.Vehicles:GetDescendants()) do
      if v.Name == "Chassis" and v:IsA("Part") then
       for i = 1, 50 do
        pcall(function()
         RemoteEvent:FireServer(
          "FireHeroHitscan",
          Vector3.new(0, 0, 0),
          v.Position,
          v,
          v.Position
         )
        end)
       end
      end
     end
     if Loop ~= true then
      break
     end
     wait(0.7)
    end
   end)
   wait(0.5)
   while true do
    for i, v in next, Players:GetPlayers() do -- because im cool
     if
      v ~= LocalPlayer and v.Team.Name == "Criminals"
      or v.Team.Name == "Villains"
      or v.Team.Name == "Prisoners"
     then
      local check = typeof(v.Character) == "Instance" and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Head")
      if check then
       for i = 1, 20 do
        RemoteEvent:FireServer(
         "FireHeroHitscan",
         Vector3.new(0, 0, 0),
         v.Character.HumanoidRootPart.Position,
         v.Character.Head,
         v.Character.Head.Position
        )
       end
      end
     end
    end
    if Loop ~= true then
     break
    end
    wait(0.7)
   end
  end
 end
end

KillAll(true)