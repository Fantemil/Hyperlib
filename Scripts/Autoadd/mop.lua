getgenv().Undead = false
getgenv().Giant = true

if Giant then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ReapV/mop/main/giant/mop", true))()
elseif Undead == Undead then
   loadstring(game:HttpGet("https://raw.githubusercontent.com/ReapV/mop/main/undead/mop", true))()
end