local library = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)()
library.configuration.smoothDragging = true 
local Wait = library.subs.Wait 

local Main = library:CreateWindow({
    Name = "Plane Crazy",
    Themeable = {
        Info = "Scripted By King.Kevin#6025"
    }
})

local Tabs = {
    LocalPlayerTab = Main:CreateTab({ -- MAIN TAB(S)
        Name = "LocalPlayer"
    }), 
    PlayersTab = Main:CreateTab({
        Name = "Players"
    }), 
    WorldTab = Main:CreateTab({
        Name = "World"
    }), 
    SettingsTab = Main:CreateTab({
        Name = "Settings"
    })
}

local Sections = {
    LocalPlayer = {
        CombatSection = Tabs.LocalPlayerTab:CreateSection({ -- LOCALPLAYER SECTION(S)
            Name = "Combat"
        })
    },
    Players = {
        PlayersSection = Tabs.PlayersTab:CreateSection({ -- PLAYERS SECTION(S)
            Name = "Players"
        })
    },
    World = {},
    Settings = {}
}


-- [[ BYPASS ANTI CHEAT ]] --
local Me = game.Players.LocalPlayer
local RS = game.ReplicatedStorage
local AirCrafts = workspace.PlayerAircraft
local UIS = game:GetService("UserInputService")
local SettingsScript = Me.PlayerGui.SettingsGui.LocalScript

local nhook 
local GC = getgc()

repeat task.wait()
    until GC

nhook = hookmetamethod(game, "__namecall", function(self, ...)
    if getnamecallmethod() == "Kick" or self == RS.Remotes.KickEvent then 
        return true
    end 
    return nhook(self, ...)
end)

for _, f in pairs(GC) do 
    if getfenv(f).script == SettingsScript and type(f) == "function" and getinfo(f).name == "destroyvals" then 
        hookfunction(f,function()end)
    end
end

-- [[ SCRIPTS ]] -- 
local t = {}
local BuildFunctions = require(RS.Modules.BuildFunctions)

local function Notif(Title, Text)
    rconsoleprint(("[%s]: %s\n"):format(Title, Text))
end 

local function GetBuildZone(Player)
    for _, Zone in pairs(workspace.BuildingZones:GetChildren()) do 
        if tostring(Zone.Owner.Value) == Player.Name then 
            return Zone 
        end
    end
end 

local function ConfigureValueClass(OldPart, NewPart)
    if OldPart.ClassName == "StringValue" or OldPart.ClassName == "IntValue" or OldPart.ClassName == "Vector3Value" or OldPart.ClassName == "NumberValue" or OldPart.ClassName == "BoolValue" then 
        RS.Remotes.UpdateValue:FireServer(OldPart.Value, NewPart)
    end
end 

local function ConfigureBasePartClass(OldPart, NewPart)
    if OldPart:IsA("BasePart") then 
        RS.Remotes.Paint:FireServer(NewPart, OldPart.Color)
    end
end 

local function CopyConfigurations(OldPart, NewPart)
    ConfigureBasePartClass(OldPart, NewPart)
    ConfigureValueClass(OldPart, NewPart)

    local OldPartChildren = OldPart and OldPart:GetChildren() or {}
    local NewPartChildren = NewPart and NewPart:GetChildren() or {}
    
    for Index, Part in pairs(OldPartChildren) do
        ConfigureBasePartClass(Part, NewPartChildren[Index])
        ConfigureValueClass(Part, NewPartChildren[Index])
        CopyConfigurations(Part, NewPartChildren[Index])
    end
end 

local function CopyPlayerBuild(Player)
    rconsolewarn(("[Copy Build]: Copying %s's Build"):format(Player.Name))
    
    local AirCraft = AirCrafts:FindFirstChild(Player.Name)
    local BuildZone = GetBuildZone(Player)
    local AirCraftClone
    if AirCraft and BuildZone then 
        AirCraftClone = AirCraft:Clone()
        AirCraftClone.Parent = workspace
    else 
        return Notif("Failed", "Aircraft Or BuildZone Not Found")
    end 
    
    repeat task.wait()
        until AirCraftClone 
    
    for _, OldPart in pairs(AirCraftClone:GetChildren()) do 
        if OldPart.ClassName == "Model" and OldPart.PrimaryPart then 
            if OldPart:FindFirstChild("ID") then 
                local Voxel = BuildFunctions.FindVoxelFromPosition(OldPart.PrimaryPart.Position, BuildZone.Position)
                local ID = OldPart.ID.Value
                local Orientation = OldPart.PrimaryPart.Orientation
                local Angle = CFrame.Angles(math.rad(Orientation.X), math.rad(Orientation.Y), math.rad(Orientation.Z))
                local Ret = {RS.Remotes.PlaceBIockRegion:InvokeServer(Voxel, Angle, ID, "")}
                local NewPart = Ret[1]
                if not NewPart then 
                    Notif("Failed", ("Failed To Build Part: [%s] ID: [%s] POS: [%s]"):format(OldPart.Name, ID, tostring(Voxel)))
                    --[[
                        I already tried firing the remote again with same args but it seems to fail no matter what. Idk what the issue here is
                    ]]--
                else 
                    CopyConfigurations(OldPart, NewPart)
                end
                task.wait(0.07)
            else 
                return Notif("Failed", ("Failed To Find ID For: %s"):format(OldPart.Name))
            end
        end
    end
    AirCraftClone:Destroy()
end

Sections.Players.PlayersSection:AddSearchBox({
    Name = "Select Player",
    Flag = "SelectedPlayer",
    List = game.Players,
 Filter = {
  [0] = true, 
  Me
 },
 Callback = function(Player)
     --[[
         LocalScript renames every object and deletes all configs in the aircraft folder except your own hence why they have to respawn their aircraft and why I made a textlabel that tells you whether you can copy or not
     ]]--
     local AirCraft = AirCrafts:FindFirstChild(Player.Name)
     if AirCraft then
         local PartAmount = AirCraft:FindFirstChildOfClass("IntValue")
         if PartAmount and AirCraft:FindFirstChildOfClass("ForceField").Name ~= "Model" then 
             t.PartAmount:Set(("Parts: %s"):format(PartAmount.Value))
             t.CanCopy:Set("Can Copy: Yes")
                return 
         end 
        end
        t.CanCopy:Set("Can Copy: No")
     t.PartAmount:Set("Parts: 0")
 end 
})

Sections.Players.PlayersSection:AddButton({
    Name = "Copy Build",
    Callback = function()
        CopyPlayerBuild(library.flags.SelectedPlayer)
    end
})

t.CanCopy = Sections.Players.PlayersSection:AddLabel({
    Name = "Can Copy: No",
    Flag = "CanCopy"
})

t.PartAmount = Sections.Players.PlayersSection:AddLabel({
    Name = "Parts: 0",
    Flag = "PartAmount"
})

Sections.LocalPlayer.CombatSection:AddToggle({
    Name = "Click TP", 
    Keybind = true,
    Flag = "ClickTPToggled"
})

Sections.LocalPlayer.CombatSection:AddKeybind({
    Name = "Click TP Keybind",
    Flag = "ClickTPKeybind",
    Value = Enum.KeyCode.F
})

library.signals.InputBeganConnection = UIS.InputBegan:connect(function(Input, IsTyping)
    if not IsTyping and Wait() then
        if library.flags.ClickTPToggled and not IsTyping and UIS:IsKeyDown(library.flags.ClickTPKeybind) and Input.UserInputType == Enum.UserInputType.MouseButton1 and Me.Character then 
            Me.Character.PrimaryPart.CFrame = Me:GetMouse().Hit
        end
    end
end)