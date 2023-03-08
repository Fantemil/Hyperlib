local workspace = game.workspace;
local player = game:GetService("Players").LocalPlayer;
local goldenTrashPile = workspace:FindFirstChild("golden trash pile");
local trashCore = goldenTrashPile.trashcore;
local promimityPrompt = trashCore.ProximityPrompt;

function getHumanoidRootPart()
   local character = player.Character or player.Character:Wait();
   return character.HumanoidRootPart;
end

local oldCFrame = getHumanoidRootPart().CFrame;
getHumanoidRootPart().CFrame = CFrame.new(trashCore.Position.x , trashCore.Position.y + 3 , trashCore.Position.z);
wait(0.5)
fireproximityprompt(promimityPrompt , 0);
getHumanoidRootPart().CFrame = oldCFrame;