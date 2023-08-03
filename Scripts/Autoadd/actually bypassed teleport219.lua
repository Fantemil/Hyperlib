local cords = Vector3.new(x,y,z)
--script
local plr = game:service("Players").LocalPlayer
function Time(targetpos)
    local tme = (targetpos - plr.Character.HumanoidRootPart.Position).Magnitude / plr.Character:FindFirstChildOfClass("Humanoid").WalkSpeed
    return tme
end

local tween_s = game:service("TweenService")
local info = TweenInfo.new(Time(cords),Enum.EasingStyle.Quad)
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

tp(cords)

