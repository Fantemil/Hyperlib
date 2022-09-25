local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
  vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
  wait(1)
  vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local function getPlot()
   local plot=nil
   for i,v in next, workspace.Plots:GetChildren() do
       if v:WaitForChild("Owner").Value == game.Players.LocalPlayer or v:WaitForChild("Owner").Value == game.Players.LocalPlayer.Character then
           plot=v
       end
   end
   
   return plot
end

local function getRandomTree(plot)
   local randomTree=nil
   local branch=nil
   for a,x in next, plot:GetChildren() do
       if x:IsA("Model") then
           for l,d in next, x:GetChildren() do
               if string.find(d.Name, "Tree") then
                   randomTree=d
                   branch=x
                   break
               end
           end
       end
   end
   
   return randomTree, branch
end

while wait(1) do
   local plot = getPlot()
   local choice, branch = getRandomTree(getPlot())
   local treeNumber = string.gsub(choice.Name, "Tree_", "")
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(choice:WaitForChild("Base").Position)
   if choice ~= nil and branch ~= nil then
       game:GetService("ReplicatedStorage").Communication.Remotes.HitTree:FireServer(plot.Name,tostring(branch),treeNumber)
   else
       game.Players.LocalPlayer.Kick("The script may be outdated or bugged!")
   end
end