if not game:IsLoaded() then
    game.IsLoaded:Wait()
end
function String2Table(str)
  if type(str) == "string" then
  local length = #str
  local count = 1
  local String = {}
  while not (#String == length) do
    String[count] = str:sub(count, count)
        count = count + 1
  end
  return String
end
end
local Players = game:GetService("Players")
local LocalPlayer = game:GetService("Players").LocalPlayer
local func = function()
for i, v in next, workspace:GetDescendants() do
if v:IsA("Model") and v.Name == LocalPlayer.Name and Players:GetPlayerFromCharacter(v) == LocalPlayer then
return v
end
end
end


local Character = func()
if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.LegacyChatService then
    chat = "legacy"
        ChatBar = LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar
    chatMain = game:GetService("Players").LocalPlayer.PlayerScripts.ChatScript.ChatMain
    
    lastText = ""
    function makeMessage(message)
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
    function makeWarn(message)
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
    function makeError(message)
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
    makeMessage("Protectio loaded.")
    if not game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents:FindFirstChild("SayMessageRequest") then
    makeError("Could not find SayMessageRequest, Please send a message in chat to fix this and prevent chat bans.")
    else
    SMR = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents:FindFirstChild("SayMessageRequest")
    end
else
    chat = "tcs"
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
    makeMessage("Protectio loaded.")
end
local function gcs()
    if getcallingscript() ~= nil then
        return getcallingscript():GetFullName()
    else
        return "Unknown script"
    end
end
local r = true

Protectio = {
    AllowSendAsync = false,
    HttpOptions = {
    HttpGet = {Enabled = true, allowedURLs = {
      "https://scriptblox.com";
     }
    },
    HttpPost = {Enabled = false, allowedURLs = {}}
  },
    Request = {Enabled = false},
    AllowClientKick = false,
    AllowReportAbuse = false,
    AllowCaptureFocus = false,
    AllowSayMessageRequest = false,
    AllowAccessFriends = false,
    AllowKeyPresses = true
}

OnAttemptDeny = {
    CopyURLs = false,
    CopyReportAbuse = false
}

local hook
hook =
    hookmetamethod(
    game,
    "__namecall",
    function(Self, ...)
        local args, method = {...}, getnamecallmethod()
        if Protectio[1] == false and method == "SendAsync" and Self:IsA("TextChannel") then
            return makeWarn(gcs() .. " tried to SendAsync with the message " .. args[1] .. " in channel " .. Self.Name)
        end
        if
            not Protectio.HttpOptions.HttpGet.Enabled and method:find("HttpGet") then
            if OnAttemptDeny[1] == true then
                setclipboard(args[1])
            end
            
            return makeWarn(
                string.format(
          "%s called %s with the URL %s, HttpGet is not enabled and make sure to put the url in the HttpGet.allowedURLs table if you want to trust the url.", gcs(), method, args[1]
                )
            )
    elseif Protectio.HttpOptions.HttpGet.Enabled and method:find("HttpGet") then
      local url = args[1]
      local dot = url:split(".")
      
      if not table.find(Protectio.HttpOptions.HttpGet.allowedURLs, dot[1]) then
       if OnAttemptDeny[1] == true then
        setclipboard(url)
       end
      return makeWarn(
        string.format(
          "%s called %s with the URL %s, Attempt blocked as the URL was not found in the allowed urls table.\n"
        , gcs(), method, args[1]))
        else
        makeMessage(
          string.format(
            "%s called %s with URL %s, Attempt success as the URL was found in the allowedURLs table.", gcs(), method, url
          )
        )
      end
      end
     
           if
            not Protectio.HttpOptions.HttpPost.Enabled and method:find("HttpPost") then
            if OnAttemptDeny[1] == true then
                setclipboard(args[1])
            end
            
            return makeWarn(
                string.format(
          "%s called %s with the URL %s, HttpPost is not enabled and make sure to put the url in the HttpPost.allowedURLs table if you want to trust the url.", gcs(), method, args[1]
                )
            )
    elseif Protectio.HttpOptions.HttpPost.Enabled and method:find("HttpPost") then
      local url = args[1]
      local dot = url:split(".")
      
      
      if not table.find(Protectio.HttpOptions.HttpPost.allowedURLs, dot[1]) then
        if OnAttemptDeny[1] == true then
        setclipboard(url)
       end
      return makeWarn(
        string.format(
          "%s called %s with the URL %s, Attempt blocked as the URL was not found in the allowed urls table.\n"
        , gcs(), method, args[1]))
        else
        makeMessage(
          string.format(
            "%s called %s with URL %s, Attempt success as the URL was found in the allowedURLs table.", gcs(), method, url
          )
        )
      end
      end
        if method == "FireServer" and SMR == nil and not chatMain == nil and getcallingscript() == chatMain then
        SMR = Self
        makeMessage(
        "SayMessageRequest found disguised as "..Self.Name..", Anti Chat Ban should be working as expected now."
        )
        
        end
        if Protectio[3] == false and method == "Kick" and Self == LocalPlayer then
            return makeWarn(gcs() .. " tried to kick you, Protectio denied the attempt.")
        end
        if Protectio[4] == false and method == "ReportAbuse" then
            if OnAttemptDeny[3] then
                setclipboard(string.format("-- Latest Report Abuse call info: \nCalling Script: %s\nReason: %s\nPlayer: %s\nNote: %s", gcs(), args[1], args[2], args[3]))
            end
            return makeWarn(
                string.format("-- Latest Report Abuse call info: \nCalling Script: %s\nReason: %s\nPlayer: %s\nNote: %s", gcs(), args[1], args[2], args[3]))
        end
        if
            Protectio[5] == false and method == "CaptureFocus" and not getcallingscript() == chatMain and
                Self == ChatBar and
                chat == "legacy"
         then
            return makeWarn(gcs() .. " tried to CaptureFocus, Possible Force Chat attempt denied.")
        elseif chat == "tcs" and method == "CaptureFocus" and Protectio[5] == false then
            return makeWarn(gcs() .. " tried to call CaptureFocus, Attempt denied.")
        end
        if
            chat == "legacy" and Self == SMR and method == "FireServer" and lastText ~= args[1] and
                getcallingscript() ~= chatMain
         then
            return makeWarn(gcs() .. " tried to call SayMessageRequest")
        end
        if Protectio[AllowAccessFriends] == false and method == "GetFriendsAsync" then
        return makeWarn(string.format("%s tried to call GetFriendsAsync (checking your friend list), Attempt denied"), gcs())
        end
        if Protectio.AllowKeyPresses == false and method == "SendKeyEvent" then
      return makeWarn(string.format("%s tried to call SendKeyEvent on %s, Attempt denied due to AllowKeyPresses being set to false.", gcs(), Self.Name))
    end
        return hook(Self, ...)
    end
)
if ChatBar ~= nil then
    ChatBar.Focused:Connect(
        function()
            repeat
                lastText = ChatBar.Text
            until ChatBar.Text == ""
        end
    )
end

hookfunction(
    error,
    newcclosure(
        function(...)
            if not stopped2 then
                local args = {...}
                for i, v in args do
                    makeError = (v)
                end
                stopped2 = true
                for i, v in args do
                    error(v)
                end
                stopped2 = false
            end
        end
    )
)
hookfunction(
    warn,
    newcclosure(
        function(...)
            if not stopped3 then
                local args = {...}
                for i, v in args do
                    makeWarn(v)
                end
                stopped3 = true
                for i, v in args do
                    warn(v)
                end
                stopped3 = false
            end
        end
    )
)

if Protectio[AllowKeyPresses] == false then
hookfunction(keypress, function(...)
local Args = {...}
return makeWarn(
gcs().. " Tried to keypress with the following code: "..Args[1])
end)
end
local request = (syn and syn.request or fluxus and fluxus.request) or request or Request
if not Protectio.Request.Enabled then
hookfunction(request, function(Args)
    local fullName = "{ "
    warn(gcs().. " tried to call request with the following arguements;")
    local e = 0
    for i, Arg in Args do
        if type(Arg) == "table" then
          for k, v in Arg do
            fullName = fullName .. tostring(k) ..": " .. tostring(v)
        if not k == #Args then
          fullName = fullName..", "
        end
          end
        else
        fullName = fullName .. tostring(i)  .. ": " .. tostring(Arg)
        if e < #Args then
        fullName = fullName ..", "
        e+=1
        end
        end
        
      end
      makeMessage(fullName.."}")
    end)
end