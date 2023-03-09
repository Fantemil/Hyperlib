game:GetService("Players").LocalPlayer.Character.BodyEffects["K.O"]:Destroy()
game:GetService("Players").LocalPlayer.Character.BodyEffects.Death:Destroy()
game:GetService("Players").LocalPlayer.Character.Death:Destroy()
local args = {
    [1] = "colb is nice",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

game:GetService("Players").LocalPlayer.Character.CharacterDied:Destroy()
game:GetService("Players").LocalPlayer.Character.Death:Destroy()