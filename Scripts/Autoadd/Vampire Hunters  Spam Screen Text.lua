_G.var = true
while wait() do
 if _G.var then
   local args = {
   [1] = true
}

workspace.Events.Data.ChangeIsPlaying:FireServer(unpack(args))

local args = {
   [1] = false
}

workspace.Events.Data.ChangeIsPlaying:FireServer(unpack(args))
 end
end