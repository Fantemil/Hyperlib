_G.CollectGingerbreads = true
local Map = workspace.Interiors.MainMap
while wait() do
  if _G.CollectGingerbreads then
      for i,v in pairs(Map:GetChildren()) do
          if v.Name:match('GingerbreadRig') then
              game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChildOfClass('MeshPart').CFrame
          end
      end
  end
end