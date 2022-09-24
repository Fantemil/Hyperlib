local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("oooga booga") -- Creates the window

local b = w:CreateFolder("dababy") -- Creates the folder(U will put here your buttons,etc)

b:Button("nuke the giant",function()
for i,v in pairs(game.Workspace:GetChildren()) do
if v.Name == "Giant_1" or v.Name == "Giant_2" or v.Name == "Giant_3" or v.Name == "Giant_4" or v.Name == "Giant_5" or v.Name == "Giant_6" or v.Name == "Giant_7"
or v.Name == "Giant_8" or v.Name == "Giant_9" or v.Name == "Giant_10"  or v.Name == "Giant_11" then
for i = 0,2500 do
local args = {
   [1] = {
       [1] = {
           [1] = v.Name,
           [2] = 1,
           [3] = 0.014119848916357937
       },
       [2] = {
           [1] = false,
           [2] = false,
           [3] = false
       }
   }
}

workspace.__THINGS.__REMOTES.giant_dealdamage:FireServer(unpack(args))
end
end
end
end)