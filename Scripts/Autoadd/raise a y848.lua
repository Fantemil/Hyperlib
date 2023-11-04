local function press(a)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, tostring(a), false, game)
end

_G.autofarm = false;
_G.collect = false;

local function farm()
		for i, v in pairs(game.workspace.DuckFolder.Ducks:GetChildren()) do
		if v.Name == "Duck" then
		fireclickdetector(v.ClickBox.ClickDetector)
			  

end
end

end

getgenv().Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RTrade/Voidz/main/API/Networks/swordhook-network.lua"))() --you can go into the github link and copy all of it and modify it for yourself.
getgenv().Window = getgenv().Library:CreateWindow('Raise a duck', Vector2.new(550, 627), Enum.KeyCode.LeftShift) 

local Test = Window:CreateTab("main")
local Test2 = Test:CreateSector("Section","left")





Test2:AddToggle("auto collect",false,function(state)
getgenv().collect = state
coroutine.wrap(function()
    while wait() do
        if getgenv().collect == true then
            pcall(function()
                for _,v in pairs(game:GetService("Workspace").Money:GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
wait()
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
end
end
            end)
        end
        end
        end)()
        
end)

Test2:AddToggle("auto click duck",false,function(state)
getgenv().click = state
while getgenv().click do
wait()
farm()
        
end
end)