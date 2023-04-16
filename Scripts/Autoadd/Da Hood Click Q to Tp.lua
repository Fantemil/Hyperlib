getgenv().keytoclick = "Q" 

tool = Instance.new("Tool") 

tool.RequiresHandle = false 

tool.Name = keytoclick 

tool.Activated:connect(function() 

local vim = game:service("VirtualInputManager") 

vim:SendKeyEvent(true, keytoclick, false, game) 

end) 

tool.Parent = game.Players.LocalPlayer.Backpack 

wait(0.2) 

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))(); 

local Notify = AkaliNotif.Notify; 

Notify({ 

Description = "zzzzzzzzzzzz"; 

Title = "vvs#9112 fucking cracked this shitty ass script"; 

Duration = 5; 

});