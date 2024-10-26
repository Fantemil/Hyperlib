-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(143, 143, 143)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 0.468592972, 0)
Frame.Size = UDim2.new(0, 50, 0, 50)

ImageButton.Parent = Frame
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.140000001, 0, 0.119999997, 0)
ImageButton.Size = UDim2.new(0, 37, 0, 38)
ImageButton.Image = "http://www.roblox.com/asset/?id=11998948849"
ImageButton.ImageColor3 = Color3.fromRGB(0, 0, 0)

UICorner.CornerRadius = UDim.new(0.300000012, 0)
UICorner.Parent = Frame

-- Scripts:

local function ENZP_fake_script() -- ImageButton.LocalScript 
	local script = Instance.new('LocalScript', ImageButton)

	local button = script.Parent
	local SocialService = game:GetService("SocialService")
	local player = game.Players.LocalPlayer
	
	function onButtonPressed()
		local Success, result = pcall(
		    function()
			    return SocialService:CanSendGameInviteAsync(player)
			end
			
		)
		
	    if result == true then
		    SocialService:PromptGameInvite(player)
	    end
	end
	
	button.MouseButton1Click:Connect(onButtonPressed)
	button.TouchTap:Connect(onButtonPressed)
end
coroutine.wrap(ENZP_fake_script)()
