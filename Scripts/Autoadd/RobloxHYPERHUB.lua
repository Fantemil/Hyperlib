local L_1_ = syn and syn.request or http and http.request

local L_2_ = {
 StatusMessage = "OK",
 Success = true,
 StatusCode = 200,
 Headers = {
  Connection = "Keep-Alive",
  ["content-type"] = "text/html; charset=UTF-8",
  vary = "User-Agent",
  ["Keep-Alive"] = "timeout=5, max=100",
  date = "Tue, 26 Jul 2022 15:44:44 GMT",
  ["x-powered-by"] = "PHP/7.2.34",
  ["content-length"] = "128",
  server = "LiteSpeed"
 },
 Cookies = {},
 Body = "5a7a80833bfbf0762d308d64fa5f0a55bd2433b6e13ef9a517e0a0b7ba475416c735cf4610e18837d1df4b514b76c405ff0a40bbc878c286a8f3b78ea852e24f"
}

local L_3_ = {
 StatusMessage = "OK",
 Success = true,
 StatusCode = 200,
 Headers = {
  Connection = "Keep-Alive",
  ["content-type"] = "text/html; charset=UTF-8",
  vary = "User-Agent",
  ["Keep-Alive"] = "timeout=5, max=100",
  date = "Tue, 26 Jul 2022 17:07:59 GMT",
  ["x-powered-by"] = "PHP/7.2.34",
  ["content-length"] = "382",
  server = "LiteSpeed"
 },
 Cookies = {},
 Body = '{"Syn-Fingerprint":"2ecb77f68edab6a1c8cedac0974b4e59a93bc82340c07fa60e0490b3643c1ebf3bf217c41396ce49538d2beb3915e921127c0760a402a86892e6843d4a600e79\",\"Syn-User-Identifier\":\"5a7a80833bfbf0762d308d64fa5f0a55bd2433b6e13ef9a517e0a0b7ba475416c735cf4610e18837d1df4b514b76c405ff0a40bbc878c286a8f3b78ea852e24f"}'
}

local L_4_;
L_4_ = hookfunction(Random.new, function(...)
 if checkcaller() then
  local L_8_ = {}
  local L_9_ = function()
   return 1
  end
  L_8_.NextInteger = L_9_
  L_8_.NextNumber = L_9_
  return L_8_
 end
 return L_4_(...)
end)

local L_5_;
L_5_ = hookfunction(math.random, function(...)
 local L_10_ = {
  ...
 }
 if checkcaller() and L_10_ then
  if L_10_[1] == 1 and L_10_[2] == 1000000 then
   return 1
  end
 end
 return L_5_(...)
end)

local L_6_;
L_6_ = hookfunction(L_1_, function(...)
 local L_11_ = {
  ...
 }
 if L_11_[1] then
  if L_11_[1]["Url"]:find("newgeth") then
   return L_2_
  elseif L_11_[1]["Url"]:find("/geth") then
   return L_3_
  end
 end
 return L_6_(...)
end)

local L_7_;
L_7_ = hookfunction(game.HttpGet, function(L_12_arg0, L_13_arg1, ...)
 if L_13_arg1:find("validator") then
  return "d88e584d485a630ee6ffc205969bde7738026ed22fc1a91d92b5d2ef93540f20"
 end
 if L_13_arg1:find("afsCodes") then
  return L_7_(L_12_arg0, "https://scriptstream.xyz/ScriptStorage/Zer0hub/random/afsCodes.json", ...)
 end
 if L_13_arg1:find("main/lib") then
  return L_7_(L_12_arg0, "https://hypernite.xyz/Backup/Zer0Hub/main/lib", ...)
 end
 if L_13_arg1:find("main/rbxevent.lua") then
  return L_7_(L_12_arg0, "https://hypernite.xyz/Backup/Zer0Hub/main/rbxevent.lua", ...)
 end
 return L_7_(L_12_arg0, L_13_arg1, ...)
end)

spawn(function()
 game.CoreGui.ChildAdded:connect(function(L_14_arg0)
  repeat
   wait()
  until #L_14_arg0:GetChildren() == 2
  local L_15_ = L_14_arg0:WaitForChild("Frame").Frame
  for L_16_forvar0, L_17_forvar1 in pairs(L_15_:GetChildren()) do
   if L_17_forvar1.Name == "Frame" and L_17_forvar1.ZIndex == 21 then
    for L_18_forvar0, L_19_forvar1 in pairs(L_17_forvar1:GetDescendants()) do
     if L_19_forvar1:IsA("TextBox") then
      L_19_forvar1.Text = "049136ba5f7f53d98ac8becaa8b1cbb9"
     end
     if L_19_forvar1:IsA("TextButton") then
      if L_19_forvar1.Text:find("http") then
       L_19_forvar1.Text = "049136ba5f7f53d98ac8becaa8b1cbb9"
      end
     end
     if L_19_forvar1:IsA("TextLabel") then
      if L_19_forvar1.Text:find("Zer0") then
       L_19_forvar1.Text = "Made by HypeNite"
      end
     end
    end
   elseif L_17_forvar1.Name == "Frame" and L_17_forvar1.ZIndex == 30 then
    for L_20_forvar0, L_21_forvar1 in pairs(L_17_forvar1:GetChildren()) do
     if L_21_forvar1.Text then
      L_21_forvar1.Text = "HyperHub"
     end
    end
   end
  end
 end)
end)

loadstring(game:HttpGet("https://scriptstream.xyz/ScriptStorage/Zer0hub/MainScript.lua"))()