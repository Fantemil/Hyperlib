local Players = game:GetService('Players');
local ReplicatedStorage = game:GetService('ReplicatedStorage');

local Player = Players.LocalPlayer;

local Connections = {};

local function Shoot(Target)

   if (Target ~= Player) and (Target.Character ~= nil) and (Target.Character:FindFirstChild('Head')) then

       -- // thx hydroxide
       local ohString1 = "Head"
       local ohVector32 = Vector3.new(-2627.53662109375, 199.0116424560547, 285.17047119140625)
       local ohVector33 = Vector3.new(-2625.343994140625, 198.93568420410156, 283.556396484375)
       local ohInstance4 = Target
       local ohString5 = '.22 Long Rifle';
       local ohVector36 = Vector3.new(-2884.3603515625, 199.69235229492188, 395.09503173828125)
       local ohTable7 = {
           [1] =  -2884.88916015625, 200.12826538085938, 384.3685302734375,
           [2] = Target.Character.Head,
           [3] =  -2885.21142578125, 200.39219665527344, 377.8313293457031,
           [4] =  -0.9473804831504822, 0.24329611659049988, 0.20803231000900269,
           [5] = 318,
           [6] = Target
       }
   
       ReplicatedStorage.Connections.HitEvent:FireServer(ohString1, ohVector32, ohVector33, ohInstance4, ohString5, ohVector36, ohTable7)
   end;
end;

while task.wait(0.04) do
   for Index, Value in next, Players:GetPlayers() do
       if (Value ~= Player) and (Value.Character ~= nil) and (Value.Character:FindFirstChild('Head')) then
           Shoot(Value);
       end;
   end;
end;