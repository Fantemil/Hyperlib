-- xiba#8492 @ 11/12/2022 9:54 PM

local Metadata = {
	LoaderData = {
		Name = (shared.LoaderTitle or 'A Loader'),
		Colors = shared.LoaderColors or {
			Main = Color3.fromRGB(24, 24, 24),
			Topic = Color3.fromRGB(255, 255, 255),
			Title = Color3.fromRGB(255, 255, 255),
			LoaderBackground = Color3.fromRGB(30, 30, 30),
			LoaderSplash = Color3.fromRGB(255, 255, 255)
		}
	},
	Keyframes = shared.LoaderKeyFrames or {
		[1] = {1, 10}, -- [Time (s), Percentage]
		[2] = {2, 30},
		[3] = {3, 60},
		[4] = {2, 100}
	}
}

--
local function tweenObject(object, speed, info)
	game.TweenService:Create(object, TweenInfo.new(speed, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), info):Play()
end
local function createObject(className, properties)
	local instance = Instance.new(className)
	local parent
	for propertyName, propertyValue in pairs(properties) do
		if propertyName ~= "Parent" then
			instance[propertyName] = propertyValue
		else
			parent = propertyValue
		end
	end
	instance.Parent = parent
	return instance
end


local Core = createObject("ScreenGui", {
	Name = "Core",
	Parent = game.CoreGui
})
local Main = createObject("Frame", {
	Name = "Main",
	Parent = Core,
	BackgroundColor3 = Metadata.LoaderData.Colors.Main,
	BorderSizePixel = 0,
	ClipsDescendants = true,
	Position = UDim2.new(0.5, 0, 0.5, 0),
	AnchorPoint = Vector2.new(0.5, 0.5),
	Size = UDim2.new(0, 0, 0, 0),
})
local Top = createObject("TextLabel", {
	Name = "Top",
	TextTransparency = 1,
	Parent = Main,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	Position = UDim2.new(0, 30, 0, 8),
	Size = UDim2.new(0, 301, 0, 50),
	Font = Enum.Font.Gotham,
	Text = "Loader",
	TextColor3 = Metadata.LoaderData.Colors.Topic,
	TextSize = 10,
	TextXAlignment = Enum.TextXAlignment.Left,
})
local Title = createObject("TextLabel", {
	Name = "Title",
	Parent = Main,
	TextTransparency = 1,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	Position = UDim2.new(0, 30, 0, 27),
	Size = UDim2.new(0, 301, 0, 46),
	Font = Enum.Font.Gotham,
	RichText = true,
	Text = "<b>" .. Metadata.LoaderData.Name .. "</b>",
	TextColor3 = Metadata.LoaderData.Colors.Title,
	TextSize = 14,
	TextXAlignment = Enum.TextXAlignment.Left,
})
local BG = createObject("Frame", {
	Name = "BG",
	Parent = Main,
	AnchorPoint = Vector2.new(0.5, 0),
	BackgroundTransparency = 1,
	BackgroundColor3 = Metadata.LoaderData.Colors.LoaderBackground,
	BorderSizePixel = 0,
	Position = UDim2.new(0.5, 0, 0, 70),
	Size = UDim2.new(0.8500000238418579, 0, 0, 24),
})
local Progress = createObject("Frame", {
	Name = "Progress",
	Parent = BG,
	BackgroundColor3 = Metadata.LoaderData.Colors.LoaderSplash,
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Size = UDim2.new(0, 0, 0, 24),
})

local function updatePercentage(percentage)
	tweenObject(Progress, 0.5, {
		Size = UDim2.new((percentage / 100), 0, 0, 24)
	})
end


-- Loader itself
tweenObject(Main, 0.25, {
	Size = UDim2.new(0, 346, 0, 121)
})
wait(0.25)
tweenObject(Top, 0.5, {
	TextTransparency = 0
})
tweenObject(Title, 0.5, {
	TextTransparency = 0
})
tweenObject(BG, 0.5, {
	BackgroundTransparency = 0
})
tweenObject(Progress, 0.5, {
	BackgroundTransparency = 0
})

for i, v in pairs(Metadata.Keyframes) do
	wait(v[1]);
	updatePercentage(v[2])
end
updatePercentage(100)

tweenObject(Top, 0.5, {
	TextTransparency = 1
})
tweenObject(Title, 0.5, {
	TextTransparency = 1
})
tweenObject(BG, 0.5, {
	BackgroundTransparency = 1
})
tweenObject(Progress, 0.5, {
	BackgroundTransparency = 1
})
wait(0.5)
tweenObject(Main, 0.25, {
	Size = UDim2.new(0, 0, 0, 0)
})
wait(0.25);
Core:Destroy()