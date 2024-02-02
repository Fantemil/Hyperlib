getgenv().Toggy = {
    Toggled = true, -- Toggle Duh
    ShiftAmount = 100000, -- amount of cash until game shutdown
    BreakTime = 6, -- amount of times it devlivers pizzas until it takes a 120 second break
    Status = false, -- Shows a small status of what it is doing
    SecondsToWait = 120, -- Time To wait
    AntiStink = true, -- Client Particles get disabled
    LowRender = true, -- Lowers Fps Good for farmming overnight and to run in background recommended
    KeySystem = true -- optional
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/littlegui/main/PPInMyPants"))()