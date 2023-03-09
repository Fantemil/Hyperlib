_G.On = true -- true = on / false = off

-- main scripts below --

function breakblock(pos)
   local args = {
       [1] = pos
   }

   game:GetService("ReplicatedStorage").Events.MineBlock:FireServer(unpack(args))
end

local Mod = require(game:GetService("ReplicatedStorage").SharedModules.ChunkUtil)

function getPartBelow()
   local Character = game.Players.LocalPlayer.Character
   local Foot = Character.RightFoot
   local RayOrigin = Foot.Position
   local RayDirection = Vector3.new(0, -1, 0)

   local Params = RaycastParams.new()
   Params.FilterType = Enum.RaycastFilterType.Blacklist
   Params.FilterDescendantsInstances = {Character}

   local Result = workspace:Raycast(RayOrigin, RayDirection, Params)

   if Result then
       local RayInstance = Result.Instance
       print("Instance hit: " .. tostring(RayInstance))
       return RayInstance
   end

   return nil
end

while _G.On do
   task.wait()
   local closest = getPartBelow()

   if closest ~= nil then
       local Pos = closest.Position

       local NewPos = Mod.worldToCell(Pos)

       task.spawn(
           function()
               breakblock(NewPos)
           end
       )
   end
end