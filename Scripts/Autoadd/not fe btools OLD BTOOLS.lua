--[[
A distribution of https://wearedevs.net/scripts
Last updated August 2, 2021

Description: Gives your player the old system of building tools

Instruction: Inject this script into any game using a Lua executor like JJSploit. 
]]

backpack = game:GetService("Players").LocalPlayer.Backpack

hammer = Instance.new("HopperBin")
hammer.Name = "Hammer"
hammer.BinType = 4
hammer.Parent = backpack

cloneTool = Instance.new("HopperBin")
cloneTool.Name = "Clone"
cloneTool.BinType = 3
cloneTool.Parent = backpack

grabTool = Instance.new("HopperBin")
grabTool.Name = "Grab"
grabTool.BinType = 2
grabTool.Parent = backpack