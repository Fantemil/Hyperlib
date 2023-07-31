-- this is an example for the script, use this to make your own! (Might be adding custom Themes)
local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/7yhx/kwargs_Ui_Library/main/source.lua"))()

local UI = Lib:Create{
   Theme = "Dark", -- or any other theme
   Size = UDim2.new(0, 555, 0, 400) -- default
}

local Main = UI:Tab{
   Name = "Main"
}

local Divider = Main:Divider{
   Name = "Main shit"
}

local QuitDivider = Main:Divider{
   Name = "Quit"
}

-- All functions have the Name, Description and Callback arguments so you can use them whenever ig yeah
local KillAll = Divider:Button{
   Name = "Kill all",
   Description = "Kills all the players in the game!",
   Callback = function()
       print("All players killed.")
   end
}

local LoopKillAll = Divider:Toggle{
   Name = "Loop kill all",
   Description = "Loop kills everyone in the game.",
   Callback = function(State)
       print("Kill state: ", State)
   end
}

local OtherToggleStyle = Divider:Toggle{
   Name = "2nd style of toggle",
   Style = 2
}

local Players = Divider:Dropdown{
   Name = "Player list",
   Options = {"Player1", "Player2", "Player3", "Player4", "Player5"},
   Callback = function(Value)
       print(Value)
   end
}

Divider:ColorPicker{
   Name = "ESP color",
   Default = Color3.fromRGB(0, 255, 255), -- default,
   Callback = function(Value)
       print(Value)
   end
}

Divider:Box{
   Name = "Car name",
   ClearText = true, -- whether the textbox clears on focus or not
   Callback = function(Value)
       print(Value)
   end
}

Divider:SearchDropdown{
   Name = "Teleports",
   Options = {"Pleasant Park", "Loot Lake", "Tomato Town", "Wailing Woods", "Anarchy Acres", "Retail Row"},
   ClearText = false, -- default
   Callback = function(Value)
       print(Value)
   end
}

local Quit = QuitDivider:Button{
   Name = "Closes the ui library.",
   Callback = function()
       UI:Quit{
           Message = "Fuck off...", -- closing message
           Length = 1 -- seconds the closing message shows for
       }
   end
}