-- Cracked by grimcity

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()


_G.autotrain = true
_G.autowin = true


function autotrain()
	while _G.autotrain == true do
		local args = {
        [1] = 1
        }

        game:GetService("ReplicatedStorage").Remote.Mine.AddTrain:FireServer(unpack(args))
        wait(0.00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
	end
end


function autowin()
	while _G.autowin == true do

	    local args = {
	        [1] = 1,
	        [2] = 1
	    }
	    
	    game:GetService("ReplicatedStorage").Remote.Mine.HitBlock:FireServer(unpack(args))
        local args = {
	        [1] = 1,
	        [2] = 2
	    }
	    
	    game:GetService("ReplicatedStorage").Remote.Mine.HitBlock:FireServer(unpack(args))
        local args = {
	        [1] = 1,
	        [2] = 3
	    }
	    
	    game:GetService("ReplicatedStorage").Remote.Mine.HitBlock:FireServer(unpack(args))
        local args = {
	        [1] = 1,
	        [2] = 4
	    }
	    
	    game:GetService("ReplicatedStorage").Remote.Mine.HitBlock:FireServer(unpack(args))
        local args = {
	        [1] = 1,
	        [2] = 5
	    }
	    
	    game:GetService("ReplicatedStorage").Remote.Mine.HitBlock:FireServer(unpack(args))
        local args = {
	        [1] = 1,
	        [2] = 6
	    }
	    
	    game:GetService("ReplicatedStorage").Remote.Mine.HitBlock:FireServer(unpack(args))
        local args = {
	        [1] = 1,
	        [2] = 7
	    }
	    
	    game:GetService("ReplicatedStorage").Remote.Mine.HitBlock:FireServer(unpack(args))
        local args = {
	        [1] = 1,
	        [2] = 8
	    }
	    
	    game:GetService("ReplicatedStorage").Remote.Mine.HitBlock:FireServer(unpack(args))
        local args = {
	        [1] = 1,
	        [2] = 9
	    }
	    
	    game:GetService("ReplicatedStorage").Remote.Mine.HitBlock:FireServer(unpack(args))
        local args = {
	        [1] = 1,
	        [2] = 10
	    }
	    
	    game:GetService("ReplicatedStorage").Remote.Mine.HitBlock:FireServer(unpack(args))
        local args = {
	        [1] = 1,
	        [2] = 11
	    }
	    
	    game:GetService("ReplicatedStorage").Remote.Mine.HitBlock:FireServer(unpack(args))
        local args = {
	        [1] = 1,
	        [2] = 12
	    }
	    
	    game:GetService("ReplicatedStorage").Remote.Mine.HitBlock:FireServer(unpack(args))
	    local args = {
	        [1] = 1
	    }
	    
	    game:GetService("ReplicatedStorage").Remote.Mine.CheckIfWin:FireServer(unpack(args))
        wait(0.000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
	end

end


local Window = Rayfield:CreateWindow({
   Name = "Bomb Click Mine OP scripts",
   LoadingTitle = "Bomb Click Mine OP scripts",
   LoadingSubtitle = "by hashkiller",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Bomb Click Mine OP scripts"
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Bomb Click Mine KEY",
      Subtitle = "Key System",
      Note = "Link copied in your clipboard",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {'HashSploit-52IYy61bOl'} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("OP", 4483362458) -- Title, Image

local Section = Tab:CreateSection("OP")

local Toggle = Tab:CreateToggle({
   Name = "INF train",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.autotrain = Value
    autotrain()
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})


local Toggle = Tab:CreateToggle({
   Name = "INF win",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.autowin = Value
    autowin()
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})