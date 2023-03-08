local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
 Name = "Title",
 LoadingTitle = "Loading Title",
 LoadingSubtitle = "Loading Subtitle",
 ConfigurationSaving = {
  Enabled = true,
  FolderName = "Soggyware",
  FileName = "Game"
 },
 Discord = {
  Enabled = true,
  Invite = "bBZxdAhS9J",
  RememberJoins = true
 }
})

loadstring(game:HttpGet("https://soggyhubv2.vercel.app/Libs/RayfieldTabs.lua"))()(Window)