local Neverlose_Main = loadstring(game:HttpGet("https://raw.githubusercontent.com/Mana42138/Neverlose-UI/main/Source.lua"))()
local Win = Neverlose_Main:Window({
    Title = "NEVERLOSE", -- Title Name Here!
    CFG = "Neverlose"
})

local TabSection1 = Win:TSection("Misc") -- Make a Tab Section

local Autofarm = TabSection1:Tab("Autofarm") -- Make a Tab in the Tab Section

local AutoFSec1 = Autofarm:Section("Autofarm") -- Make a new Section in the Tab
local Config = Autofarm:Section("Config")

local World = Autofarm:Section("World")
local World2 = Autofarm:Section("Stuff")
local World3 = Autofarm:Section("nig")

local TestFarm1 = AutoFSec1:Toggle("AutoOther Farm", function(t)
    StartFarm = t
end)

local TestFarm1 = AutoFSec1:Toggle("Auto Farm", function(t)
    StartFarm = t
end)
local TestFarm1 = AutoFSec1:Toggle("Auto Farm", function(t)
    StartFarm = t
end)
local TestFarm1 = AutoFSec1:Toggle("Auto Farm", function(t)
    StartFarm = t
end)
local TestFarm1 = AutoFSec1:Toggle("Auto Farm", function(t)
    StartFarm = t
end)


World:Slider("Hello", 1, 500, 50, function()
    
end)

local content = "Hello world!"

local CreateConfig = Config:Toggle("Creat CFG", function(t)
    StartCFGCreate = t
    if StartCFGCreate then
        print("Hello World!")
        Neverlose_Main:CreateCfg("Mana64")
        Neverlose_Main:Notify({
            Text = "Test Notify",
            Time = 1
        })
    end
end)
local CreateConfig = Config:Toggle("Creat CFG", function(t)
    StartCFGCreate = t
    if StartCFGCreate then
        print("Hello World!")
        Neverlose_Main:CreateCfg("Mana64")
    end
end)

spawn(function()
    while task.wait(.1) do
        if StartCFGCreate then
            pcall(function()
                CreateConfig:Set(false)
            end)
        end
    end
end)

local SaveConfig = Config:Toggle("Save CFG", function(t)
    StartCFGSave = t
    if StartCFGSave then
        Neverlose_Main:SaveCfg("Mana64")
    end
end)

spawn(function()
    while task.wait(.1) do
        if StartCFGSave then
            pcall(function()
                SaveConfig:Set(false)
            end)
        end
    end
end)

Config:Dropdown("Select Config", {"Mana64", "Lmao", "HVH"}, function(t)
    print(t)
end)

Config:Slider("WalkSpeed", 16, 300, 40, function(t)
    print(t)
end)

local LoadConfig = Config:Toggle("Load CFG", function(t)
    StartCFGLoad = t
    if StartCFGLoad then
        Neverlose_Main:LoadCfg('Mana64')
    end
end)

spawn(function()
    while task.wait(.1) do
        if StartCFGLoad then
            pcall(function()
                LoadConfig:Set(false)
            end)
        end
    end
end)

TestFarm1:Set(true)

local TabSection2 = Win:TSection("Misc")

local Misc2 = TabSection2:Tab("Misc")

local Config = Misc2:Section("Hello There!")

local content = "Hello world!"

local CreateConfig = Config:Toggle("Creat CFG", function(t)
    StartCFGCreate = t
    if StartCFGCreate then
        print("Hello World!")
        Neverlose_Main:CreateCfg("Mana64")
    end
end)

spawn(function()
    while task.wait(.1) do
        if StartCFGCreate then
            pcall(function()
                CreateConfig:Set(false)
            end)
        end
    end
end)

local SaveConfig = Config:Toggle("Save CFG", function(t)
    StartCFGSave = t
    if StartCFGSave then
        Neverlose_Main:SaveCfg("Mana64")
    end
end)

spawn(function()
    while task.wait(.1) do
        if StartCFGSave then
            pcall(function()
                SaveConfig:Set(false)
            end)
        end
    end
end)

Config:Dropdown("Select Config", {"Mana64", "Lmao", "HVH"}, function(t)
    print(t)
end)

Config:Slider("WalkSpeed", 16, 300, 40, function(t)
    print(t)
end)

Config:Slider("WalkSpeed", 16, 300, 40, function(t)
    print(t)
end)
Config:Slider("WalkSpeed", 16, 300, 40, function(t)
    print(t)
end)
Config:Slider("WalkSpeed", 16, 300, 40, function(t)
    print(t)
end)
Config:Slider("WalkSpeed", 16, 300, 40, function(t)
    print(t)
end)
Config:Slider("WalkSpeed", 16, 300, 40, function(t)
    print(t)
end)

local LoadConfig = Config:Toggle("Load CFG", function(t)
    StartCFGLoad = t
    if StartCFGLoad then
        Neverlose_Main:LoadCfg('Mana64')
    end
end)

spawn(function()
    while task.wait(.1) do
        if StartCFGLoad then
            pcall(function()
                LoadConfig:Set(false)
            end)
        end
    end
end)