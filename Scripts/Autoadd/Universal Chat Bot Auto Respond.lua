local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

--I based this script on ChatBot, but with the SimSimi api, therefore it has more accurate and fun answers XD

--Modify these parameters as you want--

local idioma = "en" --Here is the language you want SimSImi to respond to, es for "EspaÃ±ol", en for "English"

local chatfuel = "True" --If you want me to censor the swearing "True" or "False"

--From here down I don't recommend moving him if you don't know Lua

local function mensajepro(mensaje, jugador) --In this function the magic happens
    local texto = mensaje
    local Responde = game:HttpGet("https://api.simsimi.net/v2/?text="..texto.."&lc="..idioma.."&cf="..chatfuel) --The SimSImi api is called
    local datos = HttpService:JSONDecode(Responde)
    
   wait()
   
   game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(jugador.." "..datos.success, "All") --A message is sent with the response of SimSImi
end


Players.PlayerChatted:Connect(function(type, plr, message) --When a player speaks
    for _,plrs in pairs(game.Players:GetPlayers()) do
 
 if (Players.LocalPlayer.Character.HumanoidRootPart.Position - plrs.Character.HumanoidRootPart.Position).magnitude <= 10 then --If the player is nearby, SimSimi will read their message.
  if plr.Name == plrs.Name then
      mensajepro(message, plr.Name) --The function is called
  end
 end
 
end
end)