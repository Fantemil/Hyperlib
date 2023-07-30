local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(1,Enum.EasingStyle.Quad); -- hello there :)
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
tp(-1428.652099609375, 2081.5263671875, -843.1277465820312);