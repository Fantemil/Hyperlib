local bullshit = game.Workspace.Buttons:GetDescendants()
local RemoteObjects = game:GetService("ReplicatedStorage").RemoteObjects
_G.DoBuy = true
while _G.DoBuy == true do
   for index, theshitofthebull in pairs(bullshit) do
       if (theshitofthebull.Name == "Head") then
           if (theshitofthebull.Transparency ~= 1) then
               RemoteObjects.RequestButtonPurchase:FireServer(theshitofthebull.Parent.Name)
          end
       end
   end
   wait()
end