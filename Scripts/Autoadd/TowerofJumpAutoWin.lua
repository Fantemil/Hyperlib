local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Tower of SHIT")

local b = w:CreateFolder("Main functions")


b:Button("Auto win ig",function()
   while wait() do
       local player = game.Players.LocalPlayer.Character.HumanoidRootPart
       local CFramepos = CFrame.new(31.9999943, 223.28833, 142.485474)
       player.CFrame = CFramepos
       wait(1)
   end
end)

b:DestroyGui()