local Players = game:GetService("Players")

local placeid = game.PlaceId
local placev = game.PlaceVersion
local placecr = game:GetService("MarketplaceService"):GetProductInfo(placeid).Created
local placeup = game:GetService("MarketplaceService"):GetProductInfo(placeid).Updated
local placena = game:GetService("MarketplaceService"):GetProductInfo(placeid).Name

local grav = game.Workspace.Gravity
local time = game.Workspace.DistributedGameTime
local countplr = #Players:GetPlayers()

local respawnti = game.Players.RespawnTime
local maxplr = game.Players.MaxPlayers
local canres = game.Players.CharacterAutoLoads

local creatorna = game:GetService("MarketplaceService"):GetProductInfo(placeid).Creator.Name
local creatorid = game:GetService("MarketplaceService"):GetProductInfo(placeid).Creator.Id

local function printPlayerInfo(player)
    local Age = player.AccountAge
    local name = player.Name
    local display = player.DisplayName
    local Us = player.UserId
    local charap = player.CharacterAppearance
    local charapid = player.CharacterAppearanceId
    local teamch = player.TeamColor
    local locale = player.LocaleId
    local memsh = player.MembershipType
    
    local health = player.Character.Humanoid.Health
    local maxh = player.Character.Humanoid.MaxHealth
    local speed = player.Character.Humanoid.WalkSpeed
    local jump = player.Character.Humanoid.JumpPower
    local jumph = player.Character.Humanoid.JumpHeight
    local hiph = player.Character.Humanoid.HipHeight
    local cframe = player.Character.HumanoidRootPart.CFrame
    local vector = player.Character.HumanoidRootPart.Position
    local state = player.Character.Humanoid:GetState()
    
    local backpack = player.Backpack
    local toolsnum = 0
    
   local toolCount = 0
    for _, item in pairs(player.Backpack:GetChildren()) do
        if item:IsA("Tool") then
            toolCount = toolCount + 1
        end
    end
   toolsnum = toolCount
   
  local toolname = ""
    local character = player.Character
    if character and character:FindFirstChildOfClass("Tool") then
        toolname = character:FindFirstChildOfClass("Tool").Name
    else
        toolname = "Nothing"
    end
   
    local animation = ""
local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
if humanoid then
  local animator = humanoid:FindFirstChildOfClass("Animator")
  if animator then
    local playingAnimation = animator:GetPlayingAnimationTracks()[1].Animation
    if playingAnimation then
      animation = playingAnimation.AnimationId
    else
      animation = "Animation doesn't play"
    end
  else
    animation = "Animation not found"
  end
else
  animation = "Player not found"
end
    
    local playerCountry = ""
  if player == game.Players.LocalPlayer then
    playerCountry = game:GetService("LocalizationService"):GetCountryRegionForPlayerAsync(player)
    else
    playerCountry = "This possible only on local player"
  end
  
    local device = ""
    UserInputService = game:GetService("UserInputService")

    if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled and not UserInputService.MouseEnabled then
        device = "Mobile"
    elseif not UserInputService.TouchEnabled and UserInputService.KeyboardEnabled and UserInputService.MouseEnabled then
        device = "Computer"
    else
        device = "Unknown"
    end

    print("Player Name:", name, "(", display, ")")
    print("Client â Account Age:", Age, "Days", ";Id:", Us, ";Character Appearance:", charap, ";DeviceType:", device, ";Player Contry:", playerCountry, ";Team Chat Color:", teamch, ";Locale Id:", locale, ";Membership Type:", memsh)
   print("Humanoid â Health:", health, "/" , maxh ,";Walk Speed:", speed, ";Jump Power:", jump, ";Jump Height:", jumph, ";Hip Height:", hiph, ";CFrame:", cframe, ";Position:", vector, ";Animation Id:", animation, ";State Type:", state, "\n")
   print("Backpack â Number of Tools:", toolsnum, ";Equipped Tool Name:", toolname)
end

print("Place info â Place Id:", placeid, ";Place Version:", placev, ";Place Name:", placena, ";Created:", placecr, ";Last Update:", placeup, ";Respawn Time:", respawnti, ";Players on server:", countplr, "/", maxplr, ";Can Respawn:", canres, ";Global Gravity:", grav, ";Your presence:", time)
print("Place Creator info â Creator name:", creatorna, ";Creator Id:", creatorid, "\n")
for _, player in ipairs(Players:GetPlayers()) do
    printPlayerInfo(player)
end