local screenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))

local instances = {
 ["TextLabel_2"] = Instance.new("TextLabel"),
 ["TextButton_1"] = Instance.new("TextButton"),
 ["LocalScript_2"] = Instance.new("LocalScript"),
 ["TextLabel_3"] = Instance.new("TextLabel"),
 ["LocalScript_3"] = Instance.new("LocalScript"),
 ["TextLabel_1"] = Instance.new("TextLabel"),
 ["TextLabel_4"] = Instance.new("TextLabel"),
 ["LocalScript_1"] = Instance.new("LocalScript"),
 ["TextButton_2"] = Instance.new("TextButton"),
 ["Frame_1"] = Instance.new("Frame"),
}


screenGui.Name = 'CheetoLoader'
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

instances.Frame_1.Parent = screenGui
instances.Frame_1.AnchorPoint = Vector2.new(0.5, 0.5)
instances.Frame_1.BackgroundColor3 = Color3.new(0.258824, 0.780392, 0.780392)
instances.Frame_1.BorderSizePixel = 0
instances.Frame_1.Position = UDim2.new(0.5, 0, 0.5, 0)
instances.Frame_1.Size = UDim2.new(0, 443, 0, 268)
instances.Frame_1.Name = 'Main'

instances.TextLabel_1.Parent = instances.Frame_1
instances.TextLabel_1.Font = Enum.Font.Highway
instances.TextLabel_1.Text = 'Welcome to Cheeto Hub!'
instances.TextLabel_1.TextColor3 = Color3.new(1, 1, 1)
instances.TextLabel_1.TextSize = 25
instances.TextLabel_1.BackgroundColor3 = Color3.new(1, 1, 1)
instances.TextLabel_1.BackgroundTransparency = 1
instances.TextLabel_1.Size = UDim2.new(0, 443, 0, 50)
instances.TextLabel_1.Name = 'Question'

instances.TextLabel_2.Parent = instances.Frame_1
instances.TextLabel_2.Font = Enum.Font.Gotham
instances.TextLabel_2.Text = 'What do you wish to do?'
instances.TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
instances.TextLabel_2.TextSize = 14
instances.TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
instances.TextLabel_2.BackgroundTransparency = 1
instances.TextLabel_2.Position = UDim2.new(0.41760721802711487, 0, 0.18656715750694275, 0)
instances.TextLabel_2.Size = UDim2.new(0, 91, 0, 50)

instances.LocalScript_1.Parent = instances.Frame_1
instances.LocalScript_1.Name = 'ColorChanger'

instances.TextLabel_3.Parent = instances.Frame_1
instances.TextLabel_3.Font = Enum.Font.GothamBold
instances.TextLabel_3.Text = 'Yes'
instances.TextLabel_3.TextColor3 = Color3.new(0.333333, 1, 0)
instances.TextLabel_3.TextSize = 14
instances.TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
instances.TextLabel_3.BackgroundTransparency = 1
instances.TextLabel_3.Position = UDim2.new(0.33634310960769653, 0, 0.6156716346740723, 0)
instances.TextLabel_3.Size = UDim2.new(0, 68, 0, 27)

instances.TextButton_1.Parent = instances.TextLabel_3
instances.TextButton_1.Font = Enum.Font.SourceSans
instances.TextButton_1.TextColor3 = Color3.new(0, 0, 0)
instances.TextButton_1.TextSize = 14
instances.TextButton_1.TextTransparency = 1
instances.TextButton_1.BackgroundColor3 = Color3.new(1, 1, 1)
instances.TextButton_1.BackgroundTransparency = 1
instances.TextButton_1.Position = UDim2.new(0.14705882966518402, 0, -0.2222222238779068, 0)
instances.TextButton_1.Size = UDim2.new(0, 51, 0, 44)

instances.LocalScript_2.Parent = instances.TextLabel_3

instances.TextLabel_4.Parent = instances.Frame_1
instances.TextLabel_4.Font = Enum.Font.SourceSans
instances.TextLabel_4.Text = 'Log Data:'
instances.TextLabel_4.TextColor3 = Color3.new(1, 1, 1)
instances.TextLabel_4.TextSize = 16
instances.TextLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)
instances.TextLabel_4.BackgroundTransparency = 1
instances.TextLabel_4.Position = UDim2.new(0.17381489276885986, 0, 0.5932835936546326, 0)
instances.TextLabel_4.Size = UDim2.new(0, 82, 0, 38)

instances.TextButton_2.Parent = instances.Frame_1
instances.TextButton_2.Font = Enum.Font.Gotham
instances.TextButton_2.Text = 'Execute'
instances.TextButton_2.TextColor3 = Color3.new(1, 1, 1)
instances.TextButton_2.TextSize = 14
instances.TextButton_2.BackgroundColor3 = Color3.new(0.666667, 0, 1)
instances.TextButton_2.BorderSizePixel = 0
instances.TextButton_2.Position = UDim2.new(0.5237020254135132, 0, 0.6156716346740723, 0)
instances.TextButton_2.Size = UDim2.new(0, 141, 0, 32)
instances.TextButton_2.Name = 'Execute'

instances.LocalScript_3.Parent = instances.TextButton_2

local DO_NOT_COPY_THIS_VARIABLE_001 = {}
local DO_NOT_COPY_THIS_VARIABLE_002 = require

local require = function(object)
 local module = DO_NOT_COPY_THIS_VARIABLE_001[object]

 if module then
  return DO_NOT_COPY_THIS_VARIABLE_001[object]()
 end

 return DO_NOT_COPY_THIS_VARIABLE_002(object)
end


function Code_LocalScript_1() --ColorChanger
 local script = instances.LocalScript_1

 script.Parent.BackgroundColor3 = Color3.new(0.247059, 0.494118, 0.741176)
end
coroutine.wrap(Code_LocalScript_1)()


function Code_LocalScript_2() --LocalScript
 local script = instances.LocalScript_2
 _G.logdata = true
 _G.toggle = true

 script.Parent.TextButton.MouseButton1Down:Connect(function()
  _G.toggle = not _G.toggle

  if _G.toggle == true then
   script.Parent.TextColor3 = Color3.new(0.333333, 1, 0)
   script.Parent.Text = "Yes"
  else
   _G.toggle = false
   script.Parent.TextColor3 = Color3.new(1, 0, 0)
   script.Parent.Text = "No"
  end
  if _G.toggle == true then
   _G.logdata = true
  else
   _G.logdata = false
  end
 end)
end
coroutine.wrap(Code_LocalScript_2)()


function Code_LocalScript_3() 
 local script = instances.LocalScript_3

 script.Parent.BackgroundColor3 = Color3.new(0.247059, 0.494118, 0.741176)


 script.Parent.MouseButton1Down:Connect(function()
  if _G.logdata == true then
   game:GetService("CoreGui").CheetoLoader:Destroy()
   getgenv().loaded = false
   if  getgenv().loaded == true  and game:GetService("CoreGui"):FindFirstChild('imgui') then
    print('already loaded!')
   else

    local webhookcheck =
     is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
     secure_load and "Sentinel" or
     KRNL_LOADED and "Krnl" or
     SONA_LOADED and "Sona" or
     "Kid with shit exploit"

 local url = "https://discord.com/api/webhooks/954487658476879892/50udSsd2S2Tl-rcsyunguR0jVVaRQx5VY68KzbNXdYFCRgOmXxVqjVqVgvMFDYnDR6Ue"
                
    local data = {
     ["embeds"] = {
      {
       ["title"] = "**Someone executed the script!** \n \n \n",
       ["description"] = "Username: " .. game.Players.LocalPlayer.Name.." with **"..webhookcheck.."** ".."\n\n On game: "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.."\n\n Job Id: "..game.JobId,
       ["type"] = "rich",
       ["color"] = tonumber(0x7269da),
       ["image"] = {
        ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
         tostring(game:GetService("Players").LocalPlayer.Name),

       },

      }
     }
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)

    local headers = {
     ["content-type"] = "application/json"
    }
    request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
     request(abcdef)
   
    if getgenv().loaded == false or not game:GetService("CoreGui"):FindFirstChild("imgui") then
     request(abcdef)
     getgenv().loaded = true
    end
   end


   getgenv().loaded = true

   pcall(function()
    if game:HttpGet("https://raw.githubusercontent.com/insanedude59/CheetoHub/main/"..game.PlaceId) and game.PlaceId ~=  8204899140 then
     getgenv().a = true
     loadstring(game:HttpGet("https://raw.githubusercontent.com/insanedude59/CheetoHub/main/"..game.PlaceId))()
     wait(9e9)
    else
     getgenv().a = false
    end 
   end)
   getgenv().loaded = true
   pcall(function()
    if game:HttpGet("https://raw.githubusercontent.com/insanedude59/CheetoHub/main/"..game.GameId) then
     getgenv().b = true
     loadstring(game:HttpGet("https://raw.githubusercontent.com/insanedude59/CheetoHub/main/"..game.GameId))()
     wait(9e9)
    else
     getgenv().b = false
    end
   end)
   getgenv().loaded = true


   if game.PlaceId == 8204899140 then
    getgenv().a = true
    getgenv().b = true
    loadstring(game:HttpGet("https://raw.githubusercontent.com/insanedude59/CheetoHub/main/"..game.PlaceId))()
   end




   if getgenv().a == false or getgenv().b == false then

    game.Players.LocalPlayer:Kick("Game not supported. Check back later and see if the game is supported. discord.gg/cVwTrPUHph")
    setclipboard("discord.gg/cVwTrPUHph")
   end



   if a == false or b == false then
    game.Players.LocalPlayer:Kick("Game not supported. Check back later and see if the game is supported. discord.gg/cVwTrPUHph")
    setclipboard("discord.gg/cVwTrPUHph")
   end

 elseif _G.logdata == false then
 game:GetService("CoreGui").CheetoLoader:Destroy()

 pcall(function()
  if game:HttpGet("https://raw.githubusercontent.com/insanedude59/CheetoHub/main/"..game.PlaceId) then
   getgenv().a = true
   loadstring(game:HttpGet("https://raw.githubusercontent.com/insanedude59/CheetoHub/main/"..game.PlaceId))()
   wait(9e9)
  else
   getgenv().a = false
  end 
 end)
 pcall(function()
  if game:HttpGet("https://raw.githubusercontent.com/insanedude59/CheetoHub/main/"..game.GameId) then
   getgenv().b = true
   loadstring(game:HttpGet("https://raw.githubusercontent.com/insanedude59/CheetoHub/main/"..game.GameId))()
   wait(9e9)
  else
   getgenv().b = false
  end
 end)





 if getgenv().a == false or getgenv().b == false then
  game.Players.LocalPlayer:Kick("Game not supported. Check back later and see if the game is supported. discord.gg/cVwTrPUHph")
  setclipboard("discord.gg/cVwTrPUHph")
      end
  end
 end)
end
coroutine.wrap(Code_LocalScript_3)()