--Made to be more or so undetected whenever you get a airdrop with a rare item it announces to chat
_G.lol=true--make this false to end the autofarm(Will not bring back map,rejoin for that)
local nomp=true--change to false if you want map will reduce lag and make the overall process smoother Deletes map
local workspace=game:GetService("Workspace")
local folder = game:GetService("Workspace").SupplyDrops
local children
local firstChild
local plr
for _,v in pairs(game:GetService("Workspace"):GetChildren()) do
   if v.Name=="Map" then
       if nomp then
           v:Destroy()
   else
       break
       end
   end
end

while _G.lol do
   wait(0)

   local children = folder:GetChildren()
   local firstChild = children[1]
   
   if firstChild then
       tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
       tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(firstChild.CFrame.x,firstChild.CFrame.y-firstChild.CFrame.y-10,firstChild.CFrame.z)}):Play()
       tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(firstChild.CFrame.x,firstChild.CFrame.y-firstChild.CFrame.y-10,firstChild.CFrame.z)}):Cancel()
       wait(2)
       if firstChild.CFrame then
           local children = folder:GetChildren()
           local firstChild = children[1]
           tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
           if firstChild then
               tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(firstChild.CFrame.x,firstChild.CFrame.y+10,firstChild.CFrame.z)}):Play()
               wait(1)
               if firstChild then
                   local children = folder:GetChildren()
                   local firstChild = children[1]
                   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
                   if firstChild then
                       tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(firstChild.CFrame.x,firstChild.CFrame.y+10,firstChild.CFrame.z)}):Play()
                       wait()
                       tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(firstChild.CFrame.x,firstChild.CFrame.y+10,firstChild.CFrame.z)}):Cancel()
                       wait(2)
                       plr=game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame
                       tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
                       tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(plr.x,plr.y-plr.y-15,plr.z)}):Play()
                       wait(2)
                       tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
                       tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(304.6493225097656, -15, 213.06443786621094)}):Play()
                       wait(1)
                       tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(304.6493225097656, 2.9124867916107178, 213.064437866210945)}):Play()
                       wait(1)
   else
       tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
       tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(304.6493225097656, -15, 213.06443786621094)}):Play()
       wait(1)
       tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(304.6493225097656, 2.9124867916107178, 213.06443786621094)}):Play()
       wait(1)
               end
           end
       end
   end
end
end