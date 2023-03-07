local mouse = game.Players.LocalPlayer:GetMouse()
 _G.contc = mouse.KeyDown:Connect(function(key)
  if key == 'q' then
    _G.Ball1()
  elseif key == 'e' then
   _G.Table()
 elseif key == 'r' then
  _G.Pusher()
elseif key == 'f' then
 _G.Bomb()
elseif key == 'g' then
 _G.Ball2()
end
end)

_G.Ball1 = function()
game:GetService("ReplicatedStorage").KillstreakBallRemote:FireServer()
end

_G.Table = function()
game:GetService("ReplicatedStorage").TableThrowEvent:FireServer()
end

_G.Pusher = function()
game:GetService("ReplicatedStorage").PusherEvent:FireServer()
end

_G.Bomb = function()
game:GetService("ReplicatedStorage").BombProjectileEvent:FireServer()
end

_G.Ball2 = function()
game:GetService("ReplicatedStorage").YellowBallRemote:FireServer()
end