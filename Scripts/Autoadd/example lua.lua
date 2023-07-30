local Loady = loadstring(game:HttpGet'https://raw.githubusercontent.com/ao-0/miami-nights/main/Resources/Loady/v2/main.lua')()
local LoadyWindow = Loady:CreateWindow('Loady', function(a)
	print('loaded', a)
end)
LoadyWindow:CreateSelection({
	Name = "Da Hood",
    UpdateDate = 1668367046,
    Image = "http://www.roblox.com/asset/?id=8899558070",
    Flag = "dh",
    Status = "Working"
})
LoadyWindow:CreateSelection({
	Name = "Phantom Forces",
    UpdateDate = 1636841307,
    Image = "http://www.roblox.com/asset/?id=1093499460",
    Flag = "pf",
    Status = "Detected"
})
LoadyWindow:CreateSelection({
	Name = "Project Lazarus",
    UpdateDate = 1655164063,
    Image = "http://www.roblox.com/asset/?id=7214834934",
    Flag = "pl",
    Status = "Working"
})
LoadyWindow:CreateSelection({
	Name = "This UI",
    UpdateDate = 1668368950,
    Flag = "thisui",
    Status = "Working"
})
LoadyWindow:Initiate()