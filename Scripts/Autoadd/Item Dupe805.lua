--Made by Edgar Zomboss on v3rm
local Slot = "One"
local Store = true
if Store == true then
local args = {
   [1] = "StoreBank",
   [2] = Slot,
   [3] = 1
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
else
local args = {
   [1] = "TakeBank",
   [2] = Slot,
   [3] = 0/0
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
end