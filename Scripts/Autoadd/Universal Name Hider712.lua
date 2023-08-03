getgenv().Config = {
    Headless = true,

    FakeDisplayName = "FakeDisplayName ",
    FakeName = "FakeName",
    FakeId = 1, -- input id
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/CF-Trail/NameHider/main/MainScript.lua"))()