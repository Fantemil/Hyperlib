if game.PlaceId == 14498760035 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("block digging")

local KillingCheats = PhantomForcesWindow:NewSection("Get power and money")

KillingCheats:CreateTextbox("get strength", function(Value)
    local args = {
        [1] = Value
    }

    game:GetService("ReplicatedStorage").Game.RemoteEvents.GiveStrength:FireServer(unpack(args))
end)

KillingCheats:CreateTextbox("get wins", function(Value)
    local args = {
        [1] = {
            ["Amount"] = Value,
            ["StatName"] = "Win",
            ["Time"] = 180,
            ["GiftType"] = "Stat"
        }
    }

    game:GetService("ReplicatedStorage").Game.RemoteEvents.FreeGift:FireServer(unpack(args))
end)

KillingCheats:CreateToggle("auto rebirth", function(Rebi)
    G_Rebirth = Rebi
    while G_Rebirth do
        local args = {
            [1] = math.huge
        }

        game:GetService("ReplicatedStorage").Game.RemoteEvents.GiveStrength:FireServer(unpack(args))
        game:GetService("ReplicatedStorage").Game.RemoteFunctions.Rebirth:InvokeServer()
        
        wait(0.01)  -- Moved inside the loop
    end
end)

local KillingCheats2 = PhantomForcesWindow:NewSection("pets from rewards")

KillingCheats2:CreateButton("bear pet", function()
    local args = {
        [1] = {
            ["PetName"] = "Bear",
            ["Time"] = 420,
            ["GiftType"] = "Pet"
        }
    }

    game:GetService("ReplicatedStorage").Game.RemoteEvents.FreeGift:FireServer(unpack(args))
end)

KillingCheats2:CreateButton("blue pet", function()
    local args = {
        [1] = {
            ["PetName"] = "Blue",
            ["Time"] = 420,
            ["GiftType"] = "Pet"
        }
    }

    game:GetService("ReplicatedStorage").Game.RemoteEvents.FreeGift:FireServer(unpack(args))
end)

KillingCheats2:CreateButton("grimace pet", function()
    local args = {
        [1] = {
            ["PetName"] = "Grimace",
            ["Time"] = 420,
            ["GiftType"] = "Pet"
        }
    }

    game:GetService("ReplicatedStorage").Game.RemoteEvents.FreeGift:FireServer(unpack(args))
end)
elseif game.PlaceId == 4924922222 then
    local v0=loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))();local v1=v0:NewWindow("Brookhaven Halloween Ã°Å¸Å½ÆÃ°Å¸âÂ»Ã°Å¸ÂÂ¬");local v2=v1:NewSection("Get corn");v2:CreateToggle("Start easy then press me",function(v3) local v4=1563 -(500 + 1063) ;while true do if (v4==(0 + 0)) then G_Brookhaven=v3;while G_Brookhaven do local v29=game.Players.LocalPlayer;local v30=v29.Character or v29.CharacterAdded:Wait() ;local v31=workspace["Easter001!"].EasterEggEazy;local function v32(v42) if (v30 and v30:FindFirstChild("HumanoidRootPart")) then local v51=0;while true do if (v51==(1065 -(68 + 997))) then v30.HumanoidRootPart.CFrame=v42.CFrame;wait(1270.0009 -(226 + 1044) );break;end end end end for v43,v44 in pairs(v31:GetChildren()) do if v44:IsA("BasePart") then v32(v44);end end wait(0.01);end break;end end end);v2:CreateToggle("Start hard then press me",function(v5) G_Brookhaven=v5;while G_Brookhaven do local v10=game.Players.LocalPlayer;local v11=v10.Character or v10.CharacterAdded:Wait() ;local v12=workspace["Easter001!"].EasterEggHard;local function v13(v23) if (v11 and v11:FindFirstChild("HumanoidRootPart")) then v11.HumanoidRootPart.CFrame=v23.CFrame;wait(0.0009);end end for v24,v25 in pairs(v12:GetChildren()) do if v25:IsA("BasePart") then v13(v25);end end wait(0.01);end end);v2:CreateToggle("start medium then press me",function(v6) local v7=0 -0 ;while true do if (v7==(117 -(32 + 85))) then G_Brookhaven=v6;while G_Brookhaven do local v35=game.Players.LocalPlayer;local v36=v35.Character or v35.CharacterAdded:Wait() ;local v37=workspace["Easter001!"].EasterEggMedium;local function v38(v45) if (v36 and v36:FindFirstChild("HumanoidRootPart")) then local v52=0 + 0 ;while true do if (v52==0) then v36.HumanoidRootPart.CFrame=v45.CFrame;wait(0.0009);break;end end end end for v46,v47 in pairs(v37:GetChildren()) do if v47:IsA("BasePart") then v38(v47);end end wait(0.01 + 0 );end break;end end end);v2:CreateToggle("start extreme then press me",function(v8) G_Brookhaven=v8;while G_Brookhaven do local v14=game.Players.LocalPlayer;local v15=v14.Character or v14.CharacterAdded:Wait() ;local v16=workspace["Easter001!"].EasterEggExtreme;local function v17(v26) if (v15 and v15:FindFirstChild("HumanoidRootPart")) then local v39=0;while true do if (v39==(957 -(892 + 65))) then v15.HumanoidRootPart.CFrame=v26.CFrame;wait(0.0009 -0 );break;end end end end for v27,v28 in pairs(v16:GetChildren()) do if v28:IsA("BasePart") then v17(v28);end end wait(0.01 -0 );end end);v2:CreateToggle("start insane then press me",function(v9) G_Brookhaven=v9;while G_Brookhaven do local v18=0 -0 ;local v19;local v20;local v21;local v22;while true do if (v18==(353 -(87 + 263))) then wait(0.01);break;end if (v18==(181 -(67 + 113))) then v21=workspace["Easter001!"].EasterEggInsane;v22=nil;v18=2 + 0 ;end if (v18==(4 -2)) then function v22(v48) if (v20 and v20:FindFirstChild("HumanoidRootPart")) then v20.HumanoidRootPart.CFrame=v48.CFrame;wait(0.0009 + 0 );end end for v49,v50 in pairs(v21:GetChildren()) do if v50:IsA("BasePart") then v22(v50);end end v18=11 -8 ;end if (v18==(952 -(802 + 150))) then v19=game.Players.LocalPlayer;v20=v19.Character or v19.CharacterAdded:Wait() ;v18=2 -1 ;end end end end);
elseif game.PlaceId == 17830932055 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("Karen sim")

local KillingCheats = PhantomForcesWindow:NewSection("stuff here")

KillingCheats:CreateButton("inf coins will find a way", function()
    setclipboard("will find a way if I can")
end)

KillingCheats:CreateButton("Rage mode FE", function()
 local args = {
    [1] = "Enable"
}

game:GetService("ReplicatedStorage").Effects.RageEvent:FireServer(unpack(args))
end)

KillingCheats:CreateButton("complain then spam click", function()
  local args = {
    [1] = 2
}

game:GetService("ReplicatedStorage").RewardsEvent:FireServer(unpack(args))
end)

KillingCheats:CreateButton("go to last island", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(489.581146, 930.201294, -1762.63757, 1, 0, 0, 0, 1, 0, 0, 0, 1) wait()
end)

KillingCheats:CreateButton("nothing here will be replaced if I find sumin else", function()
 game.Players.localPlayer:kick("Really there is nothing here")
end)

KillingCheats:CreateButton("nothing here will be replaced if I find sumin else", function()
 game.Players.localPlayer:kick("Really there is nothing here")
end)

KillingCheats:CreateButton("get all places only 2 evo nd 2nd island", function()
  local args = {
    [1] = "Dealership",
    [2] = 0
}

game:GetService("ReplicatedStorage").EntryEvent:FireServer(unpack(args))

local args = {
    [1] = "711",
    [2] = 0
}

game:GetService("ReplicatedStorage").EntryEvent:FireServer(unpack(args))
    
local args = {
    [1] = "Cake",
    [2] = 0
}

game:GetService("ReplicatedStorage").EntryEvent:FireServer(unpack(args))
    
local args = {
    [1] = "Steak",
    [2] = 0
}

game:GetService("ReplicatedStorage").EntryEvent:FireServer(unpack(args))
    
local args = {
    [1] = "Gym",
    [2] = 0
}

game:GetService("ReplicatedStorage").EntryEvent:FireServer(unpack(args))
    
local args = {
    [1] = "Burger",
    [2] = 0
}

game:GetService("ReplicatedStorage").EntryEvent:FireServer(unpack(args))
    
local args = {
    [1] = "Fish",
    [2] = 0
}

game:GetService("ReplicatedStorage").EntryEvent:FireServer(unpack(args))
    
local args = {
    [1] = "Illuminati",
    [2] = 0
}

game:GetService("ReplicatedStorage").EntryEvent:FireServer(unpack(args))    
end)

KillingCheats:CreateButton("go to rocket on 1st island", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-158.652008, 248.801086, -1392.36646, 0, 0, 1, 1, 0, 0, 0, 1, 0) wait()
end)

local KillingCheats2 = PhantomForcesWindow:NewSection("Credits")

KillingCheats2:CreateButton("cred to zen_czx on discord for the ui", function()
setclipboard("All go's to him") 
end) 
    
KillingCheats2:CreateButton("he's discord", function()
    setclipboard("https://discord.gg/mRXTP9jW")
end)  
    
KillingCheats2:CreateButton("my discord soon", function()
    setclipboard("soon")
end)  
    
KillingCheats2:CreateButton("my tiktok @Chatbypass follow me", function()
    setclipboard("Pls follow me") 
end)
elseif game.PlaceId == 107640846225330 then
    local v0 = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))();
local v1 = v0:NewWindow("Like or pass money script");
local v2 = v1:NewSection("Money");
v2:CreateTextbox("Get Money", function(v3)
	local v4 = 1422 - (378 + 1044);
	local v5;
	while true do
		if (v4 == (0 - 0)) then
			v5 = {[1]={ItemName="ShrinkPlayer",Key=v3,Cash=v3}};
			game:GetService("ReplicatedStorage").Events.PurchaseTroll:InvokeServer(unpack(v5));
			break;
		end
	end
end);
elseif game.PlaceId == 7891011 then
    local v0 = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))();
local v1 = v0:NewWindow("school canteen line");
local v2 = v1:NewSection("Get money");
v2:CreateTextbox("get free money", function(v3)
	local v4 = 0 - (0 + 0);
	local v5;
	while true do
		if (v4 == ((0 + 0) - (1073 - (986 + 87)))) then
			v5 = {[1]=v3};
			game:GetService("ReplicatedStorage").Events.Avanza:FireServer(unpack(v5));
			break;
		end
	end
end);
v2:CreateButton("enter cafeteria", function()
	local v6 = {[1]="start"};
	game:GetService("ReplicatedStorage").Events.Enter:FireServer(unpack(v6));
end);
elseif game.PlaceId == 18585756769 then
local v0=loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))();local v1=v0:NewWindow("simple money script");local v2=v1:NewSection("money");v2:CreateTextbox("Get Money",function(v3) local v4={[1]="Uncommon",[2]={moneyValue=v3,blockName="Uncommon",chance=4,id=2,color=nil}};game:GetService("ReplicatedStorage").Remotes.BlockHit:FireServer(unpack(v4));end);
else game.Players.LocalPlayer:Kick("are script has detected a unsupported game. for that reason you have been kicked pls go to the script then desc. you'll find supported games")
end