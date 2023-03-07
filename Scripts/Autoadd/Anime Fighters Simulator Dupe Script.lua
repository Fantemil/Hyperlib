local remote = game:GetService("ReplicatedStorage"):WaitForChild("Remote",100):WaitForChild("SetSettings",100)
local args = {
    [1] = {
        AutoSell = {
            ShinyMythical = false --[[boolean]],
            Mythical = false --[[boolean]],
            Rare = false --[[boolean]],
            Legendary = false --[[boolean]],
            ShinyRare = false --[[boolean]],
            ShinyEpic = false --[[boolean]],
            Epic = false --[[boolean]],
            ShinyLegendary = false --[[boolean]],
            ShinyCommon = false --[[boolean]],
            Common = false --[[boolean]]
        },
        CriticalHits = true --[[boolean]],
        ChatAnnouncements = {
            ShinyMythical = true --[[boolean]],
            Mythical = true --[[boolean]],
            Rare = false --[[boolean]],
            Legendary = true --[[boolean]],
            ShinyRare = false --[[boolean]],
            ShinyEpic = false --[[boolean]],
            Epic = false --[[boolean]],
            ShinyLegendary = true --[[boolean]],
            ShinyCommon = false --[[boolean]],
            Common = false --[[boolean]]
        },
        Flash = true --[[boolean]],
        LowQuality = true --[[boolean]],
        AllPets = false --[[boolean]],
        Performance = false --[[boolean]],
        AutoLock = {
            ShinyMythical = true --[[boolean]],
            Mythical = true --[[boolean]],
            Rare = false --[[boolean]],
            Legendary = true --[[boolean]],
            ShinyRare = false --[[boolean]],
            ShinyEpic = false --[[boolean]],
            Epic = false --[[boolean]],
            ShinyLegendary = true --[[boolean]],
            ShinyCommon = false --[[boolean]],
            Common = false --[[boolean]]
        },
        AutoSellPassives = {workspace},
        SoundsEnabled = true --[[boolean]],
        AutoClicker = true --[[boolean]],
        AutoSprint = false --[[boolean]],
        OtherFX = false --[[boolean]],
        TradesEnabled = true --[[boolean]],
        MusicEnabled = true --[[boolean]],
        BoostPaused = false --[[boolean]],
        OwnFX = true --[[boolean]],
        MagnetPass = true --[[boolean]]
    }
}
remote:FireServer(unpack(args))
warn("Dupeeeee Readyyyyy!!! Dupeeeee Readyyyyy!!! Dupeeeee Readyyyyy!!!")
while task.wait(.1) do
    remote:FireServer(unpack(args))
end