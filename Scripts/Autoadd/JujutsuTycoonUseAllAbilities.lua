local LocalPlayer = game:GetService("Players").LocalPlayer;
local ClientHandler = require(LocalPlayer.Character.Moves.SkillsHandler.ClientHandler);
local GetMouse = LocalPlayer:GetMouse();

ClientHandler.HollowPurple(LocalPlayer.Character);
ClientHandler.DivergentFist(LocalPlayer.Character, GetMouse);
ClientHandler.BlackFlash(LocalPlayer.Character, GetMouse);
ClientHandler.Red(nil, LocalPlayer.Character);
ClientHandler.BowShot(LocalPlayer.Character, GetMouse);
ClientHandler.TripleWoods(GetMouse);