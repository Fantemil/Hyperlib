local RedeemCode = game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.CodeService.Redeem
local RenderStepped = game:GetService("RunService").RenderStepped
local Codes = {'8k', '7k','milo','retromada','race','razor','starsub','flamingo', '100k','sorry','update','newpark','vacation','skateboarding','tistheseason'}


local settings = {repeatamount = 900, inclusions = {"Redeem"}}

local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)

local function isincluded(uh)
   for i,o in next, settings.inclusions do
       if uh.Name == o then
           return true
       end
   end
   return false
end

mt.__namecall = function(uh, ...)
   local args = {...}
   local method = getnamecallmethod()
   if method == "FireServer" or method == "InvokeServer" and isincluded(uh) then
       for i = 1,settings.repeatamount do
           old(uh, ...)
       end
   end
   return old(uh, ...)
end

setreadonly(mt, true)


function Redeem()
    for i=1,#Codes do 
    RenderStepped:Connect(function()
        wait()
        RedeemCode:InvokeServer(Codes[i])
    end)
end
end

RenderStepped:Connect(function()
    Redeem()
end)