for i=1, 50 do
   for _,v in pairs(game.Players:GetChildren()) do
local args = {
   [1] = "Impact",
   [2] = {
       ["IsAData"] = {
           ["incobject"] = false,
           ["humanoid"] = true
       },
       ["hitData"] = {
           ["limb"] = v.Character:FindFirstChild("Left Leg"),
           ["hit"] = workspace.GameContent.Map.Content.Part
       },
       ["charData"] = {
           ["char"] = v.Character,
           ["humanoid"] = v.Character.Humanoid,
           ["player"] = v,
           ["humanoidrootpart"] = v.Character.HumanoidRootPart
       },
       ["CurrentFallHeight"] = math.huge
   }
}

game:GetService("ReplicatedStorage").Remotes.Humanoid.FallStatus:FireServer(unpack(args))
end
end