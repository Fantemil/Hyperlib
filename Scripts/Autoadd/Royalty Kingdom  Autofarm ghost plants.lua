local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(1,Enum.EasingStyle.Quad); -- Change the number to lower to speed it up and higher to slow it down.
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
tp(-121.52079772949219,65.41887664794922,-190.5745391845703); -- Change x,y,z to the coordinates you got