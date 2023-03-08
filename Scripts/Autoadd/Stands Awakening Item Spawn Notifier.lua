game.StarterGui:SetCore("SendNotification", {
Title = "Loaded"; -- the title (ofc)
Text = "Item Notifier"; -- what the text says (ofc)
Icon = ""; -- the image if u want. 
Duration = 5; -- how long the notification should in secounds
})

_G.ItemWanted = {
["Rokakaka Fruit"] = false;
["Arrow"] = false;
["Banknote"] = true;
["Requiem Arrow"] = false;
["Hell Arrow"] = false;
["Toxic Chemicals"] = false;
["DIO's Diary"] = false;
["Frog"] = false;
["Vampire Mask"] = false;
["Samurai Diary"] = false;
["Bone"] = false;
["Ender Pearl"] = false;
["DIO's Skull"] = true;
["Camera"] = true;
["Pot Platinum Diary"] = true;
["True Requiem Arrow"] = false;
["AJA Mask"] = false;
["Ornstein's Spear"] = false;
["Red Heart"] = true;
["Uncanny Key"] = true;
["Uncanny Pumpkin"] = true;
["Volcanic Rock"] = false
}

game.Workspace.ChildAdded:Connect(function(vs)
for i, v in pairs(_G.ItemWanted) do
if i == vs.Name then
if v == true then
game.StarterGui:SetCore("SendNotification", {
Title = "Item Spawned"; -- the title (ofc)
Text = vs.Name; -- what the text says (ofc)
Icon = ""; -- the image if u want. 
Duration = 5; -- how long the notification should in secounds
})
print(vs.Name .. " spawned")
end
end
end
end)