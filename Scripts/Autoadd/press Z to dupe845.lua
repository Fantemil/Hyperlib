local x = nil
local y = nil
local z = nil
OldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
  local args = {...}
  if getnamecallmethod() == "InvokeServer" and self.Name == "LoadBlock" then
 x = args[1]
 y = args[2]
 z = args[3]
end
  return OldNamecall(self, unpack(args))
end)


game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
if key == "z" then
local args = {
    [1] = 36
}

game:GetService("ReplicatedStorage").GameRemotes.SortItem:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").GameRemotes.ExitBlock:InvokeServer()
local args = {
    [1] = x,
    [2] = y,
    [3] = z
}

game:GetService("ReplicatedStorage").GameRemotes.LoadBlock:InvokeServer(unpack(args))
end
wait()
end)