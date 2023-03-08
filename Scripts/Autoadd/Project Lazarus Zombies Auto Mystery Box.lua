local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("by") -- Creates the window

local b = w:CreateFolder("OOOGA BOOGA") -- Creates the folder(U will put here your buttons,etc)

b:Bind("On",Enum.KeyCode.Z,function() --Default bind
getgenv().Ks = true
while Ks == true do
   wait()
keypress(0x46) -- spacebar
wait()
keyrelease(0x46)
end

end)

b:Bind("Off",Enum.KeyCode.X,function() --Default bind
getgenv().Ks = false
end)