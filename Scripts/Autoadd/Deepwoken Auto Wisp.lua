local GetService = game.GetService
local IsA = game.isA

local FindFirstChildWhichIsA = game.FindFirstChildWhichIsA
local FindFirstChild = game.FindFirstChild

local Players = GetService(game, "Players")
local LP = Players.LocalPlayer

local PlrGui = LP:WaitForChild("PlayerGui", 11)
local WsipName = LP.Name .. "Wisp"

local KeysArray = {["A"] = 0x41; ["B"] = 0x42; ["C"] = 0x43; ["D"] = 0x44; ["E"] = 0x45; ["F"] = 0x46; ["G"] = 0x47; ["H"] = 0x48; ["I"] = 0x49; ["J"] = 0x4A; ["K"] = 0x4B; ["L"] = 0x4C; ["M"] = 0x4D; ["N"] = 0x4E; ["O"] = 0x4F; ["P"] = 0x50; ["Q"] = 0x51; ["R"] = 0x52; ["S"] = 0x53; ["T"] = 0x54; ["U"] = 0x55; ["V"] = 0x56; ["W"] = 0x57; ["X"] = 0x58; ["Y"] = 0x59; ["Z"] = 0x5A}

task.spawn(function()
    while task.wait() do
        if iswindowactive() then
            if PlrGui:WaitForChild("SpellGui", 11) ~= nil then
                if FindFirstChild(PlrGui.SpellGui.SpellFrame, "Symbols") ~= nil then
                    if FindFirstChild(workspace.Thrown, WsipName) then return end
                    for Index, Value in ipairs(PlrGui.SpellGui.SpellFrame.Symbols:GetChildren()) do
                        if Value ~= nil and IsA(Value, "Frame") and FindFirstChildWhichIsA(Value, "TextLabel") then
                            keypress(KeysArray[Value.TextLabel.Text])
                            keyrelease(KeysArray[Value.TextLabel.Text])
                           
                            task.wait(0.2)
                        end
                    end
                end
            end
        end
    end
end)