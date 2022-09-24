local lib = loadstring(game:HttpGet("http://cindering.xyz/message.txt"))()


local Window = lib:AddWindow('Cheeto Hub | Critical Legends')

local tab1 = Window:AddTab("Main")

local tab2 = Window:AddTab("Teleports")

local tab3 = Window:AddTab("Combat Style Changer")

local styles = {}
for i,v in pairs(game:GetService("ReplicatedStorage")["CS_Keys"]["CS_Storage_Key"]:GetChildren()) do
    table.insert(styles,v.Name)
end




local rootpart = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")


local region = {}
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    table.insert(region,v)
end

local teleports = {}
for i,v in pairs(workspace.WorldMap:GetChildren()) do
    if v:IsA("Model") and not table.find(teleports, v.Name) and v:GetModelCFrame() then 
        table.insert(teleports, v.Name)
    end
end


tab1:AddSwitch("Auto Chests",function(value)
    chest = value
    while chest do wait(0.1)
        for i,v in pairs(game:GetService("Workspace").Chests:GetChildren()) do
            if not v:FindFirstChildOfClass("IntValue") then
            rootpart.CFrame = CFrame.new(v.Giver.Position)
            wait()
            end
        end
    end
end)

tab1:AddSwitch("Auto Tp to Damage Orb",function(value)
    tog2 = value
    while tog2 do wait()
    for i,v in pairs(game:GetService("Workspace").CombatFolder[game.Players.LocalPlayer.Name]:GetChildren()) do
        if string.match(tostring(v),"Orb") then
            rootpart.CFrame = CFrame.new(v.HitBox.Position)
            end
        end
    end
end)


tab1:AddSwitch("Godmode",function(value)
 god = value
 if god == true then
 local mt = getrawmetatable(game)
setreadonly(mt,false)

local old = mt.__namecall

mt.__namecall = newcclosure(function(self,...)
    local args = {...}
    local method = getnamecallmethod()
    if not checkcaller() and self.Name == "Damage" and args[3] ~= nil and method == "FireServer" then
        return
    end
    return old(self,...)
        end)
 end  
end)

local dropdown = tab1:AddDropdown("Select Region",function(selected)
    enemy = selected
end)

for i = 1,#region do
    dropdown:Add(region[i])
end




tab1:AddSwitch("Autofarm Selected Region",function(value)
    autofarm = value
        while autofarm  do wait()
        if not workspace:FindFirstChild("CombatFolder")  then
            for i,v in pairs(workspace.Enemies[tostring(enemy)]:GetChildren()) do
                if v.Name == "Enemy" and v.InCombat.Value == false then
            rootpart.CFrame = v.EnemyLocation.CFrame + Vector3.new(5,0,0)
            v.CombatTrigger:FireServer("Solo")
            end
        end
    end
    spawn(function()
        if workspace:FindFirstChild("CombatFolder") and autofarm then
                for i,v in pairs(game:GetService("Workspace").CombatFolder[game.Players.LocalPlayer.Name]:GetChildren()) do
        if string.match(tostring(v),"Orb") then
            rootpart.CFrame = CFrame.new(v.HitBox.Position)
                    end
                end
            end
        end)
    end
end)
local thingy = tab2:AddDropdown("Select Teleport",function(selected)
    ttt = selected
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.WorldMap[ttt]:GetModelCFrame()
    end)
for i = 1,#region do
    thingy:Add(region[i])
    end

local thingy2 = tab3:AddDropdown("Select Style",function(selected)
    selectedstyle = selected
end)

for i = 1,#styles do
    thingy2:Add(tostring(game.ReplicatedStorage["CS_Keys"]["CS_Storage_Key"][styles[i]].Value))
end
tab3:AddButton("Change Style",function()
    for i,v in pairs(game:GetService("ReplicatedStorage")["CS_Keys"]["CS_Storage_Key"]:GetChildren()) do
        if v.Value == selectedstyle then
    local ohString1 = "CombatStyle"
local ohTable2 = {
 ["Base"] = {
  ["Position"] = rootpart.Position
 },
 ["CombatStyle"] = {
  ["Value"] = styles[i]
 }
}
game:GetService("ReplicatedStorage").Remotes.StatsChange:FireServer(ohString1,ohTable2)
        end
    end
end)