how to use: 
 execute this script: [ AT THE WORLD U WANT TO FREEZE ]

setclipboard(tostring(game:GetService("Players").LocalPlayer.World.Value))

 Ctrl + V to paste it. [ paste it anywhere ]

 Next:

 setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
 Ctrl + V to paste it.  Ctrl + V to paste it. [ paste it anywhere ]

now teleport back to Hub , and replace it 2 things u pasted below

local world = "" -- enter the world name u executed ( first script )
game:GetService("Players").LocalPlayer.World.Value = world
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(remove this text and put the second script here) -- second script u executed paste here.


example: 
game:GetService("Players").LocalPlayer.World.Value = "SDS" 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3678.8938, -22.6144562, 6806.35107, -0.848535597, 3.16954676e-08, 0.529138267, 6.59582327e-08, 1, 4.58716407e-08, -0.529138267, 7.38247508e-08, -0.848535597)
