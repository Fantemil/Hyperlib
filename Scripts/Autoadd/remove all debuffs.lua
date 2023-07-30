local dd = {
    "Freeze",
    "NoRotate",
    "NoBlock",
    "NoDash",
    "Slowed",
    "NoJump",
    "ComboStun",
    "BarrageBind",
    "HerohunterFists",
    "StopRunning",
    "HerohunterCounter",
    "Small Debris",
    "AfterimageListener",
    "CancelUltimate",
    "RootAnchor",

}
game.Players.LocalPlayer.Character.DescendantAdded:Connect(function(r)
   task.wait()
   if table.find(dd,r.Name)  then r:Destroy() end
end)