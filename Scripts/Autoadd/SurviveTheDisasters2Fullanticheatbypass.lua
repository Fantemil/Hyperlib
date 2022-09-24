assert(not getgenv().ACBypass, "The anti-cheat bypass is already running!")

local function notify(title, text)
 game:GetService('StarterGui'):SetCore('SendNotification', {
  Title = title,
  Text = text
 })
end

local mt = debug.getmetatable(game)
local nc = mt.__namecall

setreadonly(mt, false)

mt.__namecall = newcclosure(function(self, ...)
   local args = {...}
   local method = getnamecallmethod()

   if (method == "FireServer" and self.Name == "Detect") then
       args[1] = 50
       args[2] = 100
       args[3] = 16
       args[4] = game.Players.LocalPlayer.Name
       args[5] = true
   end

   return nc(self, unpack(args))
end)

setreadonly(mt, true)

local hook = hookfunction(game:GetService("Players").LocalPlayer.Kick, function(...)
    return wait(9e9)
end)

notify('AntiCheat Bypassed', 'The AntiCheat has been successfully bypassed! Have fun!')
getgenv().ACBypass = true