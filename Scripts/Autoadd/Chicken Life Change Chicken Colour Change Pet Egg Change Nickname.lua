local ChickenColor = "" --ChickenColour
local PetEgg = "DevilEgg" --Egg
getgenv().GetColourPrint = false;   --checkConsole
getgenv().GetPetEggPrint = false;    --CheckConsole
local Nick = "" --CustomNickname
getgenv().RGBchick = true;     --Working? (Change your chicken color constantly RGB not ChickenColor, may use more prcoessing power for smoother change) Client Sided?/You have to rexecute when you die, since the RGB won't loop when you die and I'm getting pissed off.

if getgenv().RGBchick then
    local players = game:GetService("Players")
    local localPlayer = players.LocalPlayer
    while wait() do
        if localPlayer.Character then
            local chickModule = localPlayer.Character:FindFirstChildOfClass("MeshPart")
            
            local partsToColor = {
                chickModule,
                localPlayer.Character.Head,
                localPlayer.Character.Torso,
                localPlayer.Character["Left Arm"],
                localPlayer.Character["Right Arm"],
                localPlayer.Character["Left Leg"],
                localPlayer.Character["Right Leg"],
                localPlayer.Character:FindFirstChild("VisibleBeak", true)
            }
            
            local upperArms = {
                localPlayer.Character.Torso:FindFirstChild("RightUpperArm"),
                localPlayer.Character.Torso:FindFirstChild("LeftUpperArm")
            }
            
            for _, part in ipairs(partsToColor) do
                if part and part:IsA("BasePart") then
                    part.Color = Color3.new(1, 1, 1)
                end
            end
            
            while wait() do
                for hue = 0, 1, 0.005 do
                    local color = Color3.fromHSV(hue, 1, 1)
                    for _, part in ipairs(partsToColor) do
                        if part and part:IsA("BasePart") then
                            part.Color = color
                        end
                    end
                    for _, part in ipairs(upperArms) do
                        if part and part:IsA("BasePart") then
                            part.Color = color
                        end
                    end
                    if not getgenv().RGBchick then
                        break
                    end
                end
            end
        end
    end
end

getgenv().Egg = PetEgg
local args = {
    [1] = getgenv().Egg
}
game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("_Index"):WaitForChild("vorlias_net@3.0.4"):WaitForChild("net"):WaitForChild("_NetManaged"):WaitForChild("EggType"):FireServer(unpack(args))

getgenv().ChangeNick = Nick
local args = {
    [1] = getgenv().ChangeNick
}
game:GetService("ReplicatedStorage"):WaitForChild("Player"):WaitForChild("ChangeName"):FireServer(unpack(args))

local eggs = {"Egg", "ChickEgg", "FairyEgg", "AngelEgg", "MushroomEgg","FrogEgg", "BubbleEgg", "CowEgg", "HoloEgg", "HeartEgg", "DevilEgg", "KingEgg", "CatEgg"}
if getgenv().GetPetEggPrint == true then
    warn("Case Sensetive")
    for i, text in ipairs(eggs) do
        print(i .. ": " .. text)
    end
end

local Colours = {"Black", "Grey", "White", "Tan", "Yellow", "PaleOrange", "Red", "ReallyRed", "Orange", "DarkBrown", "Brown", "Mauve", "PalePurple", "FlowerPurple", "ReallyBlue", "BabyBlue", "PaleBlue", "Green", "PaleGreen", "LightGreen", "YellowGreen", "NaturalPink", "Rose", "Bubblegum"}
if getgenv().GetColourPrint == true then
    warn("Case Sensetive")
    for i, text in ipairs(Colours) do
        print(i .. ": " .. text)
    end
end

getgenv().Color = ChickenColor
      local args = {
         [1] = getgenv().Color,
      }
game:GetService("ReplicatedStorage"):WaitForChild("Player"):WaitForChild("ColorEvent"):FireServer(unpack(args))