repeat wait() until game:IsLoaded();

-- // SETTINGS \\ --

local keys = { --https://beta.openai.com/account/api-keys
 [1] = ""
}

local SECRET_KEY  = keys[1]; 
local CLOSE_RANGE_ONLY = true;
local Players = game:GetService("Players");

_G.MESSAGE_SETTINGS = {
 ["MINIMUM_CHARACTERS"] = 3,
 ["MAXIMUM_CHARACTERS"] = 50,
 ["MAXIMUM_STUDS"] = 10,
    ['AntiAfk'] = true,
    ['Client'] = Players.LocalPlayer
};

_G.WHITELISTED = { --Only works if CLOSE_RANGE_ONLY is disabled
 ["yourusername"] = true,
};

_G.BLACKLISTED = { --Only works if CLOSE_RANGE_ONLY is enabled
 ["Builderman"] = true,
};


local module = require(game.ReplicatedStorage.Remotes)

local event = module.Event("SetBoothText")

function update(text)
 event:FireServer(text, "booth")
end





-- // DO NOT CHANGE BELOW \\ --


if _G.OpenAI or SECRET_KEY == "secret key here" then return end;

_G.OpenAI = true;

local ReplicatedStorage = game:GetService("ReplicatedStorage");
local vu = game:GetService("VirtualUser")
local HttpService = game:GetService("HttpService");
local LocalPlayer = _G.MESSAGE_SETTINGS['Client'];
local SayMessageRequest = ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest");
local OnMessageDoneFiltering = ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering");
local Debounce = false;

function MakeRequest(Prompt)
local pre = ""
 pre =  request({
  Url = "https://api.openai.com/v1/completions", 
  Method = "POST",
  Headers = {
   ["Content-Type"] = "application/json",
   ["Authorization"] =  "Bearer " .. SECRET_KEY
  },
  Body = HttpService:JSONEncode({
   model = "text-davinci-002",
   prompt = Prompt,
   temperature = 0.9,
     max_tokens = 47, --150
     top_p = 1,
     frequency_penalty = 0.0,
     presence_penalty = 0.6,
     stop = {" Human:", " AI:"}
  });
 });
    return pre
end




OnMessageDoneFiltering.OnClientEvent:Connect(function(Table)
 local Message, Instance = Table.Message, Players:FindFirstChild(Table.FromSpeaker);
 local Character = Instance and Instance.Character;
 
 if Instance == LocalPlayer or string.match(Message, "#") or not Character or not Character:FindFirstChild("Head") or not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("Head") then return end;
 if Debounce or #Message < _G.MESSAGE_SETTINGS["MINIMUM_CHARACTERS"] or #Message > _G.MESSAGE_SETTINGS["MAXIMUM_CHARACTERS"] then return end;
 if CLOSE_RANGE_ONLY then if _G.BLACKLISTED[Instance.Name] or (Character.Head.Position - LocalPlayer.Character.Head.Position).Magnitude > _G.MESSAGE_SETTINGS["MAXIMUM_STUDS"] then return end elseif not _G.WHITELISTED[Instance.Name] then return end;

 Debounce = true;

 local HttpRequest = MakeRequest("Human: " .. Message .. "\n\nAI:");
 local Response = Instance.Name .. ": " .. string.gsub(string.sub(HttpService:JSONDecode(HttpRequest["Body"]).choices[1].text, 2), "[%p%c]", "");


 if #Response < 128 then --200
  update(Response);
  wait(5);
  Debounce = false;
 else
  update("Response (> 128): " .. Response);
  if #Response - 128 < 128 then
  update(string.sub(Response, 1, 128));
   delay(1, function()
    update(string.sub(Response, 129));
    wait(5);
    update('Cooldown')
    Debounce = false;
   end) 
  else
   update("Sorry, I couldn't understand.");
   wait(2.5);
   Debounce = false;
  end
 end
end)

warn("Script has been executed with success.");