--// Target
local target = game:GetService('Players').LocalPlayer -- localplayer as default

--// CFrame
local cFrame = CFrame.new(0,0,0)

--// Size
local Size = {
   X = 4000,
   Y = 4000,
   Z = 4000
}

--// Build
for _,v in next, game.ReplicatedStorage:GetDescendants() do
   if v.Name == 'Breach' and v:IsA('RemoteFunction') then
       v:InvokeServer(3,{Fortified={},Destroyable=workspace},CFrame.new(),CFrame.new(),{CFrame=target.Character.HumanoidRootPart.CFrame*cFrame,Size=Size})
   end
end