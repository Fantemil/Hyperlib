local args = {
   [1] = "TakeDamage",
   [2] = {
       ["target"] = game:GetService("Players").LocalPlayer.Character,
       ["damage"] = math.huge
   },
   [3] = "QWEFN@R}ASDF!@}R|DSFMQ@FASF:LWQE"
}
game:GetService("ReplicatedStorage").Remotes.DamageRemoteEvent:FireServer(unpack(args))