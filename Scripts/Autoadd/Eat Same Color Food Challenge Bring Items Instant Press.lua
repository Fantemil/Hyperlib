--[[
   ______      ________ _____  _    _           ____________    _____  ______ ____  ____  ______ _    _  _____  _____       _______ ____  _____  
  / __ \ \    / /  ____|  __ \| |  | |   /\    |___  /  ____|  |  __ \|  ____/ __ \|  _ \|  ____| |  | |/ ____|/ ____|   /\|__   __/ __ \|  __ \ 
 | |  | \ \  / /| |__  | |__) | |__| |  /  \      / /| |__     | |  | | |__ | |  | | |_) | |__  | |  | | (___ | |       /  \  | | | |  | | |__) |
 | |  | |\ \/ / |  __| |  _  /|  __  | / /\ \    / / |  __|    | |  | |  __|| |  | |  _ <|  __| | |  | |\___ \| |      / /\ \ | | | |  | |  _  / 
 | |__| | \  /  | |____| | \ \| |  | |/ ____ \  / /__| |____   | |__| | |___| |__| | |_) | |    | |__| |____) | |____ / ____ \| | | |__| | | \ \ 
  \____/   \/   |______|_|  \_\_|  |_/_/    \_\/_____|______|  |_____/|______\____/|____/|_|     \____/|_____/ \_____/_/    \_\_|  \____/|_|  \_\
]]

setclipboard("https://discord.gg/7dPGrU56tp")
game:GetService("StarterGui"):SetCore("SendNotification", {
 Title    = "Credit By Tora IsMe",
 Text     = "Discord Link Has Copied",
 Duration = 5
})

local function L_1_func()
 local L_5_ = game:GetService("Workspace").food:GetDescendants()
 for L_6_forvar0, L_7_forvar1 in pairs(L_5_) do
  if L_7_forvar1:IsA("BasePart") and L_7_forvar1.Name == "ProximityPromptPart" then
   L_7_forvar1.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  end
 end
end

local function L_2_func()
 for L_8_forvar0, L_9_forvar1 in pairs(workspace:GetDescendants()) do
  if L_9_forvar1.ClassName == "ProximityPrompt" then
   L_9_forvar1.HoldDuration = 0
  end
 end
end

local L_3_ = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/0x"))()
local L_4_ = L_3_:Window("Eat Same Color Food")
L_4_:Button("Bring Items", L_1_func)
L_4_:Button("Instant Press", L_2_func)
L_4_:Label("YT: Tora IsMe")