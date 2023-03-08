local Panel = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local MainPanel = Panel.CreateLib("Worst Panel", "Ocean")

local PanelTab = MainPanel:NewTab("Main WP")

local PanelButton = PanelTab:NewSection("Main WP Function")

PanelButton:NewButton("Fake Typing Permanent", "Lag", function()
while true do
wait()
local A_1 = true
local Event = game:GetService("ReplicatedStorage").userTyping
Event:FireServer(A_1)
end
end)

PanelButton:NewButton("Fake Typing 1 Time", "Fake Type Just 1 second", function()
local A_1 = true
local Event = game:GetService("ReplicatedStorage").userTyping
Event:FireServer(A_1)
wait()
local A_1 = true
local Event = game:GetService("ReplicatedStorage").userTyping
Event:FireServer(A_1)
wait()
local A_1 = true
local Event = game:GetService("ReplicatedStorage").userTyping
Event:FireServer(A_1)
end)