-- // Local variables & Function
local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(1,Enum.EasingStyle.Quad);
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

-- // Teleporting
tp(-471.682892, 321.884277, 699.382874); wait(1.2) tp(-346.967072, 326.986389, 667.540466); wait(1.2) tp(-211.346466, 320.544556, 503.643524); wait(1.2) tp(-458.522278, 335.381042, 485.814453); wait(1.2) tp(-230.542007, 379.266907, 397.597961); wait(1.2) tp(-347.227844, 340.492065, 315.205322); wait(1.2) tp(-434.597809, 365.648376, 341.179321); wait(1.2) tp(-264.99527, 337.980103, 443.652405); wait(1.2) tp(873.337158, -158.862152, -799.522583); wait(1.2) tp(-271.844574, 338.542267, 165.369385); task.wait()
-- // Claiming The Reward
fireproximityprompt(game:GetService("Workspace").SecretReward.HawkmanWings.ProximityPrompt)