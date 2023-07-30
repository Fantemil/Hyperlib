--not mine made by Big Guy in v3rm
local prefix: string = ";"
local CoreGui: Instance = game:GetService("StarterGui")
local Remote: RemoteEvent = game:GetService("ReplicatedStorage"):WaitForChild("ModGui")
local Mod: table = {
  Filtered = {
      "Exploiting.",
      "Exploiting"
  },
  Kick = function(self: table, plr: Player, reason: string?)
      local userId: number = typeof(plr) == "number" and plr or plr.UserId
      reason = reason or "Exploiting."

      if not table.find(self.Filtered, reason) then
          Remote:InvokeServer("filter", {
              userId,
              reason
          })
          table.insert(self.Filtered, reason)
      end

      return pcall(function()
          return Remote:InvokeServer("kick", {
              userId,
              reason
          })
      end)
  end,
  Warn = function(self: table, plr: Player, reason: string)
      local userId: number = typeof(plr) == "number" and plr or plr.UserId
      assert(reason, "A reason is needed to warn someone.")

      if not table.find(self.Filtered, reason) then
          Remote:InvokeServer("filter", {
              userId,
              reason
          })
          table.insert(self.Filtered, reason)
      end

      return pcall(function()
          return Remote:InvokeServer("warn", {
              userId,
              reason
          })
      end)
  end,
  Ban = function(self: table, plr: Player, duration: number?, reason: string?)
      local userId: number = typeof(plr) == "number" and plr or plr.UserId
      duration = duration or math.huge
      reason = reason or "Exploiting."

      if not table.find(self.Filtered, reason) then
          Remote:InvokeServer("filter", {
              userId,
              reason
          })
          table.insert(self.Filtered, reason)
      end

      return pcall(function()
          return Remote:InvokeServer("ban", {
              userId,
              reason,
              duration
          })
      end)
  end,
  EditBan = function(self: table, plr: Player, new_reason: string?, new_status: string?, new_duration: number?)
      local userId: number = typeof(plr) == "number" and plr or plr.UserId

      local infractions = self.Lookup(userId)
      for _, infraction in ipairs(infractions) do
          if infraction.type == "Ban" then
              pcall(function()
                  return Remote:InvokeServer("editban", {
                      userId,
                      infraction,
                      new_reason or infraction.reason,
                      new_status,
                      new_duration or math.huge
                  })
              end)
          end
      end
  end,
  Lookup = function(plr: Player)
      local userId: number = typeof(plr) == "number" and plr or plr.UserId
      return Remote:InvokeServer("lookup", { userId })
  end
}

local function getplayer(name: string)--[[: {Player} seems to cause a syntax error with syn v2]]
  name = name:lower()
  if name == "all" then return game.Players:GetPlayers() end
  if name == "others" then
      local players = game.Players:GetPlayers()
      table.remove(players, 1)

      return players
  end
  local players = table.create(#game.Players:GetPlayers())
  for _, player in ipairs(game.Players:GetPlayers()) do
      if player.Name:lower():match(("^%s"):format(name)) or player.DisplayName:lower():match(("^%s"):format(name)) then
          table.insert(players, player)
      end
  end
  return players
end

local Commands = {
  kick = function(plr, ...)
      local reason = table.concat({...}, " ")
      reason = reason == "" and "Exploiting." or reason
     
      for _, player in ipairs(getplayer(plr)) do
          task.spawn(function()
              local client_result, server_result, errorMsg = Mod:Kick(player, reason)
              if client_result and not server_result then
                  CoreGui:SetCore("SendNotification", {
                      Title = "Kick failed",
                      Text = errorMsg,
                      Duration = 1
                  })
              end
           end)
      end
  end,
  ban = function(plr, duration, ...)
      local reason = table.concat({...}, " ")
      duration = duration:lower() == "inf" and math.huge or tonumber(duration)
      reason = reason == "" and "Exploiting." or reason
     
      for _, player in ipairs(getplayer(plr)) do
          task.spawn(function()
              local client_result, server_result, errorMsg = Mod:Ban(player, duration, reason)
              if client_result and not server_result then
                  CoreGui:SetCore("SendNotification", {
                      Title = "Ban failed",
                      Text = errorMsg,
                  })
              end
           end)
      end
  end,
  warn = function(plr, ...)
      local reason = table.concat({...}, " ")
      reason = reason == "" and "Exploiting." or reason
     
      for _, player in ipairs(getplayer(plr)) do
       --   task.spawn(function() -- not needed, fuck warn
              local client_result, server_result, errorMsg = Mod:Warn(player, reason)
              if client_result and not server_result then
                  CoreGui:SetCore("SendNotification", {
                      Title = "Warn failed",
                      Text = errorMsg,
                  })
              end
           -- end)
      end
  end,
  unban = function(userid)
      Mod:EditBan(tonumber(userid), nil, nil, 1)
  end
}

game.Players.LocalPlayer.Chatted:Connect(function(message)
  local command = message:match(prefix .. "(%w+)%s?"):lower()
  local arguments = message:split(" ")
  table.remove(arguments, 1)
 
  if Commands[command] then
      local success, errorMsg = pcall(function()
          Commands[command](table.unpack(arguments))
      end)

      if not success then
          warn("Error executing command: " .. errorMsg)
      end
  end
end)
--not mine made by Big Guy in v3rm