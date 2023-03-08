wait(5)
local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(0,Enum.EasingStyle.Quad); -- Change the number to lower to speed it up and higher to slow it down.
function tp(...)
local tic_k = tick();
local params = {...};
local cframe = CFrame.new(params[1],params[2],params[3]);
local tween,err = pcall(function()
local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
      tween:Play();
end)
   if not tween then return err end
end
tp(-134.29367065429688, 4864.30908203125, -57777.14453125);
wait(2)
local ts = game:GetService("TeleportService")

local p = game:GetService("Players").LocalPlayer

 

ts:Teleport(game.PlaceId, p)