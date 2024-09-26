getgenv().bdfs = {
	Autofarm = true, -- Toggle autofarm
	VisibleHitbox = false, -- Toggle DumpsterMoneyMaker hitbox visibility
	UseTweenMethod = false, -- Change to true if you don't like default method
	LoadGui = true, -- New gui for smth
	DONOTCHANGE = {
		offset = Vector3.new(0,0,0) -- For gui's AFK spot
	}
}
loadstring(game:HttpGet("https://gitverse.ru/api/repos/stonifam/scripts/raw/branch/master/bdfs.lua"))()