-- [ Credits: KnownZero adds your names after updating the code ] --
-- | Code Fixers: Add your name after fixing someone's bug |--
-- | Project: idk if itll be for a game like MM2 or Bedwars | --
-- [ also if you want to join my server and be a developer, but you'll have to be helping with something like frames or code loadstrings; they don't count] --

Known = {}
Known["SG"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
Known["1"] = Instance.new("Frame", Known["SG"])

Known["1"]["BorderSizePixel"] = 0;
Known["1"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 30);
Known["1"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Known["1"]["BackgroundTransparency"] = 0.35;
Known["1"]["Size"] = UDim2.new(0, 400, 0, 330);
Known["1"]["Position"] = UDim2.new(0.55, 0, 0.5, 0);
Known["1"]["Name"] = [[Loader]];