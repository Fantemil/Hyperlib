if not game:IsLoaded() then
	game.Loaded:Wait()
end

getgenv().TONKA = {
	AIM = {
		AIM_PART = "HumanoidRootPart",
		CHECK_IF_JUMPED_AIMPART = "HumanoidRootPart",
		KEYBIND = "e",
		DISTANCE = 600, --studs
		ENABLED = true,
		CHECK_IF_JUMPED = false
	},
	CONFIG = {
		PREDICT_MOVEMENT = false,
		PREDICTION = 0.0135,
		UNLOCK_ON_DEATH = true,
		UNLOCK_ON_YOURDEATH = true,
		EASING_STYLE = "Exponential", -- (to change the curve style go here--->https://create.roblox.com/docs/reference/engine/enums/EasingStyle)
		USE_JUMP_EASING = true,
		JUMP_EASING_STYLE = "Quart" -- https://create.roblox.com/docs/reference/engine/enums/EasingStyle
	},
	SMOOTHNESS = {
		USE_SMOOTHNESS = true,
		SMOOTHNESS_AMOUNT = 0.0150,
		SMOOTHNESS_Y = true,
		SMOOTHNESS_Y_VALUE = 0.0150, 
		SHAKE = true, 
		SHAKE_VALUE = {
			X = 10,
			Y = 10,
			Z = 10,
		}
	},
	FOV = {
		SHOW_FOV = false,
		FOV_SIDES = 40,
		FOV_COLOR = "Black", -- Red, Black, Purple, Pink, Yellow, Grey, Blue, White
	},
}
getgenv().TonkaV2 = {
    SILENTAIM = {
        TOGGLE = "P",
        ENABLED = false,
        PREDICTION = 0.13,
        AUTOPREDICTION = true,
        AIMPART = "HumanoidRootPart",
        CLOSEST_BODY_PART = true, 
        ANTI_GROUND_SHOTS = true,
        HITCHANCE = 300, 
        WALLCHECK = true,
        UNLOCKONDEATH = true,
    },
    FOV = {
        VISIBLE = false,
        RADIUS = 25
    },
}
loadstring(game:HttpGet("https://pastebin.com/raw/E4YEhb35"))()