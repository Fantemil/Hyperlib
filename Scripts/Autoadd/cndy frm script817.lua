repeat
    wait()
until game:IsLoaded()

task.wait(3)


_G.key = 'key here'
loadstring(game:HttpGet(("https://raw.githubusercontent.com/catblox1346/Extra-beta-scripts/refs/heads/main/InstantCandyFarm"),true))()