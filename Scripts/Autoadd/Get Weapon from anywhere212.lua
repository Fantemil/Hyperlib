--[[
I originally found this btw LOL
I used to do ITEMPICKUP with the name since I thought it checked on ServerItemHandler, but it doesn't so that's useless now.
--]]
local ITEM_NAME = "M4A1"
local ItemHandler = workspace.Remote:WaitForChild("ItemHandler")
local Position = game:GetService("Players").LocalPlayer.Character:GetPivot()

ItemHandler:InvokeServer({ Position = Position, Parent = workspace.Prison_ITEMS:FindFirstChild(ITEM_NAME, true)})