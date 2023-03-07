-- btw this was made with the legohacks source. (this autofarm is way faster.)
-- also, theres a memory leak here too.
-- use priv servers to reduce ban chance.

--[[
-- look at this most basic autokick: (execute it after the autofarm is on)
wait(3600); -- waits one hour.
game.Players.LocalPlayer:Kick('hi'); --kicks.
game:shutdown(); -- closes the game.
]]
-- this configuration is slow, test on ALT ACCOUNTS configurations so you get your desired ammount.
getgenv().settings = {
  FarmCooldown = "1"; -- the cooldown of the fireservers. (if the number is too small then you might get banned.)
  ExtraAutofarm= false; -- enables one extra autofarm. (THIS SLOWS THE AUTOFARM A LOT)
  ExtraFarmCombo= "5"; -- The multiplier that increases points. (if your ingame level is low then put this number on 1 or 2)
  autosell = true;

  -- configuration for the remote to fire. --
  LandConfig={
      PerfectLanding= "true";
      LandindType= "straight"; -- it can be roll too.
      Fallspeed= "350"; -- more fallspeed is equal to more points. (if your level is low then put this number less than 200)
      FarmMultiplier= "5"; -- you can increase up to 5, you can try with higher numbers.  (if your level is low then put this number on 1 or 2)

  };
  WalljumpConfig={
      MinBoost= "60"; -- minimum ms that the autofarm boost can get.
      MaxBoost= "120"; -- maximum ms that the autofarm boost can get.
      ExtraMS= tostring(math.random(5,13)); -- the bonus ms that the autofarm will get. (don't modify a lot on this because its important)

      FarmMultiplier= "5"; -- you can increase up to 5, you can try with higher numbers, anyways a higher number gives more chance of ban. (if your level is low then put this number on 1 or 2)
  };
}

pcall(function()
  getgenv().MainConnection:Disconnect();
end)

local moves = { -- moves that doesnt give any points. (this is the slow autofarm, yes, legohacks source)
  "slide";
  "dropdown";
  "ledgegrab";
  "edgejump";
  "longjump";
  "vault";
  "wallrun";
  "springboard";
};

getgenv().MainConnection=game:GetService("RunService").Stepped:Connect(function()
if game.Players.LocalPlayer.PlayerScripts:FindFirstChild('Points') then -- autosell
if tonumber(game:GetService("ReplicatedStorage").PlayerData[game.Players.LocalPlayer.Name].Generic.Points.Value) > 10000 and getgenv().settings.autosell then
game:GetService("ReplicatedStorage").Reset:InvokeServer()
end
      local mainScript = game.Players.LocalPlayer.Backpack:WaitForChild("Main");
      getfenv().script = mainScript;
      mainEnv = getsenv(mainScript);
      encrypt = function(str)
          local _, res = pcall(mainEnv.encrypt, str);
          return res;
      end;
      local pointsEnv = getsenv(game.Players.LocalPlayer.PlayerScripts.Points);
      pointsEnv.changeParkourRemoteParent(workspace);
      local scoreRemote = getupvalue(pointsEnv.changeParkourRemoteParent, 2);
      wait(tonumber(getgenv().settings.FarmCooldown))
-- this are the remotes that give a lot of points. (probably theres another remote that gives more or idk, i'm lazy to make a faste autofarm)
      scoreRemote:FireServer(encrypt("BoostMs"),encrypt(tostring(math.random(tonumber(getgenv().settings.WalljumpConfig.MinBoost),tonumber(getgenv().settings.WalljumpConfig.MaxBoost)))))
      scoreRemote:FireServer(encrypt("walljump"),{[encrypt("combo")] = encrypt(tostring(getgenv().settings.WalljumpConfig.FarmMultiplier)),[encrypt("msBonus")] = encrypt(tostring(getgenv().settings.WalljumpConfig.ExtraMS))}) -- walljump, with combo 5 it farms 1.5k
      scoreRemote:FireServer(encrypt("landing"),{[encrypt("perfectLand")] = encrypt(tostring(getgenv().settings.LandConfig.PerfectLanding)),[encrypt("landingType")] = encrypt(tostring(getgenv().settings.LandConfig.LandindType)),["wasDampenedDeadly"] = encrypt("false"),[encrypt("wasDampenedDeadly")] = encrypt("false"),[encrypt("fallSpeed")] = encrypt(tostring(tonumber(getgenv().settings.LandConfig.Fallspeed) + math.random())),[encrypt("didDropDown")] = encrypt("false"),[encrypt("landingMult")] = encrypt("0"),[encrypt("cushioned")] = encrypt("false"),[encrypt("combo")] = encrypt(tostring(getgenv().settings.LandConfig.FarmMultiplier))}) -- this specific remote gives a lot of points. (up to 3.5k)
      if getgenv().settings.ExtraAutofarm  then
          scoreRemote:FireServer(encrypt(moves[math.random(1, #moves)]), {
              [encrypt("combo")] = encrypt(tostring(getgenv().settings.ExtraFarmCombo));
          });
      end
  end
end)