local Remotes = {}
for I, V in next, getgc(true) do
   if type(V) == "table" and rawget(V, "Remote") then
       Remotes[V.Name] = V.Remote
   end
end
local args = {
   [1] = "100",
   [2] = 0/0
}

Remotes.UseDailySpin:FireServer(unpack(args))