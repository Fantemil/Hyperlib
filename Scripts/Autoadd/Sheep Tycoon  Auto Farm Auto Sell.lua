--How to use
-- set getgenv toggle to true/false true = start false = end
-- (NOTE this will only work if you have the corresponding sheep unlocked) To change the sheep "gives more money" change the CHANGE ME to the highest number sheep you own 
-- Example Autoget(8) "8 being the Gold Sheep on the sheep tier list."
-- the AutoPut is self-explanatory you do not need to change anything besides the true or false.
-- also Do not change the wait time to less than 0.1 it will crash the game.  


getgenv().AutoWool = true
getgenv().AutoSell = true

local Remotepath = game:GetService("ReplicatedStorage").Signals.RemoteEvents


function Autoget(WoolID)
 spawn(function()
  while getgenv().AutoWool == true do 

  local args = {
       [1] = WoolID,
                [2] = Vector3.new(373.80841064453125, 3.305729627609253, 936.8026123046875)
  }

  Remotepath.GetWoolRemote:FireServer(unpack(args))
  wait(.01)
  end
 end)
end 

Autoget(CHANGE ME) --CHANGE ME

function Autoput()
 spawn(function()
 
  while getgenv().AutoSell == true do
  Remotepath.PutRemote:FireServer()
  wait(.1)
  
  end
 end)
end

Autoput()