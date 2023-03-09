local Base = game:GetService("Workspace").Tycoons
local LocalPlayer = game:GetService'Players'.LocalPlayer
local Name = LocalPlayer.Name

while true do
   workspace.Events.DataStores.uhoh:FireServer('mine', 'Diamonds')
   workspace.Events.DataStores.uhoh:FireServer('mine', 'Gold')
   workspace.Events.DataStores.uhoh:FireServer('mine', 'Iron')
   workspace.Events.DataStores.uhoh:FireServer('mine', 'Coal')
   for _, Child in next, Base:GetChildren() do
       if Child.Factory.Player.Value == Name then
           fireproximityprompt(Child.Factory.Objects.BoughtItems['Ore Refinery'].SpellVortex.Main.Attachment.SellOres)
       end
   end
   task.wait()
end