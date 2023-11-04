repeat task.wait() until game:IsLoaded()
_G.Start_Kaitun = false
_G.Config = true
_G.Settings = {
	Main = {
		["Auto Farm"] = true,
		["Auto Go To Fruit"] = true,
		["Store Fruit"] = true,

		["Buy Fruit"] = true,
		["Select Fruit"] = {
			"Lepoard-Lepoard",
			"Dough-Dough",
			"Linght-Linght",
		}, --[[
			Kilo-Kilo
			Spin-Spin
			Chop-Chop
			Spring-Spring
			Bomb-Bomb
			Smoke-Smoke
			Spike-Spike
			Flame-Flame
			Falcon-Falcon
			Ice-Ice
			Sand-Sand
			Dark-Dark
			Revive-Revive
			Diamond-Diamond
			Linght-Linght
			Rubber-Rubber
			Barber-Barber
			Magma-Magma
			Quake-Quake
			Buddha-Buddha
			Love-Love
			Spider-Spider
			Phoenix-Phoenix
			Portal-Portal
			Rumble-Rumble
			Paw-Paw
			Blizzard-Blizzard
			Gravity-Gravity
			Dough-Dough
			Shadow-Shadow
			Venom-Venom
			Control-Control
			Spirit-Spirit
			Dragon-Dragon
			Leopard-Leopard
		]]


		-- // [[ World 1 ]] \\ --
		["Auto Saber"] = true,
		["Auto Pole"] = true,

		["Auto New World"] = true,

		-- // [[ World 2 ]] \\ --
		["Thire World"] = true,
		["Auto Bartilo Quest"] = true,
		["Auto Rengoku"] = true,
		["Open Flamingo Access"] = true,
		["Midnight Blade"] = true,
		["Auto Factory Farm"] = true,
		["Auto Super Human"] = true,

		-- // [ World 3] \\ --
		["Auto Yama"] = true,
		["Auto Tushita"] = true,
		["Auto ElectricClaw"] = true,
		["Auto Farm Mastery Sword All"] = true, --When reached Level Max
		["Auto Soul Guitar"] = true, -- When reached Level 2300+
	},
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/minhhau207/SilverHub/main/Kaitun2"))()