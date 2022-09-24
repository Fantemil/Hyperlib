-- https://scriptblox.com/u/crimewave

-- Settings (To apply re-execute the script)

_G.AutoClick = true
_G.AutoObby = true

-----------------------------------------------------------------------

spawn(function()
 while _G.AutoClick do
  local args = {[1] = {[1] = "ScreenClick"}}
  game:GetService("ReplicatedStorage").Events.Click:FireServer(unpack(args))
  wait(0.0001)
 end
end)

spawn(function()
 while _G.AutoObby do
  local root = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

  local parts = {
   game:GetService("Workspace").Obby.Hard,
   game:GetService("Workspace").Obby.EzPz,
   game:GetService("Workspace").Obby.Medium,
   game:GetService("Workspace").Obby.Easy
  }

  while wait(2400) do
   for i, v in ipairs(parts) do
    firetouchinterest(root, v.Start, 0)
    firetouchinterest(root, v.Start, 1)
    firetouchinterest(root, v.Claim, 0)
    firetouchinterest(root, v.Claim, 1)
   end
  end
 end
end)