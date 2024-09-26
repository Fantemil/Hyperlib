local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "n0ta FE - Script Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

OrionLib:MakeNotification({
	Name = "n0ta FE Hub",
	Content = "Loaded With Sucess!",
	Image = "rbxassetid://3342499434",
	Time = 5
})

--[[
Title = <string> - The title of the notification.
Content = <string> - The content of the notification.
Image = <string> - The icon of the notification.
Time = <number> - The duration of the notfication.
]]



local Tab = Window:MakeTab({
	Name = "FE Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = " Script Section"
})

Tab:AddButton({
	Name = "cmd[Admin]",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/lxte/cmd/main/testing-main.lua"))()
  	end    
})

Tab:AddButton({
	Name = "lag chat",
	Callback = function()
		-- chat breaker using unicode u+00a0
--  team N0taPlayer dont copy

for i = 1, 30 do
wait(0.9)  
local args = {
    [1] = "\194\160\194\160",
    [2] = "All"
}

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
end
	end
})

Tab:AddButton({
	Name = "c00lgui FE",
	Callback = function()
loadstring(game:GetObjects("rbxassetid://9827584846")[1].Source)()
	end
})

Tab:AddButton({
	Name = "Energize Credits to illremember",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/IlikeyocutgHAH12/FEEGGEG/main/%5BFE%5D%20Energize%20Animation%20Gui.txt"))()
  	end    
})

Tab:AddButton({
	Name = "FE Yeet Gui",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/YssHacker/Fe-Trolling-GUI/main/mainscript2"))()
  	end    
})

Tab:AddButton({
	Name = "OpFinality",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/3axt0ia1",true))()
	end
})
--[[
Name = <string> - The name of the section.
]]

local Tab = Window:MakeTab({
	Name = "FE Scripts [2]",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = " Script Section"
})

Tab:AddButton({
	Name = "Rochips Panel",
	Callback = function()
		if "Rochips Loader" then
	local Rochips_panel,v,u,i=loadstring,"/snippets","gwwv","/raw/main.lua" ;
	Rochips_panel(game:HttpGet("https://glot.io"..v.."/" ..u.."877ga3"..i))();
	return "it will load in around 3 - 131 seconds"
end
	end
})

Tab:AddButton({
	Name = "ClickFling [credits im_patrick]",
	Callback = function()
		loadstring(game:HttpGet(('https://pastefy.app/QI62apy6/raw'),true))()
	end
})

Tab:AddButton({
	Name = "ChatBot [credits im_patrick]",
	Callback = function()
		loadstring(game:HttpGet("https://pastefy.app/yjIn8K9j/raw"))()
	end
})


OrionLib:Init()