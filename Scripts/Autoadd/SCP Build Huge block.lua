local cFrame = CFrame.new(0,0,0)


local Size = {
 X = 1313,
 Y = 1133,
 Z = 1133
}

for i =1,100 do
 task.spawn(function()
  game:GetService('ReplicatedStorage')['ACS_Engine'].Eventos.Breach:FireServer(3,{Fortified={},Destroyable=workspace},CFrame.new(),CFrame.new(),{CFrame=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*cFrame,Size=Size})
 end)
end