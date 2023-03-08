getgenv().keybind = "q"

auto = false
m = game.Players.LocalPlayer:GetMouse()
m.KeyDown:connect(function(y)
 if y == getgenv().keybind then
  if auto == true then
   auto = false
  elseif auto == false then
   auto = true
   while auto == true do
    game.RunService.Heartbeat:wait()
    mouse1click()
   end
  end
 end
end)