local library = loadstring(game:HttpGet("http://cindering.xyz/message.txt"))()

local window = library:AddWindow("Anime Punching Simulator | Wtf is this game",{
main_color = Color3.fromRGB(41, 74, 122),
  min_size = Vector2.new(500, 500),
  toggle_key = Enum.KeyCode.RightShift,
  can_resize = true,
 })
 
local tab1 = window:AddTab("Main")


local tab2 = window:AddTab("Eggs")


local tab3 = window:AddTab("Teleports")


local tab4 = window:AddTab("Auto Upgrades")


local tab5 = window:AddTab("Auto Rebirth")






local upgrades = {}
local numberupgarde = {}
for i,v in pairs(require(game:GetService("ReplicatedStorage").Modules.Upgrades)) do
    if v.Info then
        table.insert(upgrades,v.Info)
        table.insert(numberupgarde,i)
    end
end





local teleports = {}
for i,v in pairs(game:GetService("Workspace")["__SETTINGS"]["__AREAS"]:GetChildren()) do
    table.insert(teleports,v)
end

local eggs = {}
for i,v in pairs(game:GetService("Workspace")["__SETTINGS"]["__INTERACT"]:GetChildren()) do
    if v.Name == "EGG" then
        table.insert(eggs,v)
    end
end




local rebirths = {}
for i,v in pairs(require(game:GetService("ReplicatedStorage").Modules.Rebirths)) do
      if v.Amount then
          table.insert(rebirths,v.Amount)
    end
end


local rebirthnumbers = {}
for i,v in pairs(require(game:GetService("ReplicatedStorage").Modules.Rebirths)) do
      if v.Amount then
          table.insert(rebirthnumbers,i)
    end
end




tab1:AddSwitch("Auto Punch",function(value)
    tog = value
    while tog do wait()
game:GetService("ReplicatedStorage").Remotes.TappingEvent:FireServer()
    end
end)



local selectegg = tab2:AddDropdown("Select Egg",function(value)
    selected = value
end)

for i = 1,#eggs do
    selectegg:Add(eggs[i].Tier.Value)
end












tab2:AddSwitch("Auto Egg",function(value)
tog2 = value
task.spawn(function()
while tog2 do wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace")["__SETTINGS"]["__EGG"][selected].EGG.Position)
    keypress(0x45)
    wait(0.5)
    firesignal(game:GetService("Players").LocalPlayer.PlayerGui.Ui.CenterFrame.BuyEgg.Frame.Buy1.Button.MouseButton1Click)
        end
    end)
end)


local teleportdropdown = tab3:AddDropdown("Select Teleport",function(value)
    teleport = value
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["__SETTINGS"]["__AREAS"][teleport].CFrame - Vector3.new(0,0,2)
end)
for i = 1,#teleports do
teleportdropdown:Add(teleports[i])
end


local sa = tab5:AddDropdown("Select Rebirth",function(value)
    selectrebirth = value
end)

for i = 1,#rebirthnumbers do
    local p = sa:Add(rebirthnumbers[i])
end


tab5:AddSwitch("Auto Rebirth",function(value)
    
    tog3 = value
    while tog3 and selectrebirth ~= "Select Rebirth" do wait()
local ohString1 = "Rebirths"
local ohNumber2 = tonumber(selectrebirth)

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(ohString1, ohNumber2)
    end
end)



local autoupgrade = tab4:AddDropdown("Select Upgrade",function(value)
    selectupgrade = value
end)

for i = 1,#upgrades do
    autoupgrade:Add(upgrades[i])

end
for i = 1,#upgrades do
        local options = {}
end

tab4:AddSwitch("Auto Upgrade",function(value)
    tog4 = value
    while tog4 do wait()
    for i = 1,#numberupgarde do
        if upgrades[i] == selectupgrade then
        
local ohString1 = "Upgrade"
local ohNumber2 = i

game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer(ohString1, ohNumber2)
            end
        end
    end
end)