-- If you need a scripter dm me up HyperSpeed#7040, it is buggy don't expect to leave it for the night, I ain't getting paid here lol
local player = game.Players.LocalPlayer
 
 
local function modifyHitboxSize(character, scale)
    local humanoid = character:WaitForChild("Humanoid")
    humanoid:BuildRigFromAttachments()
    local rootPart = character:WaitForChild("HumanoidRootPart")
    rootPart.Size = rootPart.Size * scale
    humanoid.HipHeight = humanoid.HipHeight * scale
end

local function autofarm()
if player.Character then
    modifyHitboxSize(player.Character, 1500)
        wait(2)
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
else
    player.CharacterAdded:Connect(function(character)
        modifyHitboxSize(character, 1500)
            wait(2)
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end)
end
end

local function commonegg()
local A_1 = "Common Egg"
local Event = game:GetService("ReplicatedStorage").PetSys.Remotes.PurchaseSignal
Event:InvokeServer(A_1)
end

local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local X = Material.Load({
	Title = "🏖️Roblox but every second the...",
	Style = 2,
	SizeX = 250,
	SizeY = 150,
	Theme = "Dark",
	ColorOverrides = {
		MainFrame = Color3.fromRGB(0,0,0)
	}
})

local Y = X.New({
	Title = "Script made by HyperSpeed#7040"
})

local A = Y.Button({
	Text = "Collect all coins",
	Callback = function()
                autofarm()
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Autofarm"
			})
		end
	}
})

local A = Y.Button({
	Text = "Open Common Egg",
	Callback = function()
                commonegg()
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Autofarm"
			})
		end
	}
})