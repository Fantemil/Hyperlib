--Best configs that dont kick you:
_G.AutofarmSettings = {
	AntiAfk = true, 
	DelayFarm = 2.15,
	ResetWhenFullBag = true,
	CoinType = "BeachBall",
	Disable3DRendering = false,
	ImproveFPS = false,
	StartAutofarm = false
}
--You can set StartAutofarm to true if you want put autofarm to autoexec
loadstring(game:HttpGet("https://raw.githubusercontent.com/NoCapital2/MM2Autofarm/main/script"))()