getgenv().config = { -- you can remove this unless you want to change options
   enabled = true,
   autoScroll = true,
   onlyExecutorOutput = true, -- only show output from synapse, not from within the game
   toggleKey = "Insert",
   optionsUiEnabled = true
}


loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/Scripts/main/InternalUI.lua"))()