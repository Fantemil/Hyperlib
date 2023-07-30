_G.ToggleColor = Color3.fromRGB(255,255,255)
_G.ButtonColor = Color3.fromRGB(255,255,255)
_G.SliderColor = Color3.fromRGB(255,255,255)

------------------------------------------------

getgenv().CMD = nil
getgenv().IY = false
getgenv().PX = nil
getgenv().NUM = nil
getgenv().SG = nil
getgenv().NUMM = false

------------------------------------------------

getgenv().SD = nil
getgenv().BAN = false

local library = loadstring(game:HttpGet(('https://garfieldscripts.xyz/ui-libs/wallys-ui.lua')))() -- It's obfuscated, I won't let you see my ugly coding skills. =)
local w1 = library:CreateWindow("Free Admin")
local w1t1 = w1:CreateFolder('Use "ALL" CMD')
local w1t2 = w1:CreateFolder('Exclude Music')

w1t2:Box("SoundId","Number",function(value)
	getgenv().SD = value
	print(SD)
end)

w1t2:Toggle("Exclude/Ban ID",function(bool)
    getgenv().BAN = bool
    while getgenv().BAN == true do
		if game.Workspace.HDAdminSound.SoundId == "rbxassetid://"..getgenv().SD and game.Workspace.HDAdminSound.Playing==true and getgenv().BAN == true then
	    	 local args = {
	    		[1] = ":music 0"
			}
				
			game:GetService("ReplicatedStorage"):WaitForChild("HDAdminClient"):WaitForChild("Signals"):WaitForChild("RequestCommand"):InvokeServer(unpack(args))
	    end	
	    wait(0.1)
	end
end)

------------------------------------------------------------------

w1t1:Box("cmd","string",function(value)
	getgenv().CMD = value
end)

w1t1:Box("string","string",function(value)
	getgenv().SG = value
end)

w1t1:Toggle("Include Yourself",function(bool)
    getgenv().IY = bool
end)

w1t1:Button("Run CMD",function()
    if IY == true then
		for i,v in pairs(game.Players:GetChildren()) do
			if v:IsA("Player") then
				local args = {
					[1] = ":"..getgenv().CMD.." "..v.Name
				}
			
				game:GetService("ReplicatedStorage"):WaitForChild("HDAdminClient"):WaitForChild("Signals"):WaitForChild("RequestCommand"):InvokeServer(unpack(args))
			end
		end
	else
		for i,v in pairs(game.Players:GetChildren()) do
			if v:IsA("Player") and v.Name == game.Players.LocalPlayer.Name then
			else
				local args = {
					[1] = ":"..getgenv().CMD.." "..v.Name
				}
			
				game:GetService("ReplicatedStorage"):WaitForChild("HDAdminClient"):WaitForChild("Signals"):WaitForChild("RequestCommand"):InvokeServer(unpack(args))
			end
		end
    end
end)

w1t1:Button("Run String CMD",function()
    if IY == true then
		for i,v in pairs(game.Players:GetChildren()) do
			if v:IsA("Player") then
				local args = {
					[1] = ":"..getgenv().CMD.." "..v.Name..getgenv().SG
				}
			
				game:GetService("ReplicatedStorage"):WaitForChild("HDAdminClient"):WaitForChild("Signals"):WaitForChild("RequestCommand"):InvokeServer(unpack(args))
			end
		end
	else
		for i,v in pairs(game.Players:GetChildren()) do
			if v:IsA("Player") and v.Name == game.Players.LocalPlayer.Name then
			else
				local args = {
					[1] = ":"..getgenv().CMD.." "..v.Name..getgenv().SG
				}
			
				game:GetService("ReplicatedStorage"):WaitForChild("HDAdminClient"):WaitForChild("Signals"):WaitForChild("RequestCommand"):InvokeServer(unpack(args))
			end
		end
    end
end)


w1t1:DestroyGui()
