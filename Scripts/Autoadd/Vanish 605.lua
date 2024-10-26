--[[
    Creator: SinoXde
    Working as of: 10/20/2024
    Supports (Tested): Wave, Synpase Z

    This Script falls under the MIT License:

    Copyright (c) 2024 SinoXde

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
]]

local GuiLibary = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

_G.FTAP = {}
_G.FTAP.GuiLibary = GuiLibary
_G.FTAP.connections = {}

local Settings = {}
Settings['OwnedParts'] = {}

local RunService = game:GetService('RunService')
local Players = game:GetService('Players')
local Workspace = game:GetService('Workspace')
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local MainWindow =
    GuiLibary:CreateWindow(
    {
        Name = "Super Fling",
        LoadingTitle = "Loading...",
        LoadingSubtitle = "by Sino",
        ConfigurationSaving = {
            Enabled = true,
            FolderName = "Mischief/FTAP", 
            FileName = "Configuration"
        },
        KeySystem = false
    }
)

local FlingTab = MainWindow:CreateTab("Fling", 4483362458)
local SettingsTab =  MainWindow:CreateTab("Settings", 4483362458)


-- // Settings

SettingsTab:CreateSection("Save")

SettingsTab:CreateButton(
    {
        Name = "Save Configuration",
        Callback = function()
            GuiLibary:SaveConfiguration()
        end
    }
)
SettingsTab:CreateSection("Exit")

_G.FTAP.Unload = function()
    _G.FTAP.GuiLibary:Destroy()

    for i, connection in pairs(_G.FTAP.connections) do
        connection:Disconnect()
    end

    _G.FTAP = {}
end

SettingsTab:CreateButton(
    {
        Name = "Unload Script",
        Callback = function()
            pcall(
                function()
                    _G.FTAP.Unload()
                    _G.FTAP = {}
                end
            )
        end
    }
)


-- // Fling

FlingTab:CreateSection('OP Fling')
FlingTab:CreateLabel('Just make them vanish...')

Settings['SuperFlingToggle'] = false
local SuperFlingToggle = FlingTab:CreateToggle({
    Name = 'Toggle Super Fling',
    CurrentValue = false,
    Flag = 'SuperFlingToggle',
    Callback = function(Value)
        Settings['SuperFlingToggle'] = Value

        GuiLibary:Notify({
            Title = (Settings['SuperFlingToggle'] and 'Enabled!' or 'Disabled!'),
            Content = "Super-Fling has been Toggled!",
            Duration = 2,
            Image = 4483362458,
        })
    end
})

local SuperFlingKeybind = FlingTab:CreateKeybind({
    Name = 'Toggle Keybind',
    CurrentKeybind = 'V',
    HoldToInteract = false,
    Flag = 'SuperFlingKeybind',
    Callback = function(Ignore)
        SuperFlingToggle:Set(not Settings['SuperFlingToggle'])
    end
})

FlingTab:CreateSection('Protection')
FlingTab:CreateLabel('Protect yourself against "attacks"...')

Settings['ProtectionToggle'] = false
local ProtectionToggle = FlingTab:CreateToggle({
    Name = 'Toggle Protection',
    CurrentValue = false,
    Flag = 'ProtectionToggle',
    Callback = function(Value)
        Settings['ProtectionToggle'] = Value

        if Value == false then 
            if _G.FTAP.connections.Protection ~= nil then 
                _G.FTAP.connections.Protection:Disconnect()
                _G.FTAP.connections.Protection = nil
            end
        else
            _G.FTAP.connections.Protection = Workspace.ChildAdded:Connect(function(Ignore)
                for i = 1, 10 do 
                    ReplicatedStorage:WaitForChild("CharacterEvents"):WaitForChild("Struggle"):FireServer()
                    task.wait(0.15)
                end

                print('Protected your ass :D!')
            end)
        end
        
        GuiLibary:Notify({
            Title = (Value and 'Enabled!' or 'Disabled!'),
            Content = "Protection has been Toggled!",
            Duration = 2,
            Image = 4483362458,
        })
    end
})

local ProtectionKeybind = FlingTab:CreateKeybind({
    Name = 'Toggle Keybind',
    CurrentKeybind = 'X',
    HoldToInteract = false,
    Flag = 'ProtectionKeybind',
    Callback = function(Ignore)
        ProtectionToggle:Set(not Settings['ProtectionToggle'])
    end
})

local OldNameCall = nil 
OldNameCall = hookmetamethod(game, '__namecall', function(Self, ...)
    local args = {...}
    local method = getnamecallmethod()

    if tostring(Self) == 'SetNetworkOwner' and method == 'FireServer' then 
        local Part = args[1]
        print('Now becoming networkOwner of: '..Part.Name)
        table.insert(Settings['OwnedParts'], Part)

        Part.Destroying:Connect(function()
            for i,v in pairs(Settings['OwnedParts']) do 
                if v == Part then 
                    table.remove(Settings['OwnedParts'], i)
                end
            end
        end)

        return OldNameCall(Self, ...)
    elseif tostring(Self) == 'DestroyGrabLine' and method == 'FireServer' then 
        local Part = args[1]
        print('Losing OwnerShip of: '..Part.Name)

        if table.find(Settings['OwnedParts'], Part) ~= nil then 
            table.remove(Settings['OwnedParts'], table.find(Settings['OwnedParts'], Part))
        end
    end

    return OldNameCall(Self, ...)
end)



table.insert(_G.FTAP.connections, RunService.Heartbeat:Connect(function()
    if #Settings['OwnedParts'] >= 1 and Settings['SuperFlingToggle'] == true then
        for i,v in pairs(Settings['OwnedParts']) do 
            if Players:GetPlayerFromCharacter(v.Parent) ~= Players.LocalPlayer and v.Anchored == false then
                local redos = 0
                repeat
                    v.AssemblyLinearVelocity = Vector3.new(1000000, 1000000, -1000000) -- Random Value no fancy Math :*)
                    task.wait()
                    redos += 1
                until redos == 15
            end
        end
    end
end))