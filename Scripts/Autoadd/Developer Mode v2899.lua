--download vega x windows: https://vegax.gg/
--put this in a auto exe folder for better use yk
wait(2) -- prevent crash when you join a game (auto exe)
-- Instances: 27 | Scripts: 4 | Modules: 0
local G2L = {};

-- StarterGui.DevModeH
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[DevMode]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

-- StarterGui.DevMode.Shadow
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["ZIndex"] = 999999999;
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["BackgroundTransparency"] = 1;
G2L["2"]["Size"] = UDim2.new(0, 240, 0, 290);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.4897119402885437, 0);
G2L["2"]["Name"] = [[Shadow]];

-- StarterGui.DevMode.Shadow.UICorner
G2L["3"] = Instance.new("UICorner", G2L["2"]);
G2L["3"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.DevMode.Shadow.DropShadow
G2L["4"] = Instance.new("ImageLabel", G2L["2"]);
G2L["4"]["ZIndex"] = 0;
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4"]["Image"] = [[rbxassetid://297694300]];
G2L["4"]["Size"] = UDim2.new(1.2441109418869019, 0, 1.2077912092208862, 0);
G2L["4"]["Name"] = [[DropShadow]];
G2L["4"]["BackgroundTransparency"] = 1;
G2L["4"]["Position"] = UDim2.new(0.5067567229270935, 0, 0.4960866868495941, 0);

-- StarterGui.DevMode.Shadow.DropShadow
G2L["5"] = Instance.new("ImageLabel", G2L["2"]);
G2L["5"]["ZIndex"] = 0;
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5"]["Image"] = [[rbxassetid://297694300]];
G2L["5"]["Size"] = UDim2.new(1.2441109418869019, 0, 1.2077912092208862, 0);
G2L["5"]["Name"] = [[DropShadow]];
G2L["5"]["BackgroundTransparency"] = 1;
G2L["5"]["Position"] = UDim2.new(0.5067567229270935, 0, 0.4960866868495941, 0);

-- StarterGui.DevMode.DevModeFrame
G2L["6"] = Instance.new("Frame", G2L["1"]);
G2L["6"]["ZIndex"] = 999999999;
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["6"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["6"]["Size"] = UDim2.new(0, 240, 0, 290);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Position"] = UDim2.new(0.5, 0, 0.4897119402885437, 0);
G2L["6"]["Name"] = [[DevModeFrame]];

-- StarterGui.DevMode.DevModeFrame.UICorner
G2L["7"] = Instance.new("UICorner", G2L["6"]);
G2L["7"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.DevMode.DevModeFrame.Banner
G2L["8"] = Instance.new("Frame", G2L["6"]);
G2L["8"]["ZIndex"] = 999999999;
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 25);
G2L["8"]["Size"] = UDim2.new(1, 0, -0.18666666746139526, 190);
G2L["8"]["Name"] = [[Banner]];

-- StarterGui.DevMode.DevModeFrame.Banner.HappyGuy
G2L["9"] = Instance.new("ImageLabel", G2L["8"]);
G2L["9"]["ZIndex"] = 999999999;
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 25);
G2L["9"]["ImageTransparency"] = 0.5;
G2L["9"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["9"]["Image"] = [[http://www.roblox.com/asset/?id=13329667664]];
G2L["9"]["Size"] = UDim2.new(0, 240, 0, 100);
G2L["9"]["Name"] = [[HappyGuy]];
G2L["9"]["Position"] = UDim2.new(0.5, 0, 1, 0);

-- StarterGui.DevMode.DevModeFrame.Banner.VegaXLogo
G2L["a"] = Instance.new("ImageLabel", G2L["8"]);
G2L["a"]["ZIndex"] = 999999999;
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["Image"] = [[http://www.roblox.com/asset/?id=15861930865]];
G2L["a"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["a"]["Name"] = [[VegaXLogo]];
G2L["a"]["BackgroundTransparency"] = 1;
G2L["a"]["Position"] = UDim2.new(0, 10, 0, 6);

-- StarterGui.DevMode.DevModeFrame.Banner.TitleLabel
G2L["b"] = Instance.new("TextLabel", G2L["8"]);
G2L["b"]["ZIndex"] = 999999999;
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["b"]["TextSize"] = 12;
G2L["b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["Size"] = UDim2.new(0, 150, 0, 25);
G2L["b"]["Text"] = "Vega X [Dev][v2]";
G2L["b"]["Name"] = [[TitleLabel]];
G2L["b"]["BackgroundTransparency"] = 1;
G2L["b"]["Position"] = UDim2.new(0, 40, 0, 6);

-- StarterGui.DevMode.DevModeFrame.Banner.UICorner
G2L["c"] = Instance.new("UICorner", G2L["8"]);
G2L["c"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.DevMode.DevModeFrame.C1EB
G2L["d"] = Instance.new("TextButton", G2L["6"]);
G2L["d"]["ZIndex"] = 999999999;
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 25);
G2L["d"]["TextSize"] = 14;
G2L["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["d"]["Size"] = UDim2.new(1, -20, 0, 30);
G2L["d"]["Name"] = [[C1EB]];
G2L["d"]["Text"] = [[Set injection code]];
G2L["d"]["Position"] = UDim2.new(0.4974999725818634, 0, 1.0018517971038818, -10);

-- StarterGui.DevMode.DevModeFrame.C1EB.UICorner
G2L["e"] = Instance.new("UICorner", G2L["d"]);
G2L["e"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.DevMode.DevModeFrame.C1EB.Inject
G2L["f"] = Instance.new("LocalScript", G2L["d"]);
G2L["f"]["Name"] = [[Inject]];

-- StarterGui.DevMode.DevModeFrame.UsernamePlace
G2L["10"] = Instance.new("Frame", G2L["6"]);
G2L["10"]["ZIndex"] = 999999999;
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 25);
G2L["10"]["Size"] = UDim2.new(1, 0, 0, 62);
G2L["10"]["Position"] = UDim2.new(0, 0, 0.46599826216697693, 0);
G2L["10"]["Name"] = [[UsernamePlace]];

-- StarterGui.DevMode.DevModeFrame.UsernamePlace.Title
G2L["11"] = Instance.new("TextLabel", G2L["10"]);
G2L["11"]["TextWrapped"] = true;
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11"]["TextSize"] = 14;
G2L["11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["11"]["Size"] = UDim2.new(0.6399999856948853, 0, 1, -20);
G2L["11"]["Text"] = "Hello!\n[user]";
G2L["11"]["Name"] = [[Title]];
G2L["11"]["BackgroundTransparency"] = 1;
G2L["11"]["Position"] = UDim2.new(0, 62, 0.5, 0);

-- StarterGui.DevMode.DevModeFrame.UsernamePlace.Icon
G2L["12"] = Instance.new("Frame", G2L["10"]);
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["12"]["Size"] = UDim2.new(0, 42, 0, 42);
G2L["12"]["Position"] = UDim2.new(0, 10, 0, 10);
G2L["12"]["Name"] = [[Icon]];

-- StarterGui.DevMode.DevModeFrame.UsernamePlace.Icon.UICorner
G2L["13"] = Instance.new("UICorner", G2L["12"]);
G2L["13"]["CornerRadius"] = UDim.new(0, 10);

-- StarterGui.DevMode.DevModeFrame.UsernamePlace.Icon.ProfileImage
G2L["14"] = Instance.new("ImageLabel", G2L["12"]);
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 25);
G2L["14"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["14"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["14"]["Name"] = [[ProfileImage]];
G2L["14"]["BackgroundTransparency"] = 1;
G2L["14"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.DevMode.DevModeFrame.UsernamePlace.Icon.ProfileImage.UICorner
G2L["15"] = Instance.new("UICorner", G2L["14"]);
G2L["15"]["CornerRadius"] = UDim.new(0, 10);

-- StarterGui.DevMode.DevModeFrame.UsernamePlace.Profile
G2L["16"] = Instance.new("LocalScript", G2L["10"]);
G2L["16"]["Name"] = [[Profile]];

-- StarterGui.DevMode.DevModeFrame.InjectCodeTextbox
G2L["17"] = Instance.new("TextBox", G2L["6"]);
G2L["17"]["PlaceholderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["ZIndex"] = 999999999;
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["TextSize"] = 14;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 25);
G2L["17"]["TextColor3"] = Color3.fromRGB(221, 221, 221);
G2L["17"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["17"]["MultiLine"] = true;
G2L["17"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["17"]["PlaceholderText"] = [[injection code]];
G2L["17"]["Size"] = UDim2.new(0.9179999828338623, 0, 0, 30);
G2L["17"]["Text"] = [[]];
G2L["17"]["Position"] = UDim2.new(1.3641667366027832, -98, 0.7699999809265137, 0);
G2L["17"]["Name"] = [[InjectCodeTextbox]];
G2L["17"]["ClearTextOnFocus"] = false;

-- StarterGui.DevMode.DevModeFrame.InjectCodeTextbox.UICorner
G2L["18"] = Instance.new("UICorner", G2L["17"]);
G2L["18"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.DevMode.ImageLabel
G2L["19"] = Instance.new("ImageLabel", G2L["1"]);
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["19"]["Image"] = [[rbxassetid://16741446577]];
G2L["19"]["Size"] = UDim2.new(0, 300, 0, 300);
G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["BackgroundTransparency"] = 1;
G2L["19"]["Position"] = UDim2.new(0.125, 0, 0.699999988079071, 0);

-- StarterGui.DevMode.ImageLabel.Injected
G2L["1a"] = Instance.new("LocalScript", G2L["19"]);
G2L["1a"]["Name"] = [[Injected]];

-- StarterGui.DevMode.ImageLabel.NotInjected
G2L["1b"] = Instance.new("LocalScript", G2L["19"]);
G2L["1b"]["Name"] = [[NotInjected]];

getgenv().DevConnect = function(devcode)
    warn("(Panda-Pelican Development | HTTP Protocol [ Beta ])")
    local No_Execute = "No_Data_Set_Here"
    local IPv4 = base64.decode(devcode)
    if IPv4 == "" or IPv4 == nil then
        output("Auto Connect Failed [?]")
        return
    end
    print("http://"..IPv4..":2023".."/")
    task.spawn(function() 
        while true do
            wait(0.1)
            local content = game:HttpGet("http://"..IPv4..":2023".."/readcontent")     
            if content ~= No_Execute then
                local success, result = pcall(function()
                    runcode(content)
                    local a = tostring(game:HttpGet("http://"..IPv4..":2023".."/clear"))
                end)

                if not success then
                    -- Handle the exception here
                    warn("Error executing loaded code:", result)
                    local b = tostring(game:HttpGet("http://"..IPv4..":2023".."/clear"))
                end        
            end
        end
    end) 
end

local function C_f()
local script = G2L["f"];
	local box = script.Parent.Parent.InjectCodeTextbox
    script.Parent.MouseButton1Click:Connect(function()
        writefile("injectcode.txt", box.Text)
        DevConnect(readfile("injectcode.txt"))
        wait(0.6)
        script.Parent.Parent.Parent:Destroy()
    end)
end;
task.spawn(C_f);
-- StarterGui.DevMode.DevModeFrame.UsernamePlace.Profile
local function C_16()
local script = G2L["16"];
	local img = "rbxthumb://type=AvatarBust&id="..game.Players.LocalPlayer.UserId.."&w=48&h=48"
	script.Parent.Icon.ProfileImage.Image = img
	script.Parent.Title.Text = "Hello!\n"..game.Players.LocalPlayer.Name
end;
task.spawn(C_16);
-- StarterGui.DevMode.ImageLabel.Injected
local function C_1a()
local script = G2L["1a"];
    if isfile("injectcode.txt") then
	game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0), {ImageTransparency = 1}):Play()
	for i,v in pairs(script.Parent.Parent.DevModeFrame:GetDescendants()) do
		game:GetService("TweenService"):Create(script.Parent.Parent.DevModeFrame, TweenInfo.new(0), {BackgroundTransparency = 1}):Play()
		if v:IsA("Frame") then
			game:GetService("TweenService"):Create(v, TweenInfo.new(0), {BackgroundTransparency = 1}):Play()
		elseif v:IsA("TextButton") or v:IsA("TextBox") then
			game:GetService("TweenService"):Create(v, TweenInfo.new(0), {BackgroundTransparency = 1}):Play()
			game:GetService("TweenService"):Create(v, TweenInfo.new(0), {TextTransparency = 1}):Play()
		elseif v:IsA("TextLabel") then
			game:GetService("TweenService"):Create(v, TweenInfo.new(0), {TextTransparency = 1}):Play()
		elseif v:IsA("ImageLabel") then
			if v.Name == "HappyGuy" then game:GetService("TweenService"):Create(v, TweenInfo.new(0), {BackgroundTransparency = 1}):Play() end
			game:GetService("TweenService"):Create(v, TweenInfo.new(0), {ImageTransparency = 1}):Play()
		end
	end
	for i,v in pairs(script.Parent.Parent.Shadow:GetDescendants()) do
		game:GetService("TweenService"):Create(script.Parent.Parent.Shadow, TweenInfo.new(0), {BackgroundTransparency = 1}):Play()
		if v:IsA("ImageLabel") then
			game:GetService("TweenService"):Create(v, TweenInfo.new(0), {ImageTransparency = 1}):Play()
		end
	end
	game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0), {ImageTransparency = 1}):Play()
	script.Parent:TweenPosition(UDim2.new(0.5,0,0.7,0), "Out", "Quad", 0, true)
	wait(2)
	game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(1), {ImageTransparency = 0}):Play()
	script.Parent:TweenPosition(UDim2.new(0.5,0,0.5,0), "Out", "Quad", 1, true)
	wait(0.7)
	
	blinks = 0
	repeat
		game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0.1), {ImageColor3 = Color3.fromRGB(0, 255, 127)}):Play()
		wait(0.1)
		game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0.1), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
		blinks+=1
		wait(0.1)
	until blinks == 4
	wait(0.4)
	game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(1), {ImageTransparency = 1}):Play()
	script.Parent:TweenPosition(UDim2.new(0.5,0,0.7,0), "Out", "Quad", 1, true)
    DevConnect(readfile("injectcode.txt"))
	wait(1.5)
	script.Parent:Destroy()
end
end;
task.spawn(C_1a);
-- StarterGui.DevMode.ImageLabel.NotInjected
local function C_1b()
local script = G2L["1b"];
    if isfile("injectcode.txt") then
else
game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0), {ImageTransparency = 1}):Play()
for i,v in pairs(script.Parent.Parent.DevModeFrame:GetDescendants()) do
	game:GetService("TweenService"):Create(script.Parent.Parent.DevModeFrame, TweenInfo.new(0), {BackgroundTransparency = 1}):Play()
	if v:IsA("Frame") then
		game:GetService("TweenService"):Create(v, TweenInfo.new(0), {BackgroundTransparency = 1}):Play()
	elseif v:IsA("TextButton") or v:IsA("TextBox") then
		game:GetService("TweenService"):Create(v, TweenInfo.new(0), {BackgroundTransparency = 1}):Play()
		game:GetService("TweenService"):Create(v, TweenInfo.new(0), {TextTransparency = 1}):Play()
	elseif v:IsA("TextLabel") then
		game:GetService("TweenService"):Create(v, TweenInfo.new(0), {TextTransparency = 1}):Play()
	elseif v:IsA("ImageLabel") then
		if v.Name == "HappyGuy" then game:GetService("TweenService"):Create(v, TweenInfo.new(0), {BackgroundTransparency = 1}):Play() end
		game:GetService("TweenService"):Create(v, TweenInfo.new(0), {ImageTransparency = 1}):Play()
	end
end
for i,v in pairs(script.Parent.Parent.Shadow:GetDescendants()) do
	game:GetService("TweenService"):Create(script.Parent.Parent.Shadow, TweenInfo.new(0), {BackgroundTransparency = 1}):Play()
	if v:IsA("ImageLabel") then
		game:GetService("TweenService"):Create(v, TweenInfo.new(0), {ImageTransparency = 1}):Play()
	end
end
game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0), {ImageTransparency = 1}):Play()
script.Parent:TweenPosition(UDim2.new(0.5,0,0.7,0), "Out", "Quad", 0, true)
wait(3)
game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(1), {ImageTransparency = 0}):Play()
script.Parent:TweenPosition(UDim2.new(0.5,0,0.5,0), "Out", "Quad", 1, true)
wait(0.7)
blinks = 0
repeat
	game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0.1), {ImageColor3 = Color3.fromRGB(255, 0, 0)}):Play()
	wait(0.1)
	game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0.1), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
	blinks+=1
	wait(0.1)
until blinks == 4
wait(0.4)
game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(1), {ImageTransparency = 1}):Play()
script.Parent:TweenPosition(UDim2.new(0.5,0,0.7,0), "Out", "Quad", 1, true)
wait(1.5)
game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(1), {ImageTransparency = 1}):Play()
for i,v in pairs(script.Parent.Parent.DevModeFrame:GetDescendants()) do
	game:GetService("TweenService"):Create(script.Parent.Parent.DevModeFrame, TweenInfo.new(0), {BackgroundTransparency = 0}):Play()
	if v:IsA("Frame") then
		game:GetService("TweenService"):Create(v, TweenInfo.new(1), {BackgroundTransparency = 0}):Play()
	elseif v:IsA("TextButton") or v:IsA("TextBox") then
		game:GetService("TweenService"):Create(v, TweenInfo.new(1), {BackgroundTransparency = 0}):Play()
		game:GetService("TweenService"):Create(v, TweenInfo.new(1), {TextTransparency = 0}):Play()
	elseif v:IsA("TextLabel") then
		game:GetService("TweenService"):Create(v, TweenInfo.new(1), {TextTransparency = 0}):Play()
	elseif v:IsA("ImageLabel") then
		if v.Name == "HappyGuy" then game:GetService("TweenService"):Create(v, TweenInfo.new(0), {BackgroundTransparency = 0}):Play() end
		game:GetService("TweenService"):Create(v, TweenInfo.new(1), {ImageTransparency = 0}):Play()
	end
end
for i,v in pairs(script.Parent.Parent.Shadow:GetDescendants()) do
	game:GetService("TweenService"):Create(script.Parent.Parent.Shadow, TweenInfo.new(0), {BackgroundTransparency = 0}):Play()
	if v:IsA("ImageLabel") then
		game:GetService("TweenService"):Create(v, TweenInfo.new(1), {ImageTransparency = 0}):Play()
	end
end
    end
end;
task.spawn(C_1b);

return G2L["1"], require;

--v2 :))