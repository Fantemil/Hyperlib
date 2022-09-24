local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("its not ooga booga")
local b = w:CreateFolder("ITS OOOGA BOOGA")
b:Button("nuke the scaries",function()
for i,v in pairs(game.Workspace.__THINGS.Monsters:GetChildren()) do
local args = {
   [1] = {
       [1] = {
           [1] = {
               [1] = {
                   [1] = v,
                   [2] = math.huge
               }
           }
       },
       [2] = {
           [1] = false
       }
   }
}

workspace.__THINGS.__REMOTES.mobdodamage:FireServer(unpack(args))
end
end)