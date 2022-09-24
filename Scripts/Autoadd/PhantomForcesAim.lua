getgenv().Config = {
    CircleSides = 24,
    CircleTransparency = 0.7,
    CircleVisible = true,
    CircleSize = 110,
    CircleThickness = 1,
    CircleColor = Color3.fromRGB(150,0,0),
    AimSmoothing = 6,
}
if Executed then
    return
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/LittleDyingDuck/PhantomForcesResources/main/ab.lua"))()
getgenv().Executed = true