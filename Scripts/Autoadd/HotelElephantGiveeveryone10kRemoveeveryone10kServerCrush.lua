local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()


local Window = Library.CreateLib("Hotel Elephant Fucker V2", "Midnight")
local Tab = Window:NewTab("Game")
local Section = Tab:NewSection("Game Breaking")
Section:NewButton("Server Fucker", "Removes coalitions for all parts, click again to toggle off", function()   
    for _, GameFucked in pairs(game:GetDescendants()) do
 game.ReplicatedStorage.DoorOpener:FireServer(GameFucked)
end
    end)
Section:NewButton("Remove 10000 cash from everyone (even yourself)", "Button name says it all", function()    
     Players = game:GetService("Players")
 for i, plr in pairs(Players:GetPlayers()) do
  local ShitAndCum = {
   [1] = false,
   [2] = -10000,
   [3] = "Cash",
   [4] = plr
  }

  game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(ShitAndCum))
 end
end)
Section:NewButton("Give everyone 10000 cash", "Button name says it all", function()    
     Players = game:GetService("Players")
 for i, plr in pairs(Players:GetPlayers()) do
  local ShitAndCum = {
   [1] = false,
   [2] = 10000,
   [3] = "Cash",
   [4] = plr
  }

  game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(ShitAndCum))
 end
end)
local Section = Tab:NewSection("Change team")
Section:NewButton("Manager", "Changes your team to manager", function()    
local args = {
    [1] = "Bright green"
}

game:GetService("ReplicatedStorage").ChangeTeam:InvokeServer(unpack(args))

end)
Section:NewButton("Shop assistant", "Changes your team to Shop assistant", function()    
local args = {
    [1] = "Bright blue"
}

game:GetService("ReplicatedStorage").ChangeTeam:InvokeServer(unpack(args))

end)
Section:NewButton("Concierge", "Changes your team to Concierge", function()    
local args = {
    [1] = "Burgundy"
}

game:GetService("ReplicatedStorage").ChangeTeam:InvokeServer(unpack(args))

end)
Section:NewButton("Waiter/Waitress", "Changes your team to Waiter/Waitress", function()    
local args = {
    [1] = "Bright red"
}

game:GetService("ReplicatedStorage").ChangeTeam:InvokeServer(unpack(args))

end)
Section:NewButton("Hotel Guest", "Changes your team to Hotel Guest", function()    
local args = {
    [1] = "Bright yellow"
}

game:GetService("ReplicatedStorage").ChangeTeam:InvokeServer(unpack(args))

end)
local Section = Tab:NewSection("local player")
Section:NewButton("Give yourself 10000 cash", "did you read the button name?", function()   
local args ={
    [1] = false,
    [2] = 10000,
    [3] = "Cash",
    [4] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(args))

    end)