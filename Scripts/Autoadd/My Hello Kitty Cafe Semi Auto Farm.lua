loadstring(game:HttpGet("https://raw.githubusercontent.com/FOXTROXHACKS/UsefullScripts/main/Gui-Button-Clicker"))()
IntPath = game:GetService("Players").LocalPlayer.PlayerGui.UIPlayer.UIPlayerInteraction["Interaction-InteractionF"].ImageButton

while wait(1) do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(71.9667739868164, 3.041365623474121, 86.39179992675781)
wait(0.2)
FireBtn1(IntPath)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-0.9823395013809204, 2.499999523162842, 114.5142822265625)
wait(0.2)
FireBtn1(IntPath)
end