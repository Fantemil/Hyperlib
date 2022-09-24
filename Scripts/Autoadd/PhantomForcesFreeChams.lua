function gs(serv)
   return game:GetService(serv)
end

local plrs = gs"Players"
local lp   = plrs.LocalPlayer
local ws   = gs"Workspace"

function isEnemy(character)
   if character.Parent.Name == tostring(lp.TeamColor) then
       return false
   else
       return true
   end
end

function createChams(player)
   local newChams = Instance.new("Highlight")
   newChams.Parent = player
end

spawn(function()
   for i,v in pairs(ws.Players:GetDescendants()) do
       if isEnemy(v) and v.Name == "Player" then
           createChams(v)
       end
   end
end)

-- yes, ik i made a function, but for some reason it didnt work here
spawn(function()
   ws.Players["Bright orange"].ChildAdded:connect(function(child)
       wait(1)
       if isEnemy(child) == true then
           local newChams = Instance.new("Highlight")
           newChams.Parent = child
       end
   end)
end)

spawn(function()
   ws.Players["Bright blue"].ChildAdded:connect(function(child)
       wait(1)
       if isEnemy(child) == true then
           local newChams = Instance.new("Highlight")
           newChams.Parent = child
       end
   end)
end)

spawn(function()
   ws.Ignore.DeadBody.ChildAdded:connect(function(child)
       if child:FindFirstChild("Highlight") then
           child.Highlight:Destroy()
       end
   end)
end)