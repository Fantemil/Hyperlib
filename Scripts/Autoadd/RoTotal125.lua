local RoTotal = {
    ["HttpPost"] = {
     ["Allowed"] = false,
     ["WhitelistedURLs"] = {},
     ["BlacklistedURLs"] = {}
    },
    ["HttpGet"] = {
        ["Allowed"] = true,
        ["BlacklistedURLS"] = {
            "http://",
            "repl"
         } -- Keep the http:// as its most replits and projects that steal your information that begin with http://
    },
    ["KeyPresses"] = {
      ["Allowed"] = true,
      ["BlacklistedKeys"] = {
          "2F",
          Enum.KeyCode.Slash
      } -- To add a key enter its Enum.KeyCode and its hexadicemal, example if you want to blacklist A do Enum.KeyCode.A, 0x41, (hexadicemal)
      --(You can use this to get the hexadicemal https://www.rapidtables.com/convert/number/ascii-to-hex.html)
    },
    ["Robux"] = {
       ["AllowPromptPurchases"] = false, -- This option should be kept on false!, Unless you're trying to buy a gamepass yourself and this script isnt letting you.
       ["ShowCreators"] = true -- When this option is on, if a scammer tries to prompt a purchase it will show their username and user id.
    },
    ["Chat"] = {
        ["SayMessageRequest"] = {
          ["Allowed"] = false,
          ["BlacklistedWords"] = {} -- If you chose to enable SayMessageRequest blacklist some common swear words to prevent yourself from getting chat banned.
        },
        ["SendAsync"] = {
           ["Allowed"] = false, -- SendAsync is a method that sends messages in the new TextChatService chat, Enable this if you think the script you're executing is safe.
           ["BlacklistedWords"] = {} -- Enter in some words in case you want to allow this, especially swear words.
        }
    }
}
local hookf = assert(hookfunction, "Your executor does not support a required function, Please consider getting a new executor, DO NOT CONSIDER THIS SCRIPT EXECUTED.")
local keyp = assert(keypress, "Your executor does not support the keypress function.")
hookf(warn, newcclosure(function(m)
makewarn(m)
end))
hookf(error, newcclosure(function(m)
makeerror(m)
end))
local LocalPlayer = game:GetService("Players").LocalPlayer
if game:GetService("TextChatService").ChatVersion ~= Enum.ChatVersion.TextChatService then
    function makemessage(message)
        msg = tostring(message)
        game:GetService("StarterGui"):SetCore(
            "ChatMakeSystemMessage",
            {
                Text = msg,
                Color = Color3.fromRGB(255, 89, 98),
                Font = Enum.Font.GothamMedium,
                FontSize = 16
            }
        )
    end
    function makewarn(message)
        msg = tostring(message)
        game:GetService("StarterGui"):SetCore(
            "ChatMakeSystemMessage",
            {
                Text = "[WARN]\n" .. msg,
                Color = Color3.fromHex("#fdfd96"),
                Font = Enum.Font.GothamMedium,
                FontSize = 16
            }
        )
    end
    function makeerror(message)
        msg = tostring(message)
        game:GetService("StarterGui"):SetCore(
            "ChatMakeSystemMessage",
            {
                Text = "[ERROR]\n" .. msg,
                Color = Color3.fromRGB(125, 12, 23),
                Font = Enum.Font.GothamMedium,
                FontSize = 16
            }
        )
    end
    ChatBar = LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar
    ChatMain = LocalPlayer.PlayerScripts.ChatScript.ChatMain
    local s, e = pcall(function()
     SMR = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
    end)
    if not s then
     warn("SayMessageRequest was not found! Please send a message in chat so SayMessageRequest can be found.")
    end
    lastText = ""
    ChatBar.Focused:Connect(function()
     repeat lastText = ChatBar.Text task.wait() until not ChatBar.Focused
    end)
    else
     function makeMessage(msg)
        msg = tostring(msg)
        if game:GetService("TextChatService").TextChannels:FindFirstChild("RBXGeneral") then
            game:GetService("TextChatService").TextChannels:FindFirstChild("RBXGeneral"):DisplaySystemMessage(msg)
        end
    end
    function makeWarn(msg)
        msg = tostring(msg)
        if game:GetService("TextChatService").TextChannels:FindFirstChild("RBXGeneral") then
            game:GetService("TextChatService").TextChannels:FindFirstChild("RBXGeneral"):DisplaySystemMessage(
                "[WARN] " .. msg
            )
        end
    end
    function makeError(msg)
        makeMessage("[ERROR]\n" .. msg)
    end
    end

local x, old;
x = hookf(keyp, function(key)
 if table.find(RoTotal.KeyPresses.BlacklistedKeys, key) then
   warn("Script attempted to press the hexadicemal key",tostring(key)..","," Attempt denied")
 end
 return x(key)
end)
old = hookmetamethod(game,"__namecall",newcclosure(function(Self,...)
 local Args = {...}
 local method = getnamecallmethod()
 if method:lower():sub(1, 6) == "Prompt" and not RoTotal.Robux.AllowPromptPurchases then
  if RoTotal.Robux.ShowCreators then
   local creator = game:GetService("MarketplaceService"):GetProductInfo(Args[2]).Creator.CreatorTargetId
   e = string.format("/Extra Information\\\nCreator: @%s\nCreator ID: %d", game:GetService("Players"):GetNameFromUserIdAsync(creator), creator)
   end
  return warn(
   string.format(
     "%s called %s, This method is used in robux stealers, Be careful!\n%s", (getcallingscript()), method, e
    )
   )
  elseif method:sub(1,8) == "HttpPost" and not RoTotal.HttpPost.Allowed then
  BLACK_LISTED, WHITE_LISTED = false, false
  for i, v in RoTotal.HttpPost.BlacklistedURLs do
  if v == Args[1] then
  BLACK_LISTED = true
  end
  end
  for i, v in RoTotal.HttpPost.WhitelistedURLs do
  if Args[1]:find(v) then
  WHITE_LISTED = true
  end
  end
  if BLACK_LISTED or not WHITE_LISTED then
  return warn(
  string.format(
    "%s tried to HttpPost to the following URL: %s",
    getcallingscript():GetFullName(), Args[1]
   )
  )
  end
  elseif method:sub(1,7) == "HttpGet" then
   if RoTotal.HttpGet.Allowed then
    for i, v in RoTotal.HttpGet.BlacklistedURLS do
    if Args[1]:find(v) then BLACK_LISTED1 = true
    end
   end
   if BLACK_LISTED1 then return warn(string.format("%s Tried to send a HttpGet request to the URL %s, URL was found in the blacklisted urls table.", getcallingscript():GetFullName(), Args[1]))
   end
  else
  return warn(string.format("%s Tried to send an HttpGet request to the URL %s, HttpGet is not allowed therefore the attempt was denied.", getcallingscript():GetFullName(), Args[1]))
  end
  elseif method == "SendAsync" and Self:IsA("TextChannel") then
  BLACK_LISTED2 = false
  BLACKLISTEDWORD = ""
  if not RoTotal.Chat.SendAsync.Allowed then return warn(
  getcallingscript():GetFullName(), "Tried to call SendAsync with the text",Args[1],"but SendAsync is not allowed, Attempt denied."
  ) end
  if RoTotal.Chat.SendAsync.Allowed then
  for i, v in RoTotal.Chat.SendAsync.BlacklistedWords do
  if Args[1]:find(v) then BLACK_LISTED2 = true BLACKLISTEDWORD = v end
  end
  if BLACK_LISTED2 then
  return warn(
   string.format(
   "%s Tried to SendAsync with the blacklisted word %s!\nAttempt denied.", getcallingscript():GetFullName(), BLACKLISTEDWORD  
   )
  )
  end
  end
  elseif Self == SMR and Args[1] ~= lastText then
   BLACK_LISTED3 = false
   if RoTotal.Chat.SayMessageRequest.Allowed then
   for i, v in RoTotal.Chat.SayMessageRequest.BlacklistedWords do
   if Args[1]:find(v) then
     BLACK_LISTED3 = true
     BLACKLISTEDWORD2 = v
    end
   end
   if BLACK_LISTED3 then
    return warn(
     string.format(
     "%s Fired SayMessageRequest with a blacklisted message (%s), the blacklisted word that blocked the message was '%s'\nChannel: %s.", getcallingscript():GetFullName(), Args[1], BLACKLISTEDWORD2, Args[2])
    )
    end
   else
    return warn(
     string.format(
     "%s Tried to fire SayMessageRequest with the message %s, in channel %s.\nIf you think this message would not get you banned go ahead and allow SayMessageRequest.Allowed, Otherwise keep it off and add this message to the BlacklistedWords table.", getcallingscript():GetFullName(), Args[1], Args[2]
     )
    )
   end
  elseif method == 'FireServer' and lastText == Args[1] and getcallingscript() == ChatMain then
   SMR = Self
   warn("SayMessageRequest has been found!\nYou will no longer have to worry about chat bans.")
  elseif method == "SendKeyEvent" and Self == game:GetService("VirtualInputManager") then
   if not RoTotal.KeyPresses.Allowed or table.find(RoTotal.KeyPresses.BlacklistedKeys, Args[2]) then
    return warn(
     string.format(
      "%s Tried to send a keypress using VirtualInputManager, Either the KeyPresses option was not allowed or the Keypress was found in the blacklisted keys table, Key: %s", getcallingscript():GetFullName(), tostring(Args[2])
     )
    )
   end
  elseif method == 'GetClientId' then
   return warn(string.format("%s Tried to get your Hardware-ID attempt denied; Please do not re-execute the last script", getcallingscript():GetFullName()))
  end
  return old(Self,...)
end))