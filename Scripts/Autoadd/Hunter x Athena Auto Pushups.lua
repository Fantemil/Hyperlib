local Button = player.PlayerGui.PushupsGui.Pushups.Button

local keys = {
   ["W"] = "0x57",
   ["L"] = "0x4C",
   ["Q"] = "0x51",
   ["S"] = "0x53",
   ["E"] = "0x45",
   ["R"] = "0x52",
   ["T"] = "0x54",
   ["X"] = "0x58",
   ["C"] = "0x43",
   ["V"] = "0x56",
   ["B"] = "0x42",
   ["N"] = "0x4E"
}

Button:GetPropertyChangedSignal("Text"):Connect(function()
   if keys[Button.Text] ~= nil then
           keypress(keys[Button.Text])
           keyrelease(keys[Button.Text])
   end
end)