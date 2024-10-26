
_G.LoadedScript = false
setclipboard(tostring("https://discord.gg/NkKa3uAg"))

function TP1(Pos)
  Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
  if Distance < 1200 then
      Speed = 300000
  elseif Distance < 1000 then
      Speed = 325000
  elseif Distance < 2600 then
      Speed = 350000
  elseif Distance >= 1000 then
      Speed = 370000
  end
  game:GetService("TweenService"):Create(
      game.Players.LocalPlayer.Character.HumanoidRootPart,
      TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
      {CFrame = Pos}
  ):Play()
end


_G.OrionLib = loadstring(game:HttpGet(('https://bloxxyserverfiles-1.netlify.app/LIB')))()

local Library = _G.OrionLib:MakeWindow({Name = "BloxHunt - InfiniteToken", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Library:MakeTab({
	Name = "Important",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "InfiniteMoney",
	Default = false,
	Callback = function(Value)
    if _G.LoadedScript then
    _G.IM = Value
    while _G.IM do wait(0.001)
		  TP1(CFrame.new(-95, 61, 144))
    end
	end  
end  
})

Tab:AddToggle({
	Name = "InfiniteMoney V2",
	Default = false,
	Callback = function(Value)
    if _G.LoadedScript then
    _G.IM = Value
    while _G.IM do wait(0.001)
		  TP1(CFrame.new(231, 9, 70))
    end
	end  
end  
})

Tab:AddButton({
  Name = "Invisible! (Beta)",
  Callback = function()
      game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
    end    
})


local Tab = Library:MakeTab({
	Name = "DiscordServer",
	Icon = "rbxassetid://10709812067",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Super DiscordServer"
})

Tab:AddButton({
	Name = "Join in discord!",
	Callback = function()
        _G.OrionLib:MakeNotification({
            Name = "Copied Link! ð¥³",
            Content = "Paste it into your browser to enjoy our server!",
            Image = "rbxassetid://10709812067",
            Time = 10
        })
        MIN()
        setclipboard(tostring("https://discord.gg/NkKa3uAg"))
  	end    
})

_G.OrionLib:MakeNotification({
	Name = "Credits by Bloxxy2.0",
	Content = "The wonderful script was created by the amazing Bloxxy2.0, so enjoy your freedom!!",
	Image = "rbxassetid://4483345998",
	Time = 10
})

_G.LoadedScript = true
