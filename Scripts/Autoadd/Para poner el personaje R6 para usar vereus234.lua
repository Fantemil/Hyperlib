--Hecho por Izekai

-- Instancias:

ScreenGui local = Instancia.new("ScreenGui")
local R6 = Instancia.new("BotÃ³n de texto")
TextButton local = Instancia.new("TextButton")

--Propiedades:

ScreenGui.Parent = juego.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = EnumeraciÃ³n.ZIndexBehavior.Sibling

R6.Nombre = "R6"
R6.Padre = ScreenGui
R6.ColorDeFondo3 = Color3.fromRGB(255, 255, 255)
R6.PosiciÃ³n = UDim2.nueva(-0.000343383319, 0, 0.32815966, 0)
R6.TamaÃ±o = UDim2.nuevo(0, 29, 0, 29)
R6.Fuente = EnumeraciÃ³n.Fuente.SourceSans
R6.Texto = "R6"
R6.TextColor3 = Color3.fromRGB(0, 0, 0)
R6.TamaÃ±o del texto = 14.000
R6.BotÃ³n1Abajo:conectar(funciÃ³n()
	loadstring(juego:HttpGet(('https://pastebin.com/raw/jHGVauVX'),true))()
fin)

BotÃ³n de texto.Padre = ScreenGui
BotÃ³n de texto.ColorDeFondo3 = Color3.fromRGB(255, 255, 255)
BotÃ³n de texto.PosiciÃ³n = UDim2.new(0, 0, 0.414634138, 0)
BotÃ³n de texto.TamaÃ±o = UDim2.new(0, 72, 0, 27)
BotÃ³n de texto.Fuente = EnumeraciÃ³n.Fuente.SourceSans
TextButton.Text = "Reaparecer"
BotÃ³n de texto.TextColor3 = Color3.fromRGB(0, 0, 0)
BotÃ³n de texto.TamaÃ±o del texto = 14.000
BotÃ³n de texto.BotÃ³n del ratÃ³n1Abajo:conectar(funciÃ³n()
	loadstring(juego:HttpGet(('https://pastebin.com/raw/ukFZuXbb'),true))()
fin)