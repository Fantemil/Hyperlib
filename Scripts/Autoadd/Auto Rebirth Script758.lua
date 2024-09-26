---[ Super Fun Obby Auto Rebirth Script ]---

_G.AutoRebirth = true ---[Set to true or false to toggle On or Off]---
while _G.AutoRebirth == true do

--- [ Main Remote function call to get 750 Stage ] ---
local args = {
    [1] = 725
}

game:GetService("ReplicatedStorage"):WaitForChild("Honeypot"):WaitForChild("Internal"):WaitForChild("RemoteStorage"):WaitForChild("UpdateStage - RemoteEvent"):FireServer(unpack(args))

wait(0) --- [ Change to any number for Cooldown] ---

--- [Rebirth Remote function to rebirth]---
game:GetService("ReplicatedStorage"):WaitForChild("Honeypot"):WaitForChild("Internal"):WaitForChild("RemoteStorage"):WaitForChild("Rebirth - RemoteEvent"):FireServer()

wait(0) --- [ Change to any number for Cooldown ] ---

end