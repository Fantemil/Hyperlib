FOR EQUIPPING AURAS THAT DONT HAVE A SPACE IN THE NAME:

local args = {
    [1] = game:FindService("ReplicatedStorage").Auras.AuraName
}

game:FindService("ReplicatedStorage").Remotes.AuraEquip:FireServer(unpack(args))


FOR EQUPPING AURAS THAT HAVE A SPACE IN THE NAME:

local args = {
    [1] = game:FindService("ReplicatedStorage").Auras:FindFirstChild("AuraName")
}

game:FindService("ReplicatedStorage").Remotes.AuraEquip:FireServer(unpack(args))


MOST DISRUPTIVE AURA IN THE GAME (EARRAPE AND MASSIVE SIZE):

local args = {
    [1] = game:FindService("ReplicatedStorage").Auras:FindFirstChild("Insanity : A M A L G A M A T I O N")
}

game:FindService("ReplicatedStorage").Remotes.AuraEquip:FireServer(unpack(args))
