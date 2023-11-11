getgenv().EspSettings = {
	TeamCheck = false,
	ToggleKey = "RightAlt",
	RefreshRate = 10, -- how fast the esp updates (milliseconds)
	MaximumDistance = 500, -- only renders players within this distance
	FaceCamera = false, -- Makes esp appear 2D
	AlignPoints = false, -- Improves 2D effect; only works while FaceCamera is enabled
	-- AlignPoints: This may cause esp to have abnormal behavior when looking from certain angles
	MouseVisibility = {
		Enabled = true, -- makes any drawing objects transparent when they are near your mouse
		Radius = 60,
		Transparency = 0.3,
		Method = "Hover", -- "Radius" or "Hover" | Hover is newest method and is a lot more accurate than Radius
		HoverRadius = 50,
		Selected = { -- set any of these to false to ignore them
			Boxes = true,
			Tracers = true,
			Names = true,
			Skeletons = true,
			HealthBars = true,
			HeadDots = true,
			LookTracers = true
		}
	},
	Highlights = {
		Enabled = false,
		Players = {}, -- put player usernames into this table to 'highlight' them
		Transparency = 1,
		Color = Color3.fromRGB(255, 150, 0),
		AlwaysOnTop = true
	},
	NPC = {
		Color = Color3.fromRGB(150,150,150),
		Transparency = 1,
		RainbowColor = false,
		Overrides = {
			Boxes = true,
			Tracers = true,
			Names = true,
			Skeletons = true,
			HealthBars = true,
			HeadDots = true,
			LookTracers = true
		}
	},
	Boxes = {
		Enabled = true,
		Transparency = 1,
		Color = Color3.fromRGB(255,255,255),
		UseTeamColor = true,
		RainbowColor = false,
		Outline = true,
		OutlineColor = Color3.fromRGB(0,0,0),
		OutlineThickness = 1,
		Thickness = 1
	},
	Tracers = {
		Enabled = true,
		Transparency = 1,
		Color = Color3.fromRGB(255,255,255),
		UseTeamColor = true,
		RainbowColor = false,
		Outline = true,
		OutlineColor = Color3.fromRGB(0,0,0),
		OutlineThickness = 1,
		Origin = "Top", -- "Top" or "Center" or "Bottom" or "Mouse"
		Thickness = 1
	},
	Names = {
		Enabled = true,
		Transparency = 1,
		Color = Color3.fromRGB(255,255,255),
		UseTeamColor = true,
		RainbowColor = false,
		Outline = true,
		OutlineColor = Color3.fromRGB(0,0,0),
		Font = Drawing.Fonts.UI, -- UI or System or Plex or Monospace
		Size = 18,
		ShowDistance = false,
		ShowHealth = true,
		UseDisplayName = false,
		DistanceDataType = "m", -- what it says after the distance (ex. 100m)
		HealthDataType = "Percentage" -- "Percentage" or "Value"
	},
	Skeletons = {
		Enabled = true,
		Transparency = 1,
		Color = Color3.fromRGB(255,255,255),
		UseTeamColor = true,
		RainbowColor = false,
		Outline = true,
		OutlineColor = Color3.fromRGB(0,0,0),
		OutlineThickness = 1,
		Thickness = 1
	},
	HealthBars = {
		Enabled = true,
		Transparency = 1,
		Color = Color3.fromRGB(0,255,0),
		UseTeamColor = true,
		RainbowColor = false,
		Outline = true,
		OutlineColor = Color3.fromRGB(0,0,0),
		OutlineThickness = 1,
		Origin = "None", -- "None" or "Left" or "Right"
		OutlineBarOnly = true
	},
	HeadDots = {
		Enabled = true,
		Transparency = 1,
		Color = Color3.fromRGB(255,255,255),
		UseTeamColor = true,
		RainbowColor = false,
		Outline = true,
		OutlineColor = Color3.fromRGB(0,0,0),
		OutlineThickness = 1,
		Thickness = 1,
		Filled = false,
		Scale = 1
	},
	LookTracers = {
		Enabled = true,
		Transparency = 1,
		Color = Color3.fromRGB(255,255,255),
		UseTeamColor = true,
		RainbowColor = false,
		Outline = true,
		OutlineColor = Color3.fromRGB(0,0,0),
		OutlineThickness = 1,
		Thickness = 1,
		Length = 5
	}
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dragon5819/Main/main/esp", "UniversalEsp"))()