local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/turtle"))()
local w = library:Window("Anime RNG | Agreed69")

local real = game.Players.LocalPlayer.QuickRoll.Value

w:Toggle("Quick Roll", real, function(bool)
    game.Players.LocalPlayer.QuickRoll.Value = bool
end)

local replicatedStorage = game:GetService("ReplicatedStorage")
local potionCycle = replicatedStorage:WaitForChild("PotionCycle")

local toggles = {}

for _, folder in ipairs(potionCycle:GetChildren()) do
    toggles[folder.Name] = false

    w:Toggle(folder.Name, false, function(bool)
        toggles[folder.Name] = bool

        if bool then
            _G.loop = true
            while _G.loop and toggles[folder.Name] do
                game:GetService("ReplicatedStorage").Remotes.PurchasePotion:FireServer(folder.Name)
                game:GetService("ReplicatedStorage").Remotes.UsePotion:FireServer(folder.Name)
                wait()
            end
        else
            _G.loop = false
        end
    end)
end

local emotesAnims = replicatedStorage:WaitForChild("EmotesAnims")

local emoteNames = {}
for _, anim in ipairs(emotesAnims:GetChildren()) do
    table.insert(emoteNames, anim.Name)
end

local selectedEmote = emoteNames[1]
local currentAnimationTrack

w:Dropdown("Select Emote", emoteNames, function(selected)
    selectedEmote = selected
end)

w:Button("Play Emote", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")

    if humanoid then
        local emote = emotesAnims:FindFirstChild(selectedEmote)
        if emote then
            if currentAnimationTrack then
                currentAnimationTrack:Stop()
            end
            local animation = Instance.new("Animation")
            animation.AnimationId = emote.AnimationId
            currentAnimationTrack = humanoid:LoadAnimation(animation)
            currentAnimationTrack:Play()
        end
    end
end)

w:Button("Stop Emote", function()
    if currentAnimationTrack then
        currentAnimationTrack:Stop()
        currentAnimationTrack = nil
    end
end)