game:GetService("ReplicatedStorage").ATMAction:FireServer("Withdraw", 1200)
workspace.DealersScript.BuyItem:InvokeServer("Glock19(LEGAL)", 1200, "Cash")
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["Glock19(LEGAL)"])
game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):GetPropertyChangedSignal("Sit"):Connect(function()
    if game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').Sit then
game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').Sit = false
end
    end)
local vim = game:GetService("VirtualInputManager")
local function reload()
vim:SendKeyEvent(true, "R", false, game)
  task.wait()
  vim:SendKeyEvent(false, "R", false, game)
end
spawn(function()
while true do
    pcall(function()
for i,v in ipairs(game.Players:GetPlayers()) do
  if v.Name ~= game.Players.LocalPlayer.Name and v.Character.Humanoid.Health < 101 and v.Character.Humanoid.Health > 0 then
local cframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

local ohString1 = "Fire"
local ohVector32 = Vector3.new(0, 0, 0)
local ohInstance3 = v.Character.Head
local ohString4 = "hi im waffy, nice to meet u"
local ohVector35 = Vector3.new(0, 0, 0)
local ohVector36 = Vector3.new(-0.09252414107322693, 0, -0.9957104325294495)
local ohNumber7 = 2214851
local ohString8 = "28957368947836473465378635347867823"
local ohString9 = "725864757532654367432762536"
local ohString10 = "859038748978532675236"
local ohString11 = "ijdfghjfdghdjhkjghjkfhgfdjkdhgf34857389478587326327865"
local ohString12 = "cucumbers are pretty good ngl"
local ohString13 = "you should eat more lettuce you fatty"
local ohString14 = "tomatoes are the best food ever"
local ohString15 = "789573486736237256732578462873378325678"
local ohString16 = "890789437896893478947843648596789345374859"
local ohString17 = "38578672356273267525672675"
local ohString18 = "53978763272576652365362367325672572538675576257656726897236"
local ohString19 = "8526786783267562563462378"
local ohString20 = "87675237"
local ohString21 = "56782638757"
local ohString22 = "7867236786"
local ohString23 = "6278623782572"
local ohString24 = "789728723"
local ohString25 = "78626237"
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ohInstance3.Parent.HumanoidRootPart.CFrame
task.wait(0.2)
game:GetService("Players").LocalPlayer.Character["Glock19(LEGAL)"].RemoteEvent:FireServer(ohString1, ohVector32, ohInstance3, ohString4, ohVector35, ohVector36, ohNumber7, ohString8, ohString9, ohString10, ohString11, ohString12, ohString13, ohString14, ohString15, ohString16, ohString17, ohString18, ohString19, ohString20, ohString21, ohString22, ohString23, ohString24, ohString25)
game:GetService("Players").LocalPlayer.Character["Glock19(LEGAL)"].RemoteEvent:FireServer(ohString1, ohVector32, ohInstance3, ohString4, ohVector35, ohVector36, ohNumber7, ohString8, ohString9, ohString10, ohString11, ohString12, ohString13, ohString14, ohString15, ohString16, ohString17, ohString18, ohString19, ohString20, ohString21, ohString22, ohString23, ohString24, ohString25)
  end
end
task.wait()
end)
end
end)
spawn(function()
    while true do
    reload()
    task.wait()
    end
    end)