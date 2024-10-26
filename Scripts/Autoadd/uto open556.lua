
-- Script works and all but I am unsure if the people you roll still are physically stored or you might just have to rejoin.

while true do
wait(0.1)
local args = {
    [1] = {}
}

game:GetService("ReplicatedStorage").OpenPack:InvokeServer(unpack(args))
end