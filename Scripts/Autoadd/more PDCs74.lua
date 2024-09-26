local Character = game.Players.LocalPlayer.Character
local PDC= "PDC kit" 
Character[PDC]:GetAttributeChangedSignal("Charges"):Connect( function()
 
Character[PDC]:SetAttribute("Charges", 999) end )
Character[PDC]:GetAttributeChangedSignal("MaxCharges"):Connect( function()
 
Character[PDC]:SetAttribute("MaxCharges", 999) end )
Character[PDC]:SetAttribute("Cooldown", 0.1)