

--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88 
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER
]=]
makefolder("d_android_script_dir")

if _G.is_deltaandroid_loaded then
    print("already running")
    return
end

_G.is_deltaandroid_loaded = true

-- Instances: 310 | Scripts: 28 | Modules: 24
local G2L = {};

-- StarterGui.DeltaGui
G2L["1"] = Instance.new("ScreenGui", gethui());
G2L["1"]["Name"] = [[DeltaGui]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

-- StarterGui.DeltaGui.KeySystem
G2L["2"] = Instance.new("Folder", G2L["1"]);
G2L["2"]["Name"] = [[KeySystem]];

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame
G2L["3"] = Instance.new("Frame", G2L["2"]);
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(20, 20, 23);
G2L["3"]["Size"] = UDim2.new(0.76389479637146, 0, 0.4519544541835785, 0);
G2L["3"]["Position"] = UDim2.new(0.11660274863243103, 0, 0.275360107421875, 0);
G2L["3"]["Visible"] = false;
G2L["3"]["Name"] = [[MainKeyFrame]];

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.SideFrame
G2L["4"] = Instance.new("Frame", G2L["3"]);
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["BackgroundTransparency"] = 1;
G2L["4"]["Size"] = UDim2.new(0.11645293235778809, 0, 1.0000001192092896, 0);
G2L["4"]["Name"] = [[SideFrame]];

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.SideFrame.Logo
G2L["5"] = Instance.new("ImageLabel", G2L["4"]);
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(143, 130, 255);
G2L["5"]["Image"] = [[rbxassetid://12730597972]];
G2L["5"]["Size"] = UDim2.new(1.0185703039169312, 0, 0.3629874587059021, 0);
G2L["5"]["Name"] = [[Logo]];
G2L["5"]["BackgroundTransparency"] = 1;
G2L["5"]["Position"] = UDim2.new(-0.018570121377706528, 0, 0.06093369424343109, 0);

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.SideFrame.Logo.UIAspectRatioConstraint
G2L["6"] = Instance.new("UIAspectRatioConstraint", G2L["5"]);
G2L["6"]["AspectRatio"] = 0.9946909546852112;

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.SideFrame.Frame
G2L["7"] = Instance.new("Frame", G2L["4"]);
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(72, 72, 72);
G2L["7"]["Size"] = UDim2.new(0, 0, 0.9890000224113464, 0);
G2L["7"]["BorderColor3"] = Color3.fromRGB(72, 72, 72);
G2L["7"]["Position"] = UDim2.new(1, 0, 0.004999999888241291, 0);

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.SideFrame.Frame.UICorner
G2L["8"] = Instance.new("UICorner", G2L["7"]);
G2L["8"]["CornerRadius"] = UDim.new(0.09000000357627869, 0);

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.SideTextbox
G2L["9"] = Instance.new("Frame", G2L["3"]);
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["BackgroundTransparency"] = 0.33329999446868896;
G2L["9"]["Size"] = UDim2.new(0.8421385884284973, 0, 0.5559701919555664, 0);
G2L["9"]["BorderColor3"] = Color3.fromRGB(16, 16, 16);
G2L["9"]["Position"] = UDim2.new(0.13729187846183777, 0, 0.11194030940532684, 0);
G2L["9"]["Name"] = [[SideTextbox]];

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.SideTextbox.MainTextBox
G2L["a"] = Instance.new("TextBox", G2L["9"]);
G2L["a"]["TextSize"] = 13;
G2L["a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["a"]["BackgroundTransparency"] = 1;
G2L["a"]["PlaceholderText"] = [[Enter Your Key Here]];
G2L["a"]["Size"] = UDim2.new(0.9665210843086243, 0, 0.8322147727012634, 0);
G2L["a"]["BorderColor3"] = Color3.fromRGB(16, 16, 16);
G2L["a"]["Text"] = [[]];
G2L["a"]["Position"] = UDim2.new(0.020378457382321358, 0, 0.08053690940141678, 0);
G2L["a"]["Name"] = [[MainTextBox]];
G2L["a"]["ClearTextOnFocus"] = false;

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.SideTextbox.MainTextBox.UICorner
G2L["b"] = Instance.new("UICorner", G2L["a"]);
G2L["b"]["CornerRadius"] = UDim.new(0.09000000357627869, 0);

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.SideTextbox.UICorner
G2L["c"] = Instance.new("UICorner", G2L["9"]);
G2L["c"]["CornerRadius"] = UDim.new(0.09000000357627869, 0);

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.UICorner
G2L["d"] = Instance.new("UICorner", G2L["3"]);
G2L["d"]["CornerRadius"] = UDim.new(0.09000000357627869, 0);

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.UIAspectRatioConstraint
G2L["e"] = Instance.new("UIAspectRatioConstraint", G2L["3"]);
G2L["e"]["AspectRatio"] = 3.0439562797546387;

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.Continue
G2L["f"] = Instance.new("Frame", G2L["3"]);
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["f"]["Size"] = UDim2.new(0.19932664930820465, 0, 0.1760299652814865, 0);
G2L["f"]["Position"] = UDim2.new(0.13534526526927948, 0, 0.7490636706352234, 0);
G2L["f"]["Name"] = [[Continue]];

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.Continue.TextButton
G2L["10"] = Instance.new("TextButton", G2L["f"]);
G2L["10"]["TextWrapped"] = true;
G2L["10"]["TextScaled"] = true;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["10"]["TextSize"] = 14;
G2L["10"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["10"]["TextColor3"] = Color3.fromRGB(252, 252, 252);
G2L["10"]["Size"] = UDim2.new(0.8136826753616333, 0, 1, 0);
G2L["10"]["Text"] = [[Continue]];
G2L["10"]["Position"] = UDim2.new(-0.004637444857507944, 0, 0, 0);

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.Continue.TextButton.UICorner
G2L["11"] = Instance.new("UICorner", G2L["10"]);
G2L["11"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.Continue.TextButton.LocalScript
G2L["12"] = Instance.new("LocalScript", G2L["10"]);


-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.Continue.TextButton.UITextSizeConstraint
G2L["13"] = Instance.new("UITextSizeConstraint", G2L["10"]);
G2L["13"]["MaxTextSize"] = 14;

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.Continue.UICorner
G2L["14"] = Instance.new("UICorner", G2L["f"]);
G2L["14"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.Continue.ImageLabel
G2L["15"] = Instance.new("ImageLabel", G2L["f"]);
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(143, 130, 255);
G2L["15"]["Image"] = [[rbxassetid://12730588268]];
G2L["15"]["Size"] = UDim2.new(0.1541670262813568, 0, 0.5313842296600342, 0);
G2L["15"]["BackgroundTransparency"] = 1;
G2L["15"]["Position"] = UDim2.new(0.6577792763710022, 0, 0.2479792982339859, 0);

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.GetKey
G2L["16"] = Instance.new("Frame", G2L["3"]);
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["16"]["Size"] = UDim2.new(0.19932664930820465, 0, 0.1760299652814865, 0);
G2L["16"]["Position"] = UDim2.new(0.34697607159614563, 0, 0.7490636706352234, 0);
G2L["16"]["Name"] = [[GetKey]];

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.GetKey.TextButton
G2L["17"] = Instance.new("TextButton", G2L["16"]);
G2L["17"]["TextWrapped"] = true;
G2L["17"]["TextScaled"] = true;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(143, 130, 255);
G2L["17"]["TextSize"] = 14;
G2L["17"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["17"]["TextColor3"] = Color3.fromRGB(252, 252, 252);
G2L["17"]["Size"] = UDim2.new(0.8136826753616333, 0, 1, 0);
G2L["17"]["Text"] = [[Get Key]];
G2L["17"]["Position"] = UDim2.new(-0.004637444857507944, 0, 0, 0);

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.GetKey.TextButton.UICorner
G2L["18"] = Instance.new("UICorner", G2L["17"]);
G2L["18"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.GetKey.TextButton.LocalScript
G2L["19"] = Instance.new("LocalScript", G2L["17"]);


-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.GetKey.TextButton.UITextSizeConstraint
G2L["1a"] = Instance.new("UITextSizeConstraint", G2L["17"]);
G2L["1a"]["MaxTextSize"] = 14;

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.GetKey.UICorner
G2L["1b"] = Instance.new("UICorner", G2L["16"]);
G2L["1b"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.GetKey.ImageLabel
G2L["1c"] = Instance.new("ImageLabel", G2L["16"]);
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["1c"]["Image"] = [[rbxassetid://12730592157]];
G2L["1c"]["Size"] = UDim2.new(0.14388921856880188, 0, 0.4959585964679718, 0);
G2L["1c"]["BackgroundTransparency"] = 1;
G2L["1c"]["Position"] = UDim2.new(0.6577792763710022, 0, 0.2479792982339859, 0);

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.JoinServer
G2L["1d"] = Instance.new("Frame", G2L["3"]);
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["1d"]["Size"] = UDim2.new(0.23844483494758606, 0, 0.1760299652814865, 0);
G2L["1d"]["Position"] = UDim2.new(0.5598372220993042, 0, 0.7490636706352234, 0);
G2L["1d"]["Name"] = [[JoinServer]];

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.JoinServer.TextButton
G2L["1e"] = Instance.new("TextButton", G2L["1d"]);
G2L["1e"]["TextWrapped"] = true;
G2L["1e"]["TextScaled"] = true;
G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["1e"]["TextSize"] = 14;
G2L["1e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1e"]["TextColor3"] = Color3.fromRGB(252, 252, 252);
G2L["1e"]["Size"] = UDim2.new(0.8136826753616333, 0, 1, 0);
G2L["1e"]["Text"] = [[Join Discord]];
G2L["1e"]["Position"] = UDim2.new(-0.004637444857507944, 0, 0, 0);

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.JoinServer.TextButton.UICorner
G2L["1f"] = Instance.new("UICorner", G2L["1e"]);
G2L["1f"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.JoinServer.TextButton.LocalScript
G2L["20"] = Instance.new("LocalScript", G2L["1e"]);


-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.JoinServer.TextButton.UITextSizeConstraint
G2L["21"] = Instance.new("UITextSizeConstraint", G2L["1e"]);
G2L["21"]["MaxTextSize"] = 14;

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.JoinServer.UICorner
G2L["22"] = Instance.new("UICorner", G2L["1d"]);
G2L["22"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.JoinServer.ImageLabel
G2L["23"] = Instance.new("ImageLabel", G2L["1d"]);
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(143, 130, 255);
G2L["23"]["Image"] = [[rbxassetid://12730595164]];
G2L["23"]["Size"] = UDim2.new(0.11047418415546417, 0, 0.4959585964679718, 0);
G2L["23"]["BackgroundTransparency"] = 1;
G2L["23"]["Position"] = UDim2.new(0.6944091320037842, 0, 0.2479792982339859, 0);

-- StarterGui.DeltaGui.MainUi
G2L["24"] = Instance.new("Folder", G2L["1"]);
G2L["24"]["Name"] = [[MainUi]];

-- StarterGui.DeltaGui.MainUi.MainFrame
G2L["25"] = Instance.new("Frame", G2L["24"]);
G2L["25"]["Active"] = true;
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(20, 20, 23);
G2L["25"]["Size"] = UDim2.new(0.6537454724311829, 0, 0.9718542695045471, 0);
G2L["25"]["Position"] = UDim2.new(0.17294080555438995, 0, 0.013245033100247383, 0);
G2L["25"]["Visible"] = true;
G2L["25"]["Name"] = [[MainFrame]];

-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame
G2L["26"] = Instance.new("Frame", G2L["25"]);
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26"]["BackgroundTransparency"] = 1;
G2L["26"]["Size"] = UDim2.new(0.11645293235778809, 0, 1.0000001192092896, 0);
G2L["26"]["Name"] = [[SideFrame]];

-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Logo
G2L["27"] = Instance.new("ImageLabel", G2L["26"]);
G2L["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["27"]["Image"] = [[rbxassetid://12730597972]];
G2L["27"]["Size"] = UDim2.new(1.0080041885375977, 0, 0.1372550129890442, 0);
G2L["27"]["Name"] = [[Logo]];
G2L["27"]["BackgroundTransparency"] = 1;
G2L["27"]["Position"] = UDim2.new(0.013000000268220901, 0, 0.022535257041454315, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Logo.UIAspectRatioConstraint
G2L["28"] = Instance.new("UIAspectRatioConstraint", G2L["27"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Frame
G2L["29"] = Instance.new("Frame", G2L["26"]);
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(72, 72, 72);
G2L["29"]["Size"] = UDim2.new(0, 0, 0.9890000224113464, 0);
G2L["29"]["BorderColor3"] = Color3.fromRGB(72, 72, 72);
G2L["29"]["Position"] = UDim2.new(1, 0, 0.004999999888241291, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Frame.UICorner
G2L["2a"] = Instance.new("UICorner", G2L["29"]);
G2L["2a"]["CornerRadius"] = UDim.new(0.09000000357627869, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons
G2L["2b"] = Instance.new("Folder", G2L["26"]);
G2L["2b"]["Name"] = [[Buttons]];

-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.Home
G2L["2c"] = Instance.new("ImageButton", G2L["2b"]);
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2c"]["Image"] = [[rbxassetid://12731028861]];
G2L["2c"]["Size"] = UDim2.new(0.5177212357521057, 0, 0.08347529172897339, 0);
G2L["2c"]["Name"] = [[Home]];
G2L["2c"]["Position"] = UDim2.new(0.2218806892633438, 0, 0.29020607471466064, 0);
G2L["2c"]["BackgroundTransparency"] = 1;

-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.Home.UIAspectRatioConstraint
G2L["2d"] = Instance.new("UIAspectRatioConstraint", G2L["2c"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.Home.OffImage
G2L["2e"] = Instance.new("StringValue", G2L["2c"]);
G2L["2e"]["Value"] = [[rbxassetid://12731028861]];
G2L["2e"]["Name"] = [[OffImage]];

-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.Home.OnImage
G2L["2f"] = Instance.new("StringValue", G2L["2c"]);
G2L["2f"]["Value"] = [[rbxassetid://12731052548]];
G2L["2f"]["Name"] = [[OnImage]];

-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.Home.LocalScript
G2L["30"] = Instance.new("LocalScript", G2L["2c"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.MakeScript
G2L["31"] = Instance.new("ImageButton", G2L["2b"]);
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31"]["Image"] = [[rbxassetid://12730930487]];
G2L["31"]["Size"] = UDim2.new(0.5177212357521057, 0, 0.08347529172897339, 0);
G2L["31"]["Name"] = [[MakeScript]];
G2L["31"]["Position"] = UDim2.new(0.2424367517232895, 0, 0.186909481883049, 0);
G2L["31"]["BackgroundTransparency"] = 1;

-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.MakeScript.UIAspectRatioConstraint
G2L["32"] = Instance.new("UIAspectRatioConstraint", G2L["31"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.MakeScript.OffImage
G2L["33"] = Instance.new("StringValue", G2L["31"]);
G2L["33"]["Value"] = [[rbxassetid://12730888709]];
G2L["33"]["Name"] = [[OffImage]];

-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.MakeScript.OnImage
G2L["34"] = Instance.new("StringValue", G2L["31"]);
G2L["34"]["Value"] = [[rbxassetid://12730930487]];
G2L["34"]["Name"] = [[OnImage]];

-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.MakeScript.LocalScript
G2L["35"] = Instance.new("LocalScript", G2L["31"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.Minimize
G2L["36"] = Instance.new("ImageButton", G2L["2b"]);
G2L["36"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["36"]["Image"] = [[rbxassetid://12731990314]];
G2L["36"]["Size"] = UDim2.new(0.5177212357521057, 0, 0.08347529172897339, 0);
G2L["36"]["Name"] = [[Minimize]];
G2L["36"]["Position"] = UDim2.new(0.2218806892633438, 0, 0.8980652093887329, 0);
G2L["36"]["BackgroundTransparency"] = 1;

-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.Minimize.UIAspectRatioConstraint
G2L["37"] = Instance.new("UIAspectRatioConstraint", G2L["36"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.Minimize.OffImage
G2L["38"] = Instance.new("StringValue", G2L["36"]);
G2L["38"]["Value"] = [[rbxassetid://12731990314]];
G2L["38"]["Name"] = [[OffImage]];

-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.Minimize.OnImage
G2L["39"] = Instance.new("StringValue", G2L["36"]);
G2L["39"]["Value"] = [[rbxassetid://12731990314]];
G2L["39"]["Name"] = [[OnImage]];

-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.Minimize.LocalScript
G2L["3a"] = Instance.new("LocalScript", G2L["36"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.Settings
G2L["3b"] = Instance.new("ImageButton", G2L["2b"]);
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["Image"] = [[rbxassetid://12731105925]];
G2L["3b"]["Size"] = UDim2.new(0.5177212357521057, 0, 0.08347529172897339, 0);
G2L["3b"]["Name"] = [[Settings]];
G2L["3b"]["Position"] = UDim2.new(0.2424367517232895, 0, 0.5168625116348267, 0);
G2L["3b"]["BackgroundTransparency"] = 1;

-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.Settings.UIAspectRatioConstraint
G2L["3c"] = Instance.new("UIAspectRatioConstraint", G2L["3b"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.Settings.OffImage
G2L["3d"] = Instance.new("StringValue", G2L["3b"]);
G2L["3d"]["Value"] = [[rbxassetid://12731105925]];
G2L["3d"]["Name"] = [[OffImage]];

-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.Settings.OnImage
G2L["3e"] = Instance.new("StringValue", G2L["3b"]);
G2L["3e"]["Value"] = [[rbxassetid://12731109653]];
G2L["3e"]["Name"] = [[OnImage]];

-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.Settings.LocalScript
G2L["3f"] = Instance.new("LocalScript", G2L["3b"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.Scripts
G2L["40"] = Instance.new("ImageButton", G2L["2b"]);
G2L["40"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["40"]["Image"] = [[rbxassetid://12731084214]];
G2L["40"]["Size"] = UDim2.new(0.5177212357521057, 0, 0.08347529172897339, 0);
G2L["40"]["Name"] = [[Scripts]];
G2L["40"]["Position"] = UDim2.new(0.2218806892633438, 0, 0.40612998604774475, 0);
G2L["40"]["BackgroundTransparency"] = 1;

-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.Scripts.UIAspectRatioConstraint
G2L["41"] = Instance.new("UIAspectRatioConstraint", G2L["40"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.Scripts.OffImage
G2L["42"] = Instance.new("StringValue", G2L["40"]);
G2L["42"]["Value"] = [[rbxassetid://12731084214]];
G2L["42"]["Name"] = [[OffImage]];

-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.Scripts.OnImage
G2L["43"] = Instance.new("StringValue", G2L["40"]);
G2L["43"]["Value"] = [[rbxassetid://12731089712]];
G2L["43"]["Name"] = [[OnImage]];

-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.Scripts.LocalScript
G2L["44"] = Instance.new("LocalScript", G2L["40"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.UICorner
G2L["45"] = Instance.new("UICorner", G2L["25"]);
G2L["45"]["CornerRadius"] = UDim.new(0.03999999910593033, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs
G2L["46"] = Instance.new("Folder", G2L["25"]);
G2L["46"]["Name"] = [[Tabs]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript
G2L["47"] = Instance.new("Frame", G2L["46"]);
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["47"]["BackgroundTransparency"] = 1;
G2L["47"]["Size"] = UDim2.new(0.8833174705505371, 0, 0.9945666193962097, 0);
G2L["47"]["Position"] = UDim2.new(0.11490308493375778, 0, 0.002866186201572418, 0);
G2L["47"]["Name"] = [[MakeScript]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.TitleScript
G2L["48"] = Instance.new("Frame", G2L["47"]);
G2L["48"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["48"]["BackgroundTransparency"] = 0.33329999446868896;
G2L["48"]["Size"] = UDim2.new(0.9585282802581787, 0, 0.0768190324306488, 0);
G2L["48"]["BorderColor3"] = Color3.fromRGB(15, 15, 17);
G2L["48"]["Position"] = UDim2.new(0.0236122515052557, 0, 0.019721297547221184, 0);
G2L["48"]["Visible"] = false;
G2L["48"]["Name"] = [[TitleScript]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.TitleScript.MainTextBox
G2L["49"] = Instance.new("TextBox", G2L["48"]);
G2L["49"]["PlaceholderColor3"] = Color3.fromRGB(240, 240, 240);
G2L["49"]["TextSize"] = 13;
G2L["49"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["49"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["49"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["49"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["49"]["BackgroundTransparency"] = 0.800000011920929;
G2L["49"]["PlaceholderText"] = [[Enter Your Title...]];
G2L["49"]["Size"] = UDim2.new(0.9665210843086243, 0, 0.8322147727012634, 0);
G2L["49"]["BorderColor3"] = Color3.fromRGB(15, 15, 17);
G2L["49"]["Text"] = [[]];
G2L["49"]["Position"] = UDim2.new(0.016102850437164307, 0, 0.05467604845762253, 0);
G2L["49"]["Name"] = [[MainTextBox]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.TitleScript.MainTextBox.UICorner
G2L["4a"] = Instance.new("UICorner", G2L["49"]);
G2L["4a"]["CornerRadius"] = UDim.new(0.38999998569488525, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.TitleScript.UICorner
G2L["4b"] = Instance.new("UICorner", G2L["48"]);
G2L["4b"]["CornerRadius"] = UDim.new(0.38999998569488525, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox
G2L["4c"] = Instance.new("Frame", G2L["47"]);
G2L["4c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4c"]["BackgroundTransparency"] = 0.33329999446868896;
G2L["4c"]["Size"] = UDim2.new(0.9585282802581787, 0, 0.8543484807014465, 0);
G2L["4c"]["BorderColor3"] = Color3.fromRGB(15, 15, 17);
G2L["4c"]["Position"] = UDim2.new(0.023612210527062416, 0, 0.1205858588218689, 0);
G2L["4c"]["Visible"] = false;
G2L["4c"]["Name"] = [[ScriptTextbox]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.UICorner
G2L["4d"] = Instance.new("UICorner", G2L["4c"]);
G2L["4d"]["CornerRadius"] = UDim.new(0.03999999910593033, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.GoBack
G2L["4e"] = Instance.new("Frame", G2L["4c"]);
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["4e"]["Size"] = UDim2.new(0.19932666420936584, 0, 0.0753278136253357, 0);
G2L["4e"]["Position"] = UDim2.new(0.7811665534973145, 0, 0.8959466814994812, 0);
G2L["4e"]["Name"] = [[GoBack]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.GoBack.TextButton
G2L["4f"] = Instance.new("TextButton", G2L["4e"]);
G2L["4f"]["TextWrapped"] = true;
G2L["4f"]["BackgroundColor3"] = Color3.fromRGB(143, 130, 255);
G2L["4f"]["TextSize"] = 12;
G2L["4f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4f"]["TextColor3"] = Color3.fromRGB(252, 252, 252);
G2L["4f"]["Size"] = UDim2.new(0.8136826753616333, 0, 1, 0);
G2L["4f"]["Text"] = [[Go Back]];
G2L["4f"]["Position"] = UDim2.new(-0.004637444857507944, 0, 0, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.GoBack.TextButton.UICorner
G2L["50"] = Instance.new("UICorner", G2L["4f"]);
G2L["50"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.GoBack.TextButton.LocalScript
G2L["51"] = Instance.new("LocalScript", G2L["4f"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.GoBack.UICorner
G2L["52"] = Instance.new("UICorner", G2L["4e"]);
G2L["52"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.GoBack.ImageLabel
G2L["53"] = Instance.new("ImageLabel", G2L["4e"]);
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["53"]["Image"] = [[rbxassetid://12731271008]];
G2L["53"]["Size"] = UDim2.new(0.1843939572572708, 0, 0.5821346640586853, 0);
G2L["53"]["BackgroundTransparency"] = 1;
G2L["53"]["Position"] = UDim2.new(0.6950233578681946, 0, 0.17911836504936218, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.GoBack.ImageLabel.UIAspectRatioConstraint
G2L["54"] = Instance.new("UIAspectRatioConstraint", G2L["53"]);
G2L["54"]["AspectRatio"] = 1.0000001192092896;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.AddScript
G2L["55"] = Instance.new("Frame", G2L["4c"]);
G2L["55"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["55"]["Size"] = UDim2.new(0.25788477063179016, 0, 0.0753278136253357, 0);
G2L["55"]["Position"] = UDim2.new(0.48794427514076233, 0, 0.8959466814994812, 0);
G2L["55"]["Name"] = [[AddScript]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.AddScript.TextButton
G2L["56"] = Instance.new("TextButton", G2L["55"]);
G2L["56"]["TextWrapped"] = true;
G2L["56"]["BackgroundColor3"] = Color3.fromRGB(143, 130, 255);
G2L["56"]["TextSize"] = 12;
G2L["56"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["56"]["TextColor3"] = Color3.fromRGB(252, 252, 252);
G2L["56"]["Size"] = UDim2.new(0.8136826753616333, 0, 1, 0);
G2L["56"]["Text"] = [[Add Script]];
G2L["56"]["Position"] = UDim2.new(-0.004637444857507944, 0, 0, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.AddScript.TextButton.UICorner
G2L["57"] = Instance.new("UICorner", G2L["56"]);
G2L["57"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.AddScript.TextButton.LocalScript
G2L["58"] = Instance.new("LocalScript", G2L["56"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.AddScript.UICorner
G2L["59"] = Instance.new("UICorner", G2L["55"]);
G2L["59"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.AddScript.ImageLabel
G2L["5a"] = Instance.new("ImageLabel", G2L["55"]);
G2L["5a"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["5a"]["Image"] = [[rbxassetid://12731182145]];
G2L["5a"]["Size"] = UDim2.new(0.16445015370845795, 0, 0.6716938018798828, 0);
G2L["5a"]["BackgroundTransparency"] = 1;
G2L["5a"]["Position"] = UDim2.new(0.7126173377037048, 0, 0.17911836504936218, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.AddScript.ImageLabel.UIAspectRatioConstraint
G2L["5b"] = Instance.new("UIAspectRatioConstraint", G2L["5a"]);
G2L["5b"]["AspectRatio"] = 1.0000001192092896;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.MainTextBox
G2L["5c"] = Instance.new("TextBox", G2L["4c"]);
G2L["5c"]["PlaceholderColor3"] = Color3.fromRGB(236, 236, 236);
G2L["5c"]["TextSize"] = 13;
G2L["5c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5c"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["5c"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["5c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["5c"]["MultiLine"] = true;
G2L["5c"]["BackgroundTransparency"] = 0.800000011920929;
G2L["5c"]["PlaceholderText"] = [[Enter Your Script...]];
G2L["5c"]["Size"] = UDim2.new(0.9474265575408936, 0, 0.834107518196106, 0);
G2L["5c"]["BorderColor3"] = Color3.fromRGB(15, 15, 17);
G2L["5c"]["Text"] = [[]];
G2L["5c"]["Position"] = UDim2.new(0.03306656330823898, 0, 0.031063992530107498, 0);
G2L["5c"]["Visible"] = false;
G2L["5c"]["Name"] = [[MainTextBox]];
G2L["5c"]["ClearTextOnFocus"] = false;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.MainTextBox.UICorner
G2L["5d"] = Instance.new("UICorner", G2L["5c"]);
G2L["5d"]["CornerRadius"] = UDim.new(0.38999998569488525, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar
G2L["5e"] = Instance.new("Frame", G2L["4c"]);
G2L["5e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5e"]["BackgroundTransparency"] = 1;
G2L["5e"]["Size"] = UDim2.new(0.953382134437561, 0, 0.8380939960479736, 0);
G2L["5e"]["Position"] = UDim2.new(0.025999952107667923, 0, 0.02475839853286743, 0);
G2L["5e"]["Name"] = [[TextboxBar]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript
G2L["5f"] = Instance.new("LocalScript", G2L["5e"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor
G2L["60"] = Instance.new("ModuleScript", G2L["5f"]);
G2L["60"]["Name"] = [[ScriptEditor]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Syntax
G2L["61"] = Instance.new("ModuleScript", G2L["60"]);
G2L["61"]["Name"] = [[Syntax]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Theme
G2L["62"] = Instance.new("ModuleScript", G2L["60"]);
G2L["62"]["Name"] = [[Theme]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.GetLines
G2L["63"] = Instance.new("ModuleScript", G2L["60"]);
G2L["63"]["Name"] = [[GetLines]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.FakeEditor
G2L["64"] = Instance.new("ModuleScript", G2L["60"]);
G2L["64"]["Name"] = [[FakeEditor]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.GetLine
G2L["65"] = Instance.new("ModuleScript", G2L["60"]);
G2L["65"]["Name"] = [[GetLine]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.TweenLibrary
G2L["66"] = Instance.new("ModuleScript", G2L["60"]);
G2L["66"]["Name"] = [[TweenLibrary]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.GetWord
G2L["67"] = Instance.new("ModuleScript", G2L["60"]);
G2L["67"]["Name"] = [[GetWord]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Lexer
G2L["68"] = Instance.new("ModuleScript", G2L["60"]);
G2L["68"]["Name"] = [[Lexer]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Suggestions
G2L["69"] = Instance.new("ModuleScript", G2L["60"]);
G2L["69"]["Name"] = [[Suggestions]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Words
G2L["6a"] = Instance.new("ModuleScript", G2L["60"]);
G2L["6a"]["Name"] = [[Words]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.TextFixer
G2L["6b"] = Instance.new("ModuleScript", G2L["60"]);
G2L["6b"]["Name"] = [[TextFixer]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor
G2L["6c"] = Instance.new("ImageLabel", G2L["60"]);
G2L["6c"]["BorderSizePixel"] = 0;
G2L["6c"]["BackgroundColor3"] = Color3.fromRGB(35, 41, 35);
G2L["6c"]["BackgroundTransparency"] = 1;
G2L["6c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["6c"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["6c"]["Name"] = [[Editor]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll
G2L["6d"] = Instance.new("ScrollingFrame", G2L["6c"]);
G2L["6d"]["Active"] = true;
G2L["6d"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["6d"]["ElasticBehavior"] = Enum.ElasticBehavior.Always;
G2L["6d"]["TopImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
G2L["6d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6d"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["6d"]["BackgroundTransparency"] = 0.9990000128746033;
G2L["6d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["6d"]["ScrollBarImageColor3"] = Color3.fromRGB(64, 64, 64);
G2L["6d"]["BorderColor3"] = Color3.fromRGB(53, 53, 53);
G2L["6d"]["Name"] = [[Scroll]];
G2L["6d"]["BottomImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Source
G2L["6e"] = Instance.new("TextBox", G2L["6d"]);
G2L["6e"]["TextSize"] = 17;
G2L["6e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6e"]["TextStrokeColor3"] = Color3.fromRGB(41, 41, 41);
G2L["6e"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["6e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6e"]["TextColor3"] = Color3.fromRGB(239, 239, 239);
G2L["6e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6e"]["MultiLine"] = true;
G2L["6e"]["BackgroundTransparency"] = 0.9990000128746033;
G2L["6e"]["Size"] = UDim2.new(1, -44, 1, -5);
G2L["6e"]["Text"] = [[]];
G2L["6e"]["Position"] = UDim2.new(0, 44, 0, 5);
G2L["6e"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["6e"]["Name"] = [[Source]];
G2L["6e"]["ClearTextOnFocus"] = false;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Source.LineHighlight
G2L["6f"] = Instance.new("Frame", G2L["6e"]);
G2L["6f"]["BorderSizePixel"] = 0;
G2L["6f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6f"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["6f"]["BackgroundTransparency"] = 0.9399999976158142;
G2L["6f"]["Size"] = UDim2.new(1, 0, 0, 17);
G2L["6f"]["Position"] = UDim2.new(0, -10, 0, 9);
G2L["6f"]["Name"] = [[LineHighlight]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Source.Hidden
G2L["70"] = Instance.new("TextLabel", G2L["6e"]);
G2L["70"]["BorderSizePixel"] = 0;
G2L["70"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["70"]["BackgroundColor3"] = Color3.fromRGB(27, 32, 27);
G2L["70"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["70"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["70"]["TextSize"] = 22;
G2L["70"]["TextColor3"] = Color3.fromRGB(249, 66, 164);
G2L["70"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["70"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["70"]["Text"] = [[*script hidden*]];
G2L["70"]["Name"] = [[Hidden]];
G2L["70"]["Visible"] = false;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Source.Suggestion
G2L["71"] = Instance.new("TextButton", G2L["6e"]);
G2L["71"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["71"]["BackgroundColor3"] = Color3.fromRGB(40, 40, 40);
G2L["71"]["TextSize"] = 17;
G2L["71"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["71"]["TextColor3"] = Color3.fromRGB(244, 244, 244);
G2L["71"]["Visible"] = false;
G2L["71"]["Size"] = UDim2.new(0, 130, 0, 26);
G2L["71"]["Name"] = [[Suggestion]];
G2L["71"]["BorderColor3"] = Color3.fromRGB(60, 60, 60);
G2L["71"]["Text"] = [[keyword]];
G2L["71"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["71"]["Position"] = UDim2.new(0, 0, -110, 0);
G2L["71"]["BackgroundTransparency"] = 1;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Source.Suggestion.TextPadding
G2L["72"] = Instance.new("UIPadding", G2L["71"]);
G2L["72"]["Name"] = [[TextPadding]];
G2L["72"]["PaddingLeft"] = UDim.new(0, 30);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Source.Suggestion.Icon
G2L["73"] = Instance.new("ImageLabel", G2L["71"]);
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["73"]["Image"] = [[rbxassetid://413365069]];
G2L["73"]["Size"] = UDim2.new(0, 26, 0, 26);
G2L["73"]["Name"] = [[Icon]];
G2L["73"]["BackgroundTransparency"] = 1;
G2L["73"]["Position"] = UDim2.new(0, -30, 0, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Source.Suggestion.Icon.UIAspectRatioConstraint
G2L["74"] = Instance.new("UIAspectRatioConstraint", G2L["73"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Left
G2L["75"] = Instance.new("Frame", G2L["6d"]);
G2L["75"]["BorderSizePixel"] = 0;
G2L["75"]["BackgroundColor3"] = Color3.fromRGB(45, 45, 45);
G2L["75"]["BackgroundTransparency"] = 1;
G2L["75"]["Size"] = UDim2.new(0, 27, 1, 0);
G2L["75"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["75"]["Name"] = [[Left]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Left.Right
G2L["76"] = Instance.new("Frame", G2L["75"]);
G2L["76"]["BorderSizePixel"] = 0;
G2L["76"]["BackgroundColor3"] = Color3.fromRGB(49, 49, 49);
G2L["76"]["BackgroundTransparency"] = 1;
G2L["76"]["Size"] = UDim2.new(0, 8, 1, 0);
G2L["76"]["Position"] = UDim2.new(1, 0, 0, 0);
G2L["76"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["76"]["Name"] = [[Right]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Left.Right.BottomFade
G2L["77"] = Instance.new("UIGradient", G2L["76"]);
G2L["77"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.931, 0),NumberSequenceKeypoint.new(1.000, 1)};
G2L["77"]["Name"] = [[BottomFade]];
G2L["77"]["Rotation"] = 90;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Left.Lines
G2L["78"] = Instance.new("TextLabel", G2L["75"]);
G2L["78"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["78"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["78"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["78"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["78"]["TextSize"] = 17;
G2L["78"]["TextColor3"] = Color3.fromRGB(242, 242, 242);
G2L["78"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["78"]["Size"] = UDim2.new(1, -5, 1, -7);
G2L["78"]["Text"] = [[1]];
G2L["78"]["Name"] = [[Lines]];
G2L["78"]["BackgroundTransparency"] = 0.9990000128746033;
G2L["78"]["Position"] = UDim2.new(0, 5, 0, 7);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Left.Lines.BottomFade
G2L["79"] = Instance.new("UIGradient", G2L["78"]);
G2L["79"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.931, 0),NumberSequenceKeypoint.new(1.000, 1)};
G2L["79"]["Name"] = [[BottomFade]];
G2L["79"]["Rotation"] = 90;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Left.AdaptSize
G2L["7a"] = Instance.new("LocalScript", G2L["75"]);
G2L["7a"]["Name"] = [[AdaptSize]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Left.BottomFade
G2L["7b"] = Instance.new("UIGradient", G2L["75"]);
G2L["7b"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.931, 0),NumberSequenceKeypoint.new(1.000, 1)};
G2L["7b"]["Name"] = [[BottomFade]];
G2L["7b"]["Rotation"] = 90;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.Scripts
G2L["7c"] = Instance.new("ScrollingFrame", G2L["47"]);
G2L["7c"]["Active"] = true;
G2L["7c"]["CanvasSize"] = UDim2.new(0, 0, 10, 0);
G2L["7c"]["BackgroundColor3"] = Color3.fromRGB(20, 20, 23);
G2L["7c"]["BackgroundTransparency"] = 1;
G2L["7c"]["Size"] = UDim2.new(0.9701896905899048, 0, 0.8328530192375183, 0);
G2L["7c"]["ScrollBarImageColor3"] = Color3.fromRGB(20, 20, 23);
G2L["7c"]["BorderColor3"] = Color3.fromRGB(20, 20, 23);
G2L["7c"]["Position"] = UDim2.new(0.02981029823422432, 0, 0.13256484270095825, 0);
G2L["7c"]["Name"] = [[Scripts]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.Scripts.ScriptFrame
G2L["7d"] = Instance.new("Frame", G2L["7c"]);
G2L["7d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7d"]["BackgroundTransparency"] = 1;
G2L["7d"]["Size"] = UDim2.new(0.9900000095367432, 0, 1, 0);
G2L["7d"]["Position"] = UDim2.new(0, 0, 0.011527378112077713, 0);
G2L["7d"]["Name"] = [[ScriptFrame]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.Scripts.ScriptFrame.UIListLayout
G2L["7e"] = Instance.new("UIListLayout", G2L["7d"]);
G2L["7e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.Scripts.Folder
G2L["7f"] = Instance.new("Folder", G2L["7c"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.Scripts.LIST
G2L["80"] = Instance.new("Frame", G2L["7c"]);
G2L["80"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["80"]["BackgroundTransparency"] = 1;
G2L["80"]["Size"] = UDim2.new(0.9800000190734863, 0, 0.03500000014901161, 0);
G2L["80"]["Position"] = UDim2.new(-4.305284306838075e-08, 0, 5.496681776406831e-09, 0);
G2L["80"]["Visible"] = false;
G2L["80"]["Name"] = [[LIST]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.Scripts.LIST.TitleScript
G2L["81"] = Instance.new("Frame", G2L["80"]);
G2L["81"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["81"]["BackgroundTransparency"] = 0.33329999446868896;
G2L["81"]["Size"] = UDim2.new(0.542340874671936, 0, 0.7513126134872437, 0);
G2L["81"]["BorderColor3"] = Color3.fromRGB(15, 15, 17);
G2L["81"]["Position"] = UDim2.new(-0.002550613135099411, 0, 0.110756054520607, 0);
G2L["81"]["Name"] = [[TitleScript]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.Scripts.LIST.TitleScript.UICorner
G2L["82"] = Instance.new("UICorner", G2L["81"]);
G2L["82"]["CornerRadius"] = UDim.new(0.38999998569488525, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.Scripts.LIST.TitleScript.TextLabel
G2L["83"] = Instance.new("TextLabel", G2L["81"]);
G2L["83"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["83"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["83"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["83"]["TextSize"] = 13;
G2L["83"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["83"]["Size"] = UDim2.new(0.9670000076293945, 0, 0.8320000171661377, 0);
G2L["83"]["Text"] = [[Hoho Hub Script for BF]];
G2L["83"]["BackgroundTransparency"] = 1;
G2L["83"]["Position"] = UDim2.new(0.01600000075995922, 0, 0.054999999701976776, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.Scripts.LIST.TitleScript.TextLabel.UICorner
G2L["84"] = Instance.new("UICorner", G2L["83"]);
G2L["84"]["CornerRadius"] = UDim.new(0.38999998569488525, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.Scripts.LIST.Execute
G2L["85"] = Instance.new("Frame", G2L["80"]);
G2L["85"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["85"]["Size"] = UDim2.new(0.20491595566272736, 0, 0.7415456175804138, 0);
G2L["85"]["Position"] = UDim2.new(0.5597181916236877, 0, 0.1205231249332428, 0);
G2L["85"]["Name"] = [[Execute]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.Scripts.LIST.Execute.TextButton
G2L["86"] = Instance.new("TextButton", G2L["85"]);
G2L["86"]["TextWrapped"] = true;
G2L["86"]["BackgroundColor3"] = Color3.fromRGB(143, 130, 255);
G2L["86"]["TextSize"] = 12;
G2L["86"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["86"]["TextColor3"] = Color3.fromRGB(252, 252, 252);
G2L["86"]["Size"] = UDim2.new(0.8136826753616333, 0, 1, 0);
G2L["86"]["Text"] = [[Execute]];
G2L["86"]["Position"] = UDim2.new(-0.004637444857507944, 0, 0, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.Scripts.LIST.Execute.TextButton.UICorner
G2L["87"] = Instance.new("UICorner", G2L["86"]);
G2L["87"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.Scripts.LIST.Execute.UICorner
G2L["88"] = Instance.new("UICorner", G2L["85"]);
G2L["88"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.Scripts.LIST.Execute.ImageLabel
G2L["89"] = Instance.new("ImageLabel", G2L["85"]);
G2L["89"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["89"]["Image"] = [[rbxassetid://12730588268]];
G2L["89"]["Size"] = UDim2.new(0.20393863320350647, 0, 0.7066323161125183, 0);
G2L["89"]["BackgroundTransparency"] = 1;
G2L["89"]["Position"] = UDim2.new(0.7205832004547119, 0, 0.14132645726203918, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.Scripts.LIST.Delete
G2L["8a"] = Instance.new("Frame", G2L["80"]);
G2L["8a"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["8a"]["Size"] = UDim2.new(0.20491595566272736, 0, 0.7415456175804138, 0);
G2L["8a"]["Position"] = UDim2.new(0.7835553884506226, 0, 0.1205231249332428, 0);
G2L["8a"]["Name"] = [[Delete]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.Scripts.LIST.Delete.TextButton
G2L["8b"] = Instance.new("TextButton", G2L["8a"]);
G2L["8b"]["TextWrapped"] = true;
G2L["8b"]["BackgroundColor3"] = Color3.fromRGB(143, 130, 255);
G2L["8b"]["TextSize"] = 12;
G2L["8b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8b"]["TextColor3"] = Color3.fromRGB(252, 252, 252);
G2L["8b"]["Size"] = UDim2.new(0.8136826753616333, 0, 1, 0);
G2L["8b"]["Text"] = [[Delete]];
G2L["8b"]["Position"] = UDim2.new(-0.004637444857507944, 0, 0, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.Scripts.LIST.Delete.TextButton.UICorner
G2L["8c"] = Instance.new("UICorner", G2L["8b"]);
G2L["8c"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.Scripts.LIST.Delete.UICorner
G2L["8d"] = Instance.new("UICorner", G2L["8a"]);
G2L["8d"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.Scripts.LIST.Delete.ImageLabel
G2L["8e"] = Instance.new("ImageLabel", G2L["8a"]);
G2L["8e"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["8e"]["Image"] = [[rbxassetid://12731675545]];
G2L["8e"]["Size"] = UDim2.new(0.20393863320350647, 0, 0.7066323161125183, 0);
G2L["8e"]["BackgroundTransparency"] = 1;
G2L["8e"]["Position"] = UDim2.new(0.640999972820282, 0, 0.14100000262260437, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.Scripts.LIST.UIAspectRatioConstraint
G2L["8f"] = Instance.new("UIAspectRatioConstraint", G2L["80"]);
G2L["8f"]["AspectRatio"] = 14.29936695098877;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.AddScript1
G2L["90"] = Instance.new("Frame", G2L["47"]);
G2L["90"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["90"]["Size"] = UDim2.new(0.19932666420936584, 0, 0.06368814408779144, 0);
G2L["90"]["Position"] = UDim2.new(0.7670302391052246, 0, 0.017075123265385628, 0);
G2L["90"]["Name"] = [[AddScript1]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.AddScript1.TextButton
G2L["91"] = Instance.new("TextButton", G2L["90"]);
G2L["91"]["TextWrapped"] = true;
G2L["91"]["BackgroundColor3"] = Color3.fromRGB(143, 130, 255);
G2L["91"]["TextSize"] = 12;
G2L["91"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["91"]["TextColor3"] = Color3.fromRGB(252, 252, 252);
G2L["91"]["Size"] = UDim2.new(0.8136826753616333, 0, 1, 0);
G2L["91"]["Text"] = [[Add Script]];
G2L["91"]["Position"] = UDim2.new(-0.004637444857507944, 0, 0, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.AddScript1.TextButton.UICorner
G2L["92"] = Instance.new("UICorner", G2L["91"]);
G2L["92"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.AddScript1.TextButton.LocalScript
G2L["93"] = Instance.new("LocalScript", G2L["91"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.AddScript1.UICorner
G2L["94"] = Instance.new("UICorner", G2L["90"]);
G2L["94"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.AddScript1.ImageLabel
G2L["95"] = Instance.new("ImageLabel", G2L["90"]);
G2L["95"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["95"]["Image"] = [[rbxassetid://12731182145]];
G2L["95"]["Size"] = UDim2.new(0.20393863320350647, 0, 0.7066323161125183, 0);
G2L["95"]["BackgroundTransparency"] = 1;
G2L["95"]["Position"] = UDim2.new(0.7205832004547119, 0, 0.14132645726203918, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home
G2L["96"] = Instance.new("Frame", G2L["46"]);
G2L["96"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["96"]["BackgroundTransparency"] = 1;
G2L["96"]["Size"] = UDim2.new(0.8833174705505371, 0, 0.9945666193962097, 0);
G2L["96"]["Position"] = UDim2.new(0.11490308493375778, 0, 0.002866186201572418, 0);
G2L["96"]["Visible"] = false;
G2L["96"]["Name"] = [[Home]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox
G2L["97"] = Instance.new("Frame", G2L["96"]);
G2L["97"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["97"]["BackgroundTransparency"] = 0.33329999446868896;
G2L["97"]["Size"] = UDim2.new(0.9585282802581787, 0, 0.9365506768226624, 0);
G2L["97"]["BorderColor3"] = Color3.fromRGB(15, 15, 17);
G2L["97"]["Position"] = UDim2.new(0.023612210527062416, 0, 0.0383836105465889, 0);
G2L["97"]["Name"] = [[ScriptTextbox]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.UICorner
G2L["98"] = Instance.new("UICorner", G2L["97"]);
G2L["98"]["CornerRadius"] = UDim.new(0.03999999910593033, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.Execute
G2L["99"] = Instance.new("Frame", G2L["97"]);
G2L["99"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["99"]["Size"] = UDim2.new(0.2710147798061371, 0, 0.0753278136253357, 0);
G2L["99"]["Position"] = UDim2.new(0.032752323895692825, 0, 0.8925735354423523, 0);
G2L["99"]["Name"] = [[Execute]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.Execute.TextButton
G2L["9a"] = Instance.new("TextButton", G2L["99"]);
G2L["9a"]["TextWrapped"] = true;
G2L["9a"]["BackgroundColor3"] = Color3.fromRGB(143, 130, 255);
G2L["9a"]["TextSize"] = 12;
G2L["9a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9a"]["TextColor3"] = Color3.fromRGB(252, 252, 252);
G2L["9a"]["Size"] = UDim2.new(0.8136826753616333, 0, 1, 0);
G2L["9a"]["Text"] = [[Execute Text]];
G2L["9a"]["Position"] = UDim2.new(-0.004637444857507944, 0, 0, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.Execute.TextButton.UICorner
G2L["9b"] = Instance.new("UICorner", G2L["9a"]);
G2L["9b"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.Execute.TextButton.LocalScript
G2L["9c"] = Instance.new("LocalScript", G2L["9a"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.Execute.UICorner
G2L["9d"] = Instance.new("UICorner", G2L["99"]);
G2L["9d"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.Execute.ImageLabel
G2L["9e"] = Instance.new("ImageLabel", G2L["99"]);
G2L["9e"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["9e"]["Image"] = [[rbxassetid://12731759847]];
G2L["9e"]["Size"] = UDim2.new(0.14605075120925903, 0, 0.6269142031669617, 0);
G2L["9e"]["BackgroundTransparency"] = 1;
G2L["9e"]["Position"] = UDim2.new(0.7229999899864197, 0, 0.17900000512599945, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.Execute.ImageLabel.UIAspectRatioConstraint
G2L["9f"] = Instance.new("UIAspectRatioConstraint", G2L["9e"]);
G2L["9f"]["AspectRatio"] = 1.0000001192092896;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.Clear
G2L["a0"] = Instance.new("Frame", G2L["97"]);
G2L["a0"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["a0"]["Size"] = UDim2.new(0.19932666420936584, 0, 0.0753278136253357, 0);
G2L["a0"]["Position"] = UDim2.new(0.32880187034606934, 0, 0.8925735354423523, 0);
G2L["a0"]["Name"] = [[Clear]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.Clear.TextButton
G2L["a1"] = Instance.new("TextButton", G2L["a0"]);
G2L["a1"]["TextWrapped"] = true;
G2L["a1"]["BackgroundColor3"] = Color3.fromRGB(143, 130, 255);
G2L["a1"]["TextSize"] = 12;
G2L["a1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a1"]["TextColor3"] = Color3.fromRGB(252, 252, 252);
G2L["a1"]["Size"] = UDim2.new(0.8136826753616333, 0, 1, 0);
G2L["a1"]["Text"] = [[Clear]];
G2L["a1"]["Position"] = UDim2.new(-0.004637444857507944, 0, 0, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.Clear.TextButton.UICorner
G2L["a2"] = Instance.new("UICorner", G2L["a1"]);
G2L["a2"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.Clear.TextButton.LocalScript
G2L["a3"] = Instance.new("LocalScript", G2L["a1"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.Clear.UICorner
G2L["a4"] = Instance.new("UICorner", G2L["a0"]);
G2L["a4"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.Clear.ImageLabel
G2L["a5"] = Instance.new("ImageLabel", G2L["a0"]);
G2L["a5"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["a5"]["Image"] = [[rbxassetid://12731778060]];
G2L["a5"]["Size"] = UDim2.new(0.1843939572572708, 0, 0.5821346640586853, 0);
G2L["a5"]["BackgroundTransparency"] = 1;
G2L["a5"]["Position"] = UDim2.new(0.6240000128746033, 0, 0.21400000154972076, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.Clear.ImageLabel.UIAspectRatioConstraint
G2L["a6"] = Instance.new("UIAspectRatioConstraint", G2L["a5"]);
G2L["a6"]["AspectRatio"] = 1.0000001192092896;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.ExecuteClipboard
G2L["a7"] = Instance.new("Frame", G2L["97"]);
G2L["a7"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["a7"]["Size"] = UDim2.new(0.3159777522087097, 0, 0.0753278136253357, 0);
G2L["a7"]["Position"] = UDim2.new(0.5501444339752197, 0, 0.8892003893852234, 0);
G2L["a7"]["Name"] = [[ExecuteClipboard]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.ExecuteClipboard.TextButton
G2L["a8"] = Instance.new("TextButton", G2L["a7"]);
G2L["a8"]["TextWrapped"] = true;
G2L["a8"]["BackgroundColor3"] = Color3.fromRGB(143, 130, 255);
G2L["a8"]["TextSize"] = 12;
G2L["a8"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a8"]["TextColor3"] = Color3.fromRGB(252, 252, 252);
G2L["a8"]["Size"] = UDim2.new(0.8136826753616333, 0, 1, 0);
G2L["a8"]["Text"] = [[Execute Clipboard]];
G2L["a8"]["Position"] = UDim2.new(-0.004637444857507944, 0, 0, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.ExecuteClipboard.TextButton.UICorner
G2L["a9"] = Instance.new("UICorner", G2L["a8"]);
G2L["a9"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.ExecuteClipboard.TextButton.LocalScript
G2L["aa"] = Instance.new("LocalScript", G2L["a8"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.ExecuteClipboard.UICorner
G2L["ab"] = Instance.new("UICorner", G2L["a7"]);
G2L["ab"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.ExecuteClipboard.ImageLabel
G2L["ac"] = Instance.new("ImageLabel", G2L["a7"]);
G2L["ac"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["ac"]["Image"] = [[rbxassetid://12731907784]];
G2L["ac"]["Size"] = UDim2.new(0.11632032692432404, 0, 0.5821346640586853, 0);
G2L["ac"]["BackgroundTransparency"] = 1;
G2L["ac"]["Position"] = UDim2.new(0.7695035934448242, 0, 0.17911836504936218, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.ExecuteClipboard.ImageLabel.UIAspectRatioConstraint
G2L["ad"] = Instance.new("UIAspectRatioConstraint", G2L["ac"]);
G2L["ad"]["AspectRatio"] = 1.0000001192092896;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar
G2L["ae"] = Instance.new("Frame", G2L["97"]);
G2L["ae"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ae"]["BackgroundTransparency"] = 1;
G2L["ae"]["Size"] = UDim2.new(0.953382134437561, 0, 0.8380939960479736, 0);
G2L["ae"]["Position"] = UDim2.new(0.025999952107667923, 0, 0.02475839853286743, 0);
G2L["ae"]["Name"] = [[TextboxBar]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript
G2L["af"] = Instance.new("LocalScript", G2L["ae"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor
G2L["b0"] = Instance.new("ModuleScript", G2L["af"]);
G2L["b0"]["Name"] = [[ScriptEditor]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Syntax
G2L["b1"] = Instance.new("ModuleScript", G2L["b0"]);
G2L["b1"]["Name"] = [[Syntax]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Theme
G2L["b2"] = Instance.new("ModuleScript", G2L["b0"]);
G2L["b2"]["Name"] = [[Theme]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.GetLines
G2L["b3"] = Instance.new("ModuleScript", G2L["b0"]);
G2L["b3"]["Name"] = [[GetLines]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.FakeEditor
G2L["b4"] = Instance.new("ModuleScript", G2L["b0"]);
G2L["b4"]["Name"] = [[FakeEditor]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.GetLine
G2L["b5"] = Instance.new("ModuleScript", G2L["b0"]);
G2L["b5"]["Name"] = [[GetLine]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.TweenLibrary
G2L["b6"] = Instance.new("ModuleScript", G2L["b0"]);
G2L["b6"]["Name"] = [[TweenLibrary]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.GetWord
G2L["b7"] = Instance.new("ModuleScript", G2L["b0"]);
G2L["b7"]["Name"] = [[GetWord]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Lexer
G2L["b8"] = Instance.new("ModuleScript", G2L["b0"]);
G2L["b8"]["Name"] = [[Lexer]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Suggestions
G2L["b9"] = Instance.new("ModuleScript", G2L["b0"]);
G2L["b9"]["Name"] = [[Suggestions]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Words
G2L["ba"] = Instance.new("ModuleScript", G2L["b0"]);
G2L["ba"]["Name"] = [[Words]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.TextFixer
G2L["bb"] = Instance.new("ModuleScript", G2L["b0"]);
G2L["bb"]["Name"] = [[TextFixer]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor
G2L["bc"] = Instance.new("ImageLabel", G2L["b0"]);
G2L["bc"]["BorderSizePixel"] = 0;
G2L["bc"]["BackgroundColor3"] = Color3.fromRGB(35, 41, 35);
G2L["bc"]["BackgroundTransparency"] = 1;
G2L["bc"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["bc"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["bc"]["Name"] = [[Editor]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll
G2L["bd"] = Instance.new("ScrollingFrame", G2L["bc"]);
G2L["bd"]["Active"] = true;
G2L["bd"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["bd"]["ElasticBehavior"] = Enum.ElasticBehavior.Always;
G2L["bd"]["TopImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
G2L["bd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bd"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["bd"]["BackgroundTransparency"] = 0.9990000128746033;
G2L["bd"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["bd"]["ScrollBarImageColor3"] = Color3.fromRGB(64, 64, 64);
G2L["bd"]["BorderColor3"] = Color3.fromRGB(53, 53, 53);
G2L["bd"]["Name"] = [[Scroll]];
G2L["bd"]["BottomImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Source
G2L["be"] = Instance.new("TextBox", G2L["bd"]);
G2L["be"]["TextSize"] = 17;
G2L["be"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["be"]["TextStrokeColor3"] = Color3.fromRGB(41, 41, 41);
G2L["be"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["be"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["be"]["TextColor3"] = Color3.fromRGB(239, 239, 239);
G2L["be"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["be"]["MultiLine"] = true;
G2L["be"]["BackgroundTransparency"] = 0.9990000128746033;
G2L["be"]["Size"] = UDim2.new(1, -44, 1, -5);
G2L["be"]["Text"] = [[]];
G2L["be"]["Position"] = UDim2.new(0, 44, 0, 5);
G2L["be"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["be"]["Name"] = [[Source]];
G2L["be"]["ClearTextOnFocus"] = false;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Source.LineHighlight
G2L["bf"] = Instance.new("Frame", G2L["be"]);
G2L["bf"]["BorderSizePixel"] = 0;
G2L["bf"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bf"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["bf"]["BackgroundTransparency"] = 0.9399999976158142;
G2L["bf"]["Size"] = UDim2.new(1, 0, 0, 17);
G2L["bf"]["Position"] = UDim2.new(0, -10, 0, 9);
G2L["bf"]["Name"] = [[LineHighlight]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Source.Hidden
G2L["c0"] = Instance.new("TextLabel", G2L["be"]);
G2L["c0"]["BorderSizePixel"] = 0;
G2L["c0"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["c0"]["BackgroundColor3"] = Color3.fromRGB(27, 32, 27);
G2L["c0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c0"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c0"]["TextSize"] = 22;
G2L["c0"]["TextColor3"] = Color3.fromRGB(249, 66, 164);
G2L["c0"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["c0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c0"]["Text"] = [[*script hidden*]];
G2L["c0"]["Name"] = [[Hidden]];
G2L["c0"]["Visible"] = false;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Source.Suggestion
G2L["c1"] = Instance.new("TextButton", G2L["be"]);
G2L["c1"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c1"]["BackgroundColor3"] = Color3.fromRGB(40, 40, 40);
G2L["c1"]["TextSize"] = 17;
G2L["c1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["c1"]["TextColor3"] = Color3.fromRGB(244, 244, 244);
G2L["c1"]["Visible"] = false;
G2L["c1"]["Size"] = UDim2.new(0, 130, 0, 26);
G2L["c1"]["Name"] = [[Suggestion]];
G2L["c1"]["BorderColor3"] = Color3.fromRGB(60, 60, 60);
G2L["c1"]["Text"] = [[keyword]];
G2L["c1"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["c1"]["BackgroundTransparency"] = 1;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Source.Suggestion.TextPadding
G2L["c2"] = Instance.new("UIPadding", G2L["c1"]);
G2L["c2"]["Name"] = [[TextPadding]];
G2L["c2"]["PaddingLeft"] = UDim.new(0, 30);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Source.Suggestion.Icon
G2L["c3"] = Instance.new("ImageLabel", G2L["c1"]);
G2L["c3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c3"]["Image"] = [[rbxassetid://413365069]];
G2L["c3"]["Size"] = UDim2.new(0, 26, 0, 26);
G2L["c3"]["Name"] = [[Icon]];
G2L["c3"]["BackgroundTransparency"] = 1;
G2L["c3"]["Position"] = UDim2.new(0, -30, 0, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Source.Suggestion.Icon.UIAspectRatioConstraint
G2L["c4"] = Instance.new("UIAspectRatioConstraint", G2L["c3"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Left
G2L["c5"] = Instance.new("Frame", G2L["bd"]);
G2L["c5"]["BorderSizePixel"] = 0;
G2L["c5"]["BackgroundColor3"] = Color3.fromRGB(45, 45, 45);
G2L["c5"]["BackgroundTransparency"] = 1;
G2L["c5"]["Size"] = UDim2.new(0, 27, 1, 0);
G2L["c5"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["c5"]["Name"] = [[Left]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Left.Right
G2L["c6"] = Instance.new("Frame", G2L["c5"]);
G2L["c6"]["BorderSizePixel"] = 0;
G2L["c6"]["BackgroundColor3"] = Color3.fromRGB(49, 49, 49);
G2L["c6"]["BackgroundTransparency"] = 1;
G2L["c6"]["Size"] = UDim2.new(0, 8, 1, 0);
G2L["c6"]["Position"] = UDim2.new(1, 0, 0, 0);
G2L["c6"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["c6"]["Name"] = [[Right]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Left.Right.BottomFade
G2L["c7"] = Instance.new("UIGradient", G2L["c6"]);
G2L["c7"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.931, 0),NumberSequenceKeypoint.new(1.000, 1)};
G2L["c7"]["Name"] = [[BottomFade]];
G2L["c7"]["Rotation"] = 90;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Left.Lines
G2L["c8"] = Instance.new("TextLabel", G2L["c5"]);
G2L["c8"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["c8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c8"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c8"]["TextSize"] = 17;
G2L["c8"]["TextColor3"] = Color3.fromRGB(242, 242, 242);
G2L["c8"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["c8"]["Size"] = UDim2.new(1, -5, 1, -7);
G2L["c8"]["Text"] = [[1]];
G2L["c8"]["Name"] = [[Lines]];
G2L["c8"]["BackgroundTransparency"] = 0.9990000128746033;
G2L["c8"]["Position"] = UDim2.new(0, 5, 0, 7);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Left.Lines.BottomFade
G2L["c9"] = Instance.new("UIGradient", G2L["c8"]);
G2L["c9"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.931, 0),NumberSequenceKeypoint.new(1.000, 1)};
G2L["c9"]["Name"] = [[BottomFade]];
G2L["c9"]["Rotation"] = 90;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Left.AdaptSize
G2L["ca"] = Instance.new("LocalScript", G2L["c5"]);
G2L["ca"]["Name"] = [[AdaptSize]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Left.BottomFade
G2L["cb"] = Instance.new("UIGradient", G2L["c5"]);
G2L["cb"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.931, 0),NumberSequenceKeypoint.new(1.000, 1)};
G2L["cb"]["Name"] = [[BottomFade]];
G2L["cb"]["Rotation"] = 90;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts
G2L["cc"] = Instance.new("Frame", G2L["46"]);
G2L["cc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cc"]["BackgroundTransparency"] = 1;
G2L["cc"]["Size"] = UDim2.new(0.8833174705505371, 0, 0.9945666193962097, 0);
G2L["cc"]["Position"] = UDim2.new(0.11490308493375778, 0, 0.002866186201572418, 0);
G2L["cc"]["Visible"] = false;
G2L["cc"]["Name"] = [[Scripts]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.TitleScript
G2L["cd"] = Instance.new("Frame", G2L["cc"]);
G2L["cd"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cd"]["BackgroundTransparency"] = 0.33329999446868896;
G2L["cd"]["Size"] = UDim2.new(0.7389585375785828, 0, 0.0768190324306488, 0);
G2L["cd"]["BorderColor3"] = Color3.fromRGB(15, 15, 17);
G2L["cd"]["Position"] = UDim2.new(0.02895212545990944, 0, 0.04599999263882637, 0);
G2L["cd"]["Name"] = [[TitleScript]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.TitleScript.MainTextBox
G2L["ce"] = Instance.new("TextBox", G2L["cd"]);
G2L["ce"]["PlaceholderColor3"] = Color3.fromRGB(240, 240, 240);
G2L["ce"]["TextSize"] = 13;
G2L["ce"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ce"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["ce"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ce"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["ce"]["BackgroundTransparency"] = 0.800000011920929;
G2L["ce"]["PlaceholderText"] = [[Enter your search...]];
G2L["ce"]["Size"] = UDim2.new(0.9665210843086243, 0, 0.8322147727012634, 0);
G2L["ce"]["BorderColor3"] = Color3.fromRGB(15, 15, 17);
G2L["ce"]["Text"] = [[]];
G2L["ce"]["Position"] = UDim2.new(0.016102850437164307, 0, 0.054676055908203125, 0);
G2L["ce"]["Name"] = [[MainTextBox]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.TitleScript.MainTextBox.UICorner
G2L["cf"] = Instance.new("UICorner", G2L["ce"]);
G2L["cf"]["CornerRadius"] = UDim.new(0.38999998569488525, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.TitleScript.UICorner
G2L["d0"] = Instance.new("UICorner", G2L["cd"]);
G2L["d0"]["CornerRadius"] = UDim.new(0.38999998569488525, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts
G2L["d1"] = Instance.new("ScrollingFrame", G2L["cc"]);
G2L["d1"]["Active"] = true;
G2L["d1"]["CanvasSize"] = UDim2.new(0, 0, 10, 0);
G2L["d1"]["BackgroundColor3"] = Color3.fromRGB(20, 20, 23);
G2L["d1"]["BackgroundTransparency"] = 1;
G2L["d1"]["Size"] = UDim2.new(0.9701896905899048, 0, 0.8328530192375183, 0);
G2L["d1"]["ScrollBarImageColor3"] = Color3.fromRGB(196, 196, 196);
G2L["d1"]["BorderColor3"] = Color3.fromRGB(20, 20, 23);
G2L["d1"]["ScrollBarThickness"] = 4;
G2L["d1"]["Position"] = UDim2.new(0.02981029823422432, 0, 0.13256484270095825, 0);
G2L["d1"]["Name"] = [[Scripts]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.ScriptFrame
G2L["d2"] = Instance.new("Frame", G2L["d1"]);
G2L["d2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d2"]["BackgroundTransparency"] = 1;
G2L["d2"]["Size"] = UDim2.new(0.9900000095367432, 0, 1, 0);
G2L["d2"]["Position"] = UDim2.new(0, 0, 0.011527378112077713, 0);
G2L["d2"]["Name"] = [[ScriptFrame]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.ScriptFrame.UIListLayout
G2L["d3"] = Instance.new("UIListLayout", G2L["d2"]);
G2L["d3"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder
G2L["d4"] = Instance.new("Folder", G2L["d1"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST
G2L["d5"] = Instance.new("Frame", G2L["d4"]);
G2L["d5"]["BackgroundColor3"] = Color3.fromRGB(14, 14, 14);
G2L["d5"]["Size"] = UDim2.new(0.9971014261245728, 0, 0.2692020535469055, 0);
G2L["d5"]["Position"] = UDim2.new(-0.0028985326644033194, 0, 0, 0);
G2L["d5"]["Visible"] = false;
G2L["d5"]["Name"] = [[LIST]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.UICorner
G2L["d6"] = Instance.new("UICorner", G2L["d5"]);
G2L["d6"]["CornerRadius"] = UDim.new(0.07999999821186066, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.ImageButton
G2L["d7"] = Instance.new("ImageButton", G2L["d5"]);
G2L["d7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d7"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["d7"]["Size"] = UDim2.new(0.7325581312179565, 0, 0.8105263113975525, 0);
G2L["d7"]["Position"] = UDim2.new(0.011627906933426857, 0, 0, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.ImageButton.UICorner
G2L["d8"] = Instance.new("UICorner", G2L["d7"]);
G2L["d8"]["CornerRadius"] = UDim.new(0.07999999821186066, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.NameScript
G2L["d9"] = Instance.new("TextLabel", G2L["d5"]);
G2L["d9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["d9"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["d9"]["TextSize"] = 14;
G2L["d9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d9"]["Size"] = UDim2.new(0.5532065033912659, 0, 0.10177130252122879, 0);
G2L["d9"]["Text"] = [[Name Hub]];
G2L["d9"]["Name"] = [[NameScript]];
G2L["d9"]["BackgroundTransparency"] = 1;
G2L["d9"]["Position"] = UDim2.new(0.03259729966521263, 0, 0.8526315689086914, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.Credit
G2L["da"] = Instance.new("TextLabel", G2L["d5"]);
G2L["da"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["da"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["da"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["da"]["TextSize"] = 14;
G2L["da"]["TextColor3"] = Color3.fromRGB(185, 185, 185);
G2L["da"]["Size"] = UDim2.new(0.3924419581890106, 0, 0.10177130252122879, 0);
G2L["da"]["Text"] = [[Uploaded By: ???]];
G2L["da"]["Name"] = [[Credit]];
G2L["da"]["BackgroundTransparency"] = 1;
G2L["da"]["Position"] = UDim2.new(0.5858038067817688, 0, 0.8526315689086914, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.Execute
G2L["db"] = Instance.new("Frame", G2L["d5"]);
G2L["db"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["db"]["Size"] = UDim2.new(0.18748296797275543, 0, 0.09933300316333771, 0);
G2L["db"]["Position"] = UDim2.new(0.7772064805030823, 0, 0.0343393050134182, 0);
G2L["db"]["Name"] = [[Execute]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.Execute.TextButton
G2L["dc"] = Instance.new("TextButton", G2L["db"]);
G2L["dc"]["TextWrapped"] = true;
G2L["dc"]["BackgroundColor3"] = Color3.fromRGB(143, 130, 255);
G2L["dc"]["TextSize"] = 12;
G2L["dc"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["dc"]["TextColor3"] = Color3.fromRGB(252, 252, 252);
G2L["dc"]["Size"] = UDim2.new(0.8136826753616333, 0, 1, 0);
G2L["dc"]["Text"] = [[Execute]];
G2L["dc"]["Position"] = UDim2.new(-0.004637444857507944, 0, 0, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.Execute.TextButton.UICorner
G2L["dd"] = Instance.new("UICorner", G2L["dc"]);
G2L["dd"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.Execute.UICorner
G2L["de"] = Instance.new("UICorner", G2L["db"]);
G2L["de"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.Execute.ImageLabel
G2L["df"] = Instance.new("ImageLabel", G2L["db"]);
G2L["df"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["df"]["Image"] = [[rbxassetid://12730588268]];
G2L["df"]["Size"] = UDim2.new(0.18111810088157654, 0, 0.64662104845047, 0);
G2L["df"]["BackgroundTransparency"] = 1;
G2L["df"]["Position"] = UDim2.new(0.6791929006576538, 0, 0.1616552621126175, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.Execute.UIAspectRatioConstraint
G2L["e0"] = Instance.new("UIAspectRatioConstraint", G2L["db"]);
G2L["e0"]["AspectRatio"] = 3.570162534713745;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.Save
G2L["e1"] = Instance.new("Frame", G2L["d5"]);
G2L["e1"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["e1"]["Size"] = UDim2.new(0.18748296797275543, 0, 0.09933300316333771, 0);
G2L["e1"]["Position"] = UDim2.new(0.7772064805030823, 0, 0.1766234040260315, 0);
G2L["e1"]["Name"] = [[Save]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.Save.TextButton
G2L["e2"] = Instance.new("TextButton", G2L["e1"]);
G2L["e2"]["TextWrapped"] = true;
G2L["e2"]["BackgroundColor3"] = Color3.fromRGB(143, 130, 255);
G2L["e2"]["TextSize"] = 12;
G2L["e2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e2"]["TextColor3"] = Color3.fromRGB(252, 252, 252);
G2L["e2"]["Size"] = UDim2.new(0.8136826753616333, 0, 1, 0);
G2L["e2"]["Text"] = [[Save]];
G2L["e2"]["Position"] = UDim2.new(-0.004637444857507944, 0, 0, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.Save.TextButton.UICorner
G2L["e3"] = Instance.new("UICorner", G2L["e2"]);
G2L["e3"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.Save.UICorner
G2L["e4"] = Instance.new("UICorner", G2L["e1"]);
G2L["e4"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.Save.ImageLabel
G2L["e5"] = Instance.new("ImageLabel", G2L["e1"]);
G2L["e5"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["e5"]["Image"] = [[rbxassetid://12732367351]];
G2L["e5"]["Size"] = UDim2.new(0.18111810088157654, 0, 0.64662104845047, 0);
G2L["e5"]["BackgroundTransparency"] = 1;
G2L["e5"]["Position"] = UDim2.new(0.6791929006576538, 0, 0.1616552621126175, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.Save.UIAspectRatioConstraint
G2L["e6"] = Instance.new("UIAspectRatioConstraint", G2L["e1"]);
G2L["e6"]["AspectRatio"] = 3.570162534713745;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.LoadText
G2L["e7"] = Instance.new("Frame", G2L["d5"]);
G2L["e7"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["e7"]["Size"] = UDim2.new(0.18748296797275543, 0, 0.09933300316333771, 0);
G2L["e7"]["Position"] = UDim2.new(0.7772064805030823, 0, 0.307320237159729, 0);
G2L["e7"]["Name"] = [[LoadText]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.LoadText.TextButton
G2L["e8"] = Instance.new("TextButton", G2L["e7"]);
G2L["e8"]["TextWrapped"] = true;
G2L["e8"]["BackgroundColor3"] = Color3.fromRGB(143, 130, 255);
G2L["e8"]["TextSize"] = 12;
G2L["e8"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e8"]["TextColor3"] = Color3.fromRGB(252, 252, 252);
G2L["e8"]["Size"] = UDim2.new(0.8136826753616333, 0, 1, 0);
G2L["e8"]["Text"] = [[Load Text]];
G2L["e8"]["Position"] = UDim2.new(-0.004637444857507944, 0, 0, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.LoadText.TextButton.UICorner
G2L["e9"] = Instance.new("UICorner", G2L["e8"]);
G2L["e9"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.LoadText.UICorner
G2L["ea"] = Instance.new("UICorner", G2L["e7"]);
G2L["ea"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.LoadText.ImageLabel
G2L["eb"] = Instance.new("ImageLabel", G2L["e7"]);
G2L["eb"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["eb"]["Image"] = [[rbxassetid://12732352613]];
G2L["eb"]["Size"] = UDim2.new(0.18111810088157654, 0, 0.64662104845047, 0);
G2L["eb"]["BackgroundTransparency"] = 1;
G2L["eb"]["Position"] = UDim2.new(0.7848451137542725, 0, 0.1616552621126175, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.LoadText.UIAspectRatioConstraint
G2L["ec"] = Instance.new("UIAspectRatioConstraint", G2L["e7"]);
G2L["ec"]["AspectRatio"] = 3.570162534713745;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.Copy
G2L["ed"] = Instance.new("Frame", G2L["d5"]);
G2L["ed"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["ed"]["Size"] = UDim2.new(0.18748296797275543, 0, 0.09933300316333771, 0);
G2L["ed"]["Position"] = UDim2.new(0.7772064805030823, 0, 0.449604332447052, 0);
G2L["ed"]["Name"] = [[Copy]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.Copy.TextButton
G2L["ee"] = Instance.new("TextButton", G2L["ed"]);
G2L["ee"]["TextWrapped"] = true;
G2L["ee"]["BackgroundColor3"] = Color3.fromRGB(143, 130, 255);
G2L["ee"]["TextSize"] = 12;
G2L["ee"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ee"]["TextColor3"] = Color3.fromRGB(252, 252, 252);
G2L["ee"]["Size"] = UDim2.new(0.8136826753616333, 0, 1, 0);
G2L["ee"]["Text"] = [[Copy]];
G2L["ee"]["Position"] = UDim2.new(-0.004637444857507944, 0, 0, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.Copy.TextButton.UICorner
G2L["ef"] = Instance.new("UICorner", G2L["ee"]);
G2L["ef"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.Copy.UICorner
G2L["f0"] = Instance.new("UICorner", G2L["ed"]);
G2L["f0"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.Copy.ImageLabel
G2L["f1"] = Instance.new("ImageLabel", G2L["ed"]);
G2L["f1"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["f1"]["Image"] = [[rbxassetid://12732363389]];
G2L["f1"]["Size"] = UDim2.new(0.18111810088157654, 0, 0.64662104845047, 0);
G2L["f1"]["BackgroundTransparency"] = 1;
G2L["f1"]["Position"] = UDim2.new(0.6791929006576538, 0, 0.1616552621126175, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.Copy.UIAspectRatioConstraint
G2L["f2"] = Instance.new("UIAspectRatioConstraint", G2L["ed"]);
G2L["f2"]["AspectRatio"] = 3.570162534713745;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.Hide
G2L["f3"] = Instance.new("Frame", G2L["d5"]);
G2L["f3"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["f3"]["Size"] = UDim2.new(0.18748296797275543, 0, 0.09933300316333771, 0);
G2L["f3"]["Position"] = UDim2.new(0.7772064805030823, 0, 0.5887711048126221, 0);
G2L["f3"]["Name"] = [[Hide]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.Hide.TextButton
G2L["f4"] = Instance.new("TextButton", G2L["f3"]);
G2L["f4"]["TextWrapped"] = true;
G2L["f4"]["BackgroundColor3"] = Color3.fromRGB(143, 130, 255);
G2L["f4"]["TextSize"] = 12;
G2L["f4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f4"]["TextColor3"] = Color3.fromRGB(252, 252, 252);
G2L["f4"]["Size"] = UDim2.new(0.8136826753616333, 0, 1, 0);
G2L["f4"]["Text"] = [[Hide]];
G2L["f4"]["Position"] = UDim2.new(-0.004637444857507944, 0, 0, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.Hide.TextButton.UICorner
G2L["f5"] = Instance.new("UICorner", G2L["f4"]);
G2L["f5"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.Hide.UICorner
G2L["f6"] = Instance.new("UICorner", G2L["f3"]);
G2L["f6"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.Hide.ImageLabel
G2L["f7"] = Instance.new("ImageLabel", G2L["f3"]);
G2L["f7"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["f7"]["Image"] = [[rbxassetid://12731675545]];
G2L["f7"]["Size"] = UDim2.new(0.18111810088157654, 0, 0.64662104845047, 0);
G2L["f7"]["BackgroundTransparency"] = 1;
G2L["f7"]["Position"] = UDim2.new(0.6791929006576538, 0, 0.1616552621126175, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.Hide.UIAspectRatioConstraint
G2L["f8"] = Instance.new("UIAspectRatioConstraint", G2L["f3"]);
G2L["f8"]["AspectRatio"] = 3.570162534713745;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.UIAspectRatioConstraint
G2L["f9"] = Instance.new("UIAspectRatioConstraint", G2L["d5"]);
G2L["f9"]["AspectRatio"] = 1.8915581703186035;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Search
G2L["fa"] = Instance.new("Frame", G2L["cc"]);
G2L["fa"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["fa"]["Size"] = UDim2.new(0.1818244606256485, 0, 0.05602366104722023, 0);
G2L["fa"]["Position"] = UDim2.new(0.7872427105903625, 0, 0.05453909933567047, 0);
G2L["fa"]["Name"] = [[Search]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Search.TextButton
G2L["fb"] = Instance.new("TextButton", G2L["fa"]);
G2L["fb"]["TextWrapped"] = true;
G2L["fb"]["BackgroundColor3"] = Color3.fromRGB(143, 130, 255);
G2L["fb"]["TextSize"] = 12;
G2L["fb"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["fb"]["TextColor3"] = Color3.fromRGB(252, 252, 252);
G2L["fb"]["Size"] = UDim2.new(0.8136826753616333, 0, 1, 0);
G2L["fb"]["Text"] = [[Search]];
G2L["fb"]["Position"] = UDim2.new(-0.004637444857507944, 0, 0, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Search.TextButton.UICorner
G2L["fc"] = Instance.new("UICorner", G2L["fb"]);
G2L["fc"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Search.TextButton.LocalScript
G2L["fd"] = Instance.new("LocalScript", G2L["fb"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Search.UICorner
G2L["fe"] = Instance.new("UICorner", G2L["fa"]);
G2L["fe"]["CornerRadius"] = UDim.new(0.4300000071525574, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Search.ImageLabel
G2L["ff"] = Instance.new("ImageLabel", G2L["fa"]);
G2L["ff"]["BackgroundColor3"] = Color3.fromRGB(137, 126, 251);
G2L["ff"]["Image"] = [[rbxassetid://12732045195]];
G2L["ff"]["Size"] = UDim2.new(0.20393863320350647, 0, 0.7066323161125183, 0);
G2L["ff"]["BackgroundTransparency"] = 1;
G2L["ff"]["Position"] = UDim2.new(0.6510000228881836, 0, 0.14100000262260437, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Search.ImageLabel.UIAspectRatioConstraint
G2L["100"] = Instance.new("UIAspectRatioConstraint", G2L["ff"]);
G2L["100"]["AspectRatio"] = 1.0919350385665894;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Search.UIAspectRatioConstraint
G2L["101"] = Instance.new("UIAspectRatioConstraint", G2L["fa"]);
G2L["101"]["AspectRatio"] = 3.4512600898742676;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings
G2L["102"] = Instance.new("Frame", G2L["46"]);
G2L["102"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["102"]["BackgroundTransparency"] = 1;
G2L["102"]["Size"] = UDim2.new(0.8833174705505371, 0, 0.9945666193962097, 0);
G2L["102"]["Position"] = UDim2.new(0.11490308493375778, 0, 0.002866186201572418, 0);
G2L["102"]["Visible"] = false;
G2L["102"]["Name"] = [[Settings]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.WalkSpeed
G2L["103"] = Instance.new("Frame", G2L["102"]);
G2L["103"]["BackgroundColor3"] = Color3.fromRGB(13, 13, 13);
G2L["103"]["Size"] = UDim2.new(0.8807588219642639, 0, 0.06504495441913605, 0);
G2L["103"]["Position"] = UDim2.new(0.0572899729013443, 0, 0.05452737957239151, 0);
G2L["103"]["Name"] = [[WalkSpeed]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.WalkSpeed.UICorner
G2L["104"] = Instance.new("UICorner", G2L["103"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.WalkSpeed.TextLabel
G2L["105"] = Instance.new("TextLabel", G2L["103"]);
G2L["105"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["105"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["105"]["TextSize"] = 12;
G2L["105"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["105"]["Size"] = UDim2.new(0.20389226078987122, 0, 0.37544015049934387, 0);
G2L["105"]["Text"] = [[Walk Speed]];
G2L["105"]["BackgroundTransparency"] = 1;
G2L["105"]["Position"] = UDim2.new(-0.0010769229847937822, 0, 0.27152714133262634, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.WalkSpeed.TextBox
G2L["106"] = Instance.new("TextBox", G2L["103"]);
G2L["106"]["TextSize"] = 14;
G2L["106"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 30);
G2L["106"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["106"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["106"]["Size"] = UDim2.new(0.10997192561626434, 0, 0.7088868021965027, 0);
G2L["106"]["Text"] = [[]];
G2L["106"]["Position"] = UDim2.new(0.880412757396698, 0, 0.13300003111362457, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.WalkSpeed.TextBox.UICorner
G2L["107"] = Instance.new("UICorner", G2L["106"]);
G2L["107"]["CornerRadius"] = UDim.new(0.699999988079071, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.WalkSpeed.Set
G2L["108"] = Instance.new("TextButton", G2L["103"]);
G2L["108"]["TextWrapped"] = true;
G2L["108"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 30);
G2L["108"]["TextSize"] = 12;
G2L["108"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["108"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["108"]["Size"] = UDim2.new(0.14156842231750488, 0, 0.6646651029586792, 0);
G2L["108"]["Name"] = [[Set]];
G2L["108"]["Text"] = [[Set]];
G2L["108"]["Position"] = UDim2.new(0.7242141366004944, 0, 0.17700013518333435, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.WalkSpeed.Set.UICorner
G2L["109"] = Instance.new("UICorner", G2L["108"]);
G2L["109"]["CornerRadius"] = UDim.new(0.699999988079071, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.WalkSpeed.Set.LocalScript
G2L["10a"] = Instance.new("LocalScript", G2L["108"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.WalkSpeed.UIAspectRatioConstraint
G2L["10b"] = Instance.new("UIAspectRatioConstraint", G2L["103"]);
G2L["10b"]["AspectRatio"] = 14.399263381958008;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.InviteLink
G2L["10c"] = Instance.new("TextButton", G2L["102"]);
G2L["10c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["10c"]["BackgroundColor3"] = Color3.fromRGB(13, 13, 13);
G2L["10c"]["TextSize"] = 12;
G2L["10c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["10c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10c"]["Size"] = UDim2.new(0.8820000290870667, 0, 0.06599999964237213, 0);
G2L["10c"]["Name"] = [[InviteLink]];
G2L["10c"]["Text"] = [[    Copy Discord Invite]];
G2L["10c"]["Position"] = UDim2.new(0.05668863654136658, 0, 0.35930559039115906, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.InviteLink.UICorner
G2L["10d"] = Instance.new("UICorner", G2L["10c"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.InviteLink.ImageLabel
G2L["10e"] = Instance.new("ImageLabel", G2L["10c"]);
G2L["10e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10e"]["Image"] = [[rbxassetid://12732591607]];
G2L["10e"]["Size"] = UDim2.new(0.043016303330659866, 0, 0.6113002896308899, 0);
G2L["10e"]["BackgroundTransparency"] = 1;
G2L["10e"]["Position"] = UDim2.new(0.9340682625770569, 0, 0.17465722560882568, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.InviteLink.UIAspectRatioConstraint
G2L["10f"] = Instance.new("UIAspectRatioConstraint", G2L["10c"]);
G2L["10f"]["AspectRatio"] = 14.210898399353027;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.InviteLink.LocalScript
G2L["110"] = Instance.new("LocalScript", G2L["10c"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.Credits
G2L["111"] = Instance.new("TextButton", G2L["102"]);
G2L["111"]["TextWrapped"] = true;
G2L["111"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["111"]["BackgroundColor3"] = Color3.fromRGB(13, 13, 13);
G2L["111"]["TextSize"] = 12;
G2L["111"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["111"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["111"]["Size"] = UDim2.new(0.8820000290870667, 0, 0.06599999964237213, 0);
G2L["111"]["Name"] = [[Credits]];
G2L["111"]["Text"] = [[    Show Credits]];
G2L["111"]["Position"] = UDim2.new(0.05668863654136658, 0, 0.4601701498031616, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.Credits.UICorner
G2L["112"] = Instance.new("UICorner", G2L["111"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.Credits.ImageLabel
G2L["113"] = Instance.new("ImageLabel", G2L["111"]);
G2L["113"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["113"]["Image"] = [[rbxassetid://12732608625]];
G2L["113"]["Size"] = UDim2.new(0.043016303330659866, 0, 0.6113002896308899, 0);
G2L["113"]["BackgroundTransparency"] = 1;
G2L["113"]["Position"] = UDim2.new(0.9340682625770569, 0, 0.17465722560882568, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.Credits.UIAspectRatioConstraint
G2L["114"] = Instance.new("UIAspectRatioConstraint", G2L["111"]);
G2L["114"]["AspectRatio"] = 14.210898399353027;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.Credits.LocalScript
G2L["115"] = Instance.new("LocalScript", G2L["111"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.UnlockFPS
G2L["116"] = Instance.new("TextButton", G2L["102"]);
G2L["116"]["TextWrapped"] = true;
G2L["116"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["116"]["TextScaled"] = true;
G2L["116"]["BackgroundColor3"] = Color3.fromRGB(13, 13, 13);
G2L["116"]["TextSize"] = 12;
G2L["116"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["116"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["116"]["Size"] = UDim2.new(0.8820000290870667, 0, 0.06599999964237213, 0);
G2L["116"]["Name"] = [[UnlockFPS]];
G2L["116"]["Text"] = [[    Unlock FPS]];
G2L["116"]["Position"] = UDim2.new(0.05668863654136658, 0, 0.5523891448974609, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.UnlockFPS.UICorner
G2L["117"] = Instance.new("UICorner", G2L["116"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.UnlockFPS.ImageLabel
G2L["118"] = Instance.new("ImageLabel", G2L["116"]);
G2L["118"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["118"]["Image"] = [[rbxassetid://12732606548]];
G2L["118"]["Size"] = UDim2.new(0.043016303330659866, 0, 0.6113002896308899, 0);
G2L["118"]["BackgroundTransparency"] = 1;
G2L["118"]["Position"] = UDim2.new(0.9340682625770569, 0, 0.17465722560882568, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.UnlockFPS.UIAspectRatioConstraint
G2L["119"] = Instance.new("UIAspectRatioConstraint", G2L["116"]);
G2L["119"]["AspectRatio"] = 14.210898399353027;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.UnlockFPS.UITextSizeConstraint
G2L["11a"] = Instance.new("UITextSizeConstraint", G2L["116"]);
G2L["11a"]["MaxTextSize"] = 12;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.UnlockFPS.LocalScript
G2L["11b"] = Instance.new("LocalScript", G2L["116"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.JumpPower
G2L["11c"] = Instance.new("Frame", G2L["102"]);
G2L["11c"]["BackgroundColor3"] = Color3.fromRGB(13, 13, 13);
G2L["11c"]["Size"] = UDim2.new(0.8807588219642639, 0, 0.06504495441913605, 0);
G2L["11c"]["Position"] = UDim2.new(0.0572899729013443, 0, 0.15539193153381348, 0);
G2L["11c"]["Name"] = [[JumpPower]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.JumpPower.UICorner
G2L["11d"] = Instance.new("UICorner", G2L["11c"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.JumpPower.TextLabel
G2L["11e"] = Instance.new("TextLabel", G2L["11c"]);
G2L["11e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11e"]["TextSize"] = 12;
G2L["11e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11e"]["Size"] = UDim2.new(0.20389226078987122, 0, 0.37544015049934387, 0);
G2L["11e"]["Text"] = [[Jump Power]];
G2L["11e"]["BackgroundTransparency"] = 1;
G2L["11e"]["Position"] = UDim2.new(-0.0010769229847937822, 0, 0.27152714133262634, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.JumpPower.TextBox
G2L["11f"] = Instance.new("TextBox", G2L["11c"]);
G2L["11f"]["TextSize"] = 14;
G2L["11f"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 30);
G2L["11f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11f"]["Size"] = UDim2.new(0.10997192561626434, 0, 0.7088868021965027, 0);
G2L["11f"]["Text"] = [[]];
G2L["11f"]["Position"] = UDim2.new(0.880412757396698, 0, 0.13300003111362457, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.JumpPower.TextBox.UICorner
G2L["120"] = Instance.new("UICorner", G2L["11f"]);
G2L["120"]["CornerRadius"] = UDim.new(0.699999988079071, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.JumpPower.Set
G2L["121"] = Instance.new("TextButton", G2L["11c"]);
G2L["121"]["TextWrapped"] = true;
G2L["121"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 30);
G2L["121"]["TextSize"] = 12;
G2L["121"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["121"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["121"]["Size"] = UDim2.new(0.14156842231750488, 0, 0.6646651029586792, 0);
G2L["121"]["Name"] = [[Set]];
G2L["121"]["Text"] = [[Set]];
G2L["121"]["Position"] = UDim2.new(0.7242141366004944, 0, 0.17700013518333435, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.JumpPower.Set.UICorner
G2L["122"] = Instance.new("UICorner", G2L["121"]);
G2L["122"]["CornerRadius"] = UDim.new(0.699999988079071, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.JumpPower.Set.LocalScript
G2L["123"] = Instance.new("LocalScript", G2L["121"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.JumpPower.UIAspectRatioConstraint
G2L["124"] = Instance.new("UIAspectRatioConstraint", G2L["11c"]);
G2L["124"]["AspectRatio"] = 14.399263381958008;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.Gravity
G2L["125"] = Instance.new("Frame", G2L["102"]);
G2L["125"]["BackgroundColor3"] = Color3.fromRGB(13, 13, 13);
G2L["125"]["Size"] = UDim2.new(0.8807588219642639, 0, 0.06504495441913605, 0);
G2L["125"]["Position"] = UDim2.new(0.05700000002980232, 0, 0.257999986410141, 0);
G2L["125"]["Name"] = [[Gravity]];

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.Gravity.UICorner
G2L["126"] = Instance.new("UICorner", G2L["125"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.Gravity.TextLabel
G2L["127"] = Instance.new("TextLabel", G2L["125"]);
G2L["127"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["127"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["127"]["TextSize"] = 12;
G2L["127"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["127"]["Size"] = UDim2.new(0.14991775155067444, 0, 0.37544018030166626, 0);
G2L["127"]["Text"] = [[Gravity]];
G2L["127"]["BackgroundTransparency"] = 1;
G2L["127"]["Position"] = UDim2.new(-0.0010769232176244259, 0, 0.27152714133262634, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.Gravity.TextBox
G2L["128"] = Instance.new("TextBox", G2L["125"]);
G2L["128"]["TextSize"] = 14;
G2L["128"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 30);
G2L["128"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["128"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["128"]["Size"] = UDim2.new(0.10997192561626434, 0, 0.7088868021965027, 0);
G2L["128"]["Text"] = [[]];
G2L["128"]["Position"] = UDim2.new(0.880412757396698, 0, 0.13300003111362457, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.Gravity.TextBox.UICorner
G2L["129"] = Instance.new("UICorner", G2L["128"]);
G2L["129"]["CornerRadius"] = UDim.new(0.699999988079071, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.Gravity.Set
G2L["12a"] = Instance.new("TextButton", G2L["125"]);
G2L["12a"]["TextWrapped"] = true;
G2L["12a"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 30);
G2L["12a"]["TextSize"] = 12;
G2L["12a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["12a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12a"]["Size"] = UDim2.new(0.14156842231750488, 0, 0.6646651029586792, 0);
G2L["12a"]["Name"] = [[Set]];
G2L["12a"]["Text"] = [[Set]];
G2L["12a"]["Position"] = UDim2.new(0.7242141366004944, 0, 0.17700013518333435, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.Gravity.Set.UICorner
G2L["12b"] = Instance.new("UICorner", G2L["12a"]);
G2L["12b"]["CornerRadius"] = UDim.new(0.699999988079071, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.Gravity.Set.LocalScript
G2L["12c"] = Instance.new("LocalScript", G2L["12a"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.Gravity.UIAspectRatioConstraint
G2L["12d"] = Instance.new("UIAspectRatioConstraint", G2L["125"]);
G2L["12d"]["AspectRatio"] = 14.399263381958008;

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.Gravity.Reset
G2L["12e"] = Instance.new("TextButton", G2L["125"]);
G2L["12e"]["TextWrapped"] = true;
G2L["12e"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 30);
G2L["12e"]["TextSize"] = 12;
G2L["12e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["12e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12e"]["Size"] = UDim2.new(0.14156842231750488, 0, 0.6646651029586792, 0);
G2L["12e"]["Name"] = [[Reset]];
G2L["12e"]["Text"] = [[Reset]];
G2L["12e"]["Position"] = UDim2.new(0.5699999928474426, 0, 0.1770000010728836, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.Gravity.Reset.UICorner
G2L["12f"] = Instance.new("UICorner", G2L["12e"]);
G2L["12f"]["CornerRadius"] = UDim.new(0.699999988079071, 0);

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.Gravity.Reset.LocalScript
G2L["130"] = Instance.new("LocalScript", G2L["12e"]);


-- StarterGui.DeltaGui.MainUi.MainFrame.UIAspectRatioConstraint
G2L["131"] = Instance.new("UIAspectRatioConstraint", G2L["25"]);
G2L["131"]["AspectRatio"] = 1.1973302364349365;

-- StarterGui.DeltaGui.MainUi.MainFrame.DraggableStuff
G2L["132"] = Instance.new("LocalScript", G2L["25"]);
G2L["132"]["Name"] = [[DraggableStuff]];

-- StarterGui.DeltaGui.FloatingIcon
G2L["133"] = Instance.new("ImageButton", G2L["1"]);
G2L["133"]["BackgroundColor3"] = Color3.fromRGB(20, 20, 23);
G2L["133"]["Image"] = [[rbxassetid://12730597972]];
G2L["133"]["Size"] = UDim2.new(0.07388234883546829, 0, 0.1319999247789383, 0);
G2L["133"]["Name"] = [[FloatingIcon]];
G2L["133"]["Visible"] = false;
G2L["133"]["Position"] = UDim2.new(0.09859155118465424, 0, 0.01671314239501953, 0);

-- StarterGui.DeltaGui.FloatingIcon.UICorner
G2L["134"] = Instance.new("UICorner", G2L["133"]);
G2L["134"]["CornerRadius"] = UDim.new(0.25, 0);

-- StarterGui.DeltaGui.FloatingIcon.LocalScript
G2L["135"] = Instance.new("LocalScript", G2L["133"]);


-- StarterGui.DeltaGui.FloatingIcon.UIAspectRatioConstraint
G2L["136"] = Instance.new("UIAspectRatioConstraint", G2L["133"]);
G2L["136"]["AspectRatio"] = 0.9962615966796875;

-- Require G2L wrapper
local G2L_REQUIRE = require;
local G2L_MODULES = {};
local function require(Module:ModuleScript)
	local ModuleState = G2L_MODULES[Module];
	if ModuleState then
		if not ModuleState.Required then
			ModuleState.Required = true;
			ModuleState.Value = ModuleState.Closure();
		end
		return ModuleState.Value;
	end;
	return G2L_REQUIRE(Module);
end

G2L_MODULES[G2L["60"]] = {
	Closure = function()
		local script = G2L["60"];
		-- Lexer by sleitnick
		-- Everything else by me, bread. lol.


		local module = {}

		local syntax 	   = require(script.Syntax)
		local getLines 	   = require(script.GetLines)
		local fakeEditor   = require(script.FakeEditor)
		local textFixer    = require(script.TextFixer)
		local getLine 	   = require(script.GetLine)
		local tween 	   = require(script.TweenLibrary)
		local suggestions  = require(script.Suggestions)

		function module.new(frame)
			local newEditor = script.Editor:Clone()
			newEditor.Parent = frame

			local editorObj  	= fakeEditor.new(newEditor)
			local textbox 	 	= newEditor.Scroll.Source
			local linesLabel 	= newEditor.Scroll.Left.Lines
			local lineHighlight = textbox.LineHighlight

			local highlightBox = Instance.new("TextLabel")
			highlightBox.Size = UDim2.new(1, 0,1, 0)
			highlightBox.Position = UDim2.new(0, 0,0, 0)
			highlightBox.TextColor3 = textbox.TextColor3
			highlightBox.BackgroundTransparency = 1
			highlightBox.Name = "Syntax"
			highlightBox.RichText = true
			highlightBox.TextSize = textbox.TextSize
			highlightBox.Font = textbox.Font
			highlightBox.TextXAlignment = Enum.TextXAlignment.Left
			highlightBox.TextYAlignment = Enum.TextYAlignment.Top
			highlightBox.TextStrokeColor3 = Color3.fromRGB(40, 40, 40)
			highlightBox.TextStrokeTransparency = 0.1
			highlightBox.Text = ""
			highlightBox.Parent = textbox

			editorObj:SetTheme("default")
			textFixer.Fix(highlightBox)
			suggestions:Start(newEditor)

			textbox:GetPropertyChangedSignal("Text"):Connect(function()
				syntax.Highlight(highlightBox, textbox.Text)

				-- Fix tabs
				textbox.Text = textbox.Text:gsub("\t", "    ")
				--textbox.CursorPosition += 4

				-- Update line count
				linesLabel.Text = getLines.GetLinesString(textbox.Text)
			end)

			textbox:GetPropertyChangedSignal("CursorPosition"):Connect(function()
				-- Position line highlight
				local lineYPos = ((getLine:GetCurrentLine(textbox) * textbox.TextSize) - math.ceil(lineHighlight.AbsoluteSize.Y / 2)) + 4

				if lineYPos ~= lineHighlight.Position.Y.Offset then
					tween.TweenPosition(lineHighlight, UDim2.new(0, -10,0, lineYPos), 0.1, Enum.EasingStyle.Quad)
				end
			end)

			return editorObj
		end

		return module

	end;
};
G2L_MODULES[G2L["61"]] = {
	Closure = function()
		local script = G2L["61"];
		local module = {}

		local lexer 	= require(script.Parent.Lexer)
		local theme 	= require(script.Parent.Theme)
		local textFixer = require(script.Parent.TextFixer)

		local function ColorToFont(text, color)
			return string.format(
				'<font color="rgb(%s,%s,%s)">%s</font>',
				tostring(math.floor(color.R * 255)),
				tostring(math.floor(color.G * 255)),
				tostring(math.floor(color.B * 255)),
				text
			)
		end

		function module.Highlight(textbox, source)
			textbox.Text = ""

			for tokenType, text in lexer.scan(source) do
				local currentTheme = theme.current
				local tokenCol = currentTheme[tokenType]

				if tokenCol then
					textbox.Text = textbox.Text .. ColorToFont(text, tokenCol)
				else
					textbox.Text = textbox.Text .. text
				end
			end

			textFixer.Fix(textbox)
		end

		return module

	end;
};
G2L_MODULES[G2L["62"]] = {
	Closure = function()
		local script = G2L["62"];
		local theme = {
			current = nil,
			themes = {
				["default"] = {
					["keyword"] = Color3.fromRGB(248, 109, 124),
					["builtin"] = Color3.fromRGB(84, 184, 247),
					["string"] = Color3.fromRGB(130, 241, 149),
					["number"] = Color3.fromRGB(255, 198, 0),
					["comment"] = Color3.fromRGB(106, 106, 100),
					["thingy"] = Color3.fromRGB(253, 251, 154)
				},
				["extra 2"] = {
					["keyword"] = Color3.fromRGB(249, 36, 114),
					["builtin"] = Color3.fromRGB(95, 209, 250),
					["string"] = Color3.fromRGB(217, 219, 88),
					["number"] = Color3.fromRGB(161, 118, 209),
					["comment"] = Color3.fromRGB(116, 122, 101),
					["thingy"] = Color3.fromRGB(248, 245, 139)
				}
			}
		}

		return theme

	end;
};
G2L_MODULES[G2L["63"]] = {
	Closure = function()
		local script = G2L["63"];
		local module = {}

		function module.GetLines(text)
			local amount = 1

			text:gsub("\n", function()
				amount += 1
			end)

			return amount
		end

		function module.GetLinesString(text)
			local lineAmt = module.GetLines(text)
			local result = ""

			for i = 1, lineAmt do
				result = result .. i .. "\n"
			end

			-- Remove last \n
			result = result:sub(1, #result - 1)

			return result
		end

		return module

	end;
};
G2L_MODULES[G2L["64"]] = {
	Closure = function()
		local script = G2L["64"];
		local fakeEditor = {} -- Main module

		local textFixer = require(script.Parent.TextFixer)
		local theme = require(script.Parent.Theme)
		local syntax = require(script.Parent.Syntax)

		local editorObj = {
			SetTextSize = function(self, textSize)
				local sourceBox = self.Editor.Scroll.Source
				local syntaxBox = sourceBox.Syntax
				local linesBox = self.Editor.Scroll.Left.Lines
				local lineHighlight = sourceBox.LineHighlight

				sourceBox.TextSize = textSize
				syntaxBox.TextSize = textSize
				linesBox.TextSize = textSize
				lineHighlight.Size = UDim2.new(1, 0,0, textSize + 5)


		--[[
			Might want to fix it manually because adding another \n
			might cause some instability
		]]
				textFixer.Fix(self.Editor.Scroll.Source.Syntax)

				return textSize
			end,
			Destroy = function(self)
				self.Editor:Destroy()
				setmetatable(self, {__index = nil})
				table.clear(self)
				self = nil

				return nil
			end,
			GetText = function(self)
				local sourceBox = self.Editor.Scroll.Source
				return sourceBox.Text
			end,
			SetText = function(self, text)
				local sourceBox = self.Editor.Scroll.Source
				sourceBox.Text = text

				return text
			end,
			ContentToBytes = function(self)
				local text = self.Editor.Scroll.Source.Text
				local bytes = {}

				for _, c in pairs(text:split("")) do
					table.insert(bytes, string.byte(c))
				end

				return "/" .. table.concat(bytes, "/")
			end,
			Hide = function(self)
				local hiddenLabel = self.Editor.Scroll.Source.Hidden
				hiddenLabel.Visible = true
			end,
			Unhide = function(self)
				local hiddenLabel = self.Editor.Scroll.Source.Hidden
				hiddenLabel.Visible = false
			end,
			SetTheme = function(self, themeName)
				local sourceBox = self.Editor.Scroll.Source
				local syntaxBox = sourceBox.Syntax

				assert(theme.themes[themeName], "'" .. themeName .. "' is not a valid theme.")

				theme.current = theme.themes[themeName]

				-- Update highlighting
				syntax.Highlight(syntaxBox, sourceBox.Text)
			end,
		}

		function fakeEditor.new(editor)
			return setmetatable({Editor = editor}, {__index = editorObj})
		end

		return fakeEditor

	end;
};
G2L_MODULES[G2L["65"]] = {
	Closure = function()
		local script = G2L["65"];
		local module = {}

		function module.peekBack(self)
			return self.text:sub(self.position - 1, self.position - 1)
		end

		function module.next(self)
			self.position += 1

			self.character = self.text:sub(self.position, self.position)

			if self.character == "\n" then
				self.lines += 1
			end

			if self.position < #self.text and self.position < self.cursorPosition then
				self:next()
			end
		end

		function module.GetCurrentLine(self, textbox)
			self.position = 0
			self.text = textbox.Text .. " "
			self.cursorPosition = textbox.CursorPosition
			self.lines = 1

			self:next()

			return self.lines
		end

		function module.GetCurrentLineWidth(self, textbox)
			self.position = 0
			self.text = textbox.Text .. " "
			self.cursorPosition = textbox.CursorPosition
			self.lines = 1

			self:next()

			-- self.lines is the current line

			return self.position
		end

		return module

	end;
};
G2L_MODULES[G2L["66"]] = {
	Closure = function()
		local script = G2L["66"];
		local module = {}

		local tweenService = game:GetService("TweenService")
		local debris = game:GetService("Debris")

		-- Custom functions
		local function default(arg, def)
			if arg == nil then
				arg = def
			end
			return arg
		end

		-- Guis --

		function module.TweenScale(frame, scale, timelen, easingstyle, easingdir)
			local uiscale
			if not frame:FindFirstChild("$ScaleAnim") then
				uiscale = Instance.new("UIScale")
				uiscale.Scale = 1
				uiscale.Name = "$ScaleAnim"
				uiscale.Parent = frame
			end

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				Scale = scale
			}

			-- Finally, play tween
			tweenService:Create(uiscale, tinfo, goals):Play()
			--debris:AddItem(uiscale, timelen) -- Remove it when animation is done
		end

		function module.TweenPosition(frame, position, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(position, "No position provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				Position = position
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenSize(frame, size, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(size, "No size provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				Size = size
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenBackgroundColor3(frame, color, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(color, "No color provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				BackgroundColor3 = color
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenBackgroundTransparency(frame, transparency, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(transparency, "No transparency provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				BackgroundTransparency = transparency
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenBorderColor3(frame, color, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(color, "No color provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				BorderColor3 = color
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenBorderSizePixel(frame, bordersize, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(bordersize, "No border size provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				BorderSizePixel = bordersize
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenImageTransparency(frame, imagetransparency, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(imagetransparency, "No image transparency provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				ImageTransparency = imagetransparency
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenImageColor3(frame, color, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(color, "No color provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				ImageColor3 = color
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenImageRectOffset(frame, offset, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(offset, "No offset provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				ImageRectOffset = offset
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenImageRectSize(frame, size, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(size, "No size provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				ImageRectSize = size
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenSliceScale(frame, scale, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(scale, "No scale provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				SliceScale = scale
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenTextColor3(frame, color, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(color, "No color provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				TextColor3 = color
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenMaxVisibleGraphemes(frame, graphemes, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(graphemes, "No graphemes provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				MaxVisibleGraphemes = graphemes
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenTextSize(frame, size, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(size, "No size provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				TextSize = size
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenTextStrokeColor3(frame, color, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(color, "No color provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				TextStrokeColor3 = color
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenTextTransparency(frame, transparency, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(transparency, "No transparency provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				TextTransparency = transparency
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenTextStrokeTransparency(frame, transparency, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(transparency, "No transparency provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				TextStrokeTransparency = transparency
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenCanvasSize(frame, size, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(size, "No size provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				CanvasSize = size
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenCanvasPosition(frame, position, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(position, "No position provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				CanvasPosition = position
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenScrollBarImageTransparency(frame, transparency, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(transparency, "No transparency provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				ScrollBarImageTransparency = transparency
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenScrollBarThickness(frame, thickness, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(thickness, "No thickness provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				ScrollBarThickness = thickness
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenScrollBarImageColor3(frame, color, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(color, "No color provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				ScrollBarImageColor3 = color
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenCFrame(thing, cframe, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(thing, "No instance provided")
			assert(cframe, "No cframe provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				CFrame = cframe
			}

			-- Finally, play tween
			tweenService:Create(thing, tinfo, goals):Play()
		end

		function module.TweenFOV(thing, fov, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(thing, "No instance provided")
			assert(fov, "No FOV provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				FieldOfView = fov
			}

			-- Finally, play tween
			tweenService:Create(thing, tinfo, goals):Play()
		end

		function module.TweenValue(thing, value, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(thing, "No instance provided")
			assert(value, "No value provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				Value = value
			}

			-- Finally, play tween
			tweenService:Create(thing, tinfo, goals):Play()
		end

		function module.TweenVolume(thing, volume, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(thing, "No instance provided")
			assert(volume, "No volume provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				Volume = volume
			}

			-- Finally, play tween
			tweenService:Create(thing, tinfo, goals):Play()
		end

		return module

	end;
};
G2L_MODULES[G2L["67"]] = {
	Closure = function()
		local script = G2L["67"];
		local module = {}

		function module.next(self)
			self.position += 1
			local character = self.text:sub(self.position, self.position)

			if character == "\n" or character == " " or self.position > #self.text then
				return self.position - 1
			else
				return self:next()
			end
		end

		function module.prev(self)
			self.position -= 1
			local character = self.text:sub(self.position, self.position)

			if character == "\n" or character == " " or self.position < 1 then
				return self.position + 1
			else
				return self:prev()
			end
		end

		function module.GetCurrentWord(self, textbox)
			self.cursorPosition = textbox.CursorPosition
			self.position = self.cursorPosition
			self.text = textbox.Text

			local wordEnd = self:next()
			local wordStart = self:prev()
			local wordString = self.text:sub(wordStart, wordEnd)

			return wordString
		end

		return module

	end;
};
G2L_MODULES[G2L["68"]] = {
	Closure = function()
		local script = G2L["68"];
--[[

	Lexical scanner for creating a sequence of tokens from Lua source code.

	This is a heavily modified and Roblox-optimized version of
	the original Penlight Lexer module:
		https://github.com/stevedonovan/Penlight

	Authors:
		stevedonovan <https://github.com/stevedonovan> ----------------- Original Penlight lexer author
		ryanjmulder  <https://github.com/ryanjmulder>  ----------------- Penlight lexer contributer
		mpeterv      <https://github.com/mpeterv>      ----------------- Penlight lexer contributer
		Tieske       <https://github.com/Tieske>       ----------------- Penlight lexer contributer
		boatbomber   <https://github.com/boatbomber>   ----------------- Roblox port, optimizations, and bug fixes
		Sleitnick    <https://github.com/Sleitnick>    ----------------- Roblox optimizations

	Usage:

		local source = "for i = 1,n do end"
		
		-- The 'scan' function returns a token iterator:
		for token,src in lexer.scan(source) do
			print(token, src)
		end

			> keyword for
			> iden    i
			> =       =
			> number  1
			> ,       ,
			> iden    n
			> keyword do
			> keyword end

	List of tokens:
		- keyword
		- builtin
		- iden
		- string
		- number
		- space
		- comment

	Other tokens that don't fall into the above categories
	will simply be returned as itself. For instance, operators
	like "+" will simply return "+" as the token.

--]]

		local lexer = {}

		local yield, wrap  = coroutine.yield, coroutine.wrap
		local strfind      = string.find
		local strsub       = string.sub
		local append       = table.insert
		local type         = type

		local NUMBER1	= "^[%+%-]?%d+%.?%d*[eE][%+%-]?%d+"
		local NUMBER2	= "^[%+%-]?%d+%.?%d*"
		local NUMBER3	= "^0x[%da-fA-F]+"
		local NUMBER4	= "^%d+%.?%d*[eE][%+%-]?%d+"
		local NUMBER5	= "^%d+%.?%d*"
		local IDEN		= "^[%a_][%w_]*"
		local WSPACE	= "^%s+"
		local STRING1	= "^(['\"])%1"							--Empty String
		local STRING2	= [[^(['"])(\*)%2%1]]
		local STRING3	= [[^(['"]).-[^\](\*)%2%1]]
		local STRING4	= "^(['\"]).-.*"						--Incompleted String
		local STRING5	= "^%[(=*)%[.-%]%1%]"					--Multiline-String
		local STRING6	= "^%[%[.-.*"							--Incompleted Multiline-String
		local CHAR1		= "^''"
		local CHAR2		= [[^'(\*)%1']]
		local CHAR3		= [[^'.-[^\](\*)%1']]
		local PREPRO	= "^#.-[^\\]\n"
		local MCOMMENT1	= "^%-%-%[(=*)%[.-%]%1%]"				--Completed Multiline-Comment
		local MCOMMENT2	= "^%-%-%[%[.-.*"						--Incompleted Multiline-Comment
		local SCOMMENT1	= "^%-%-.-\n"							--Completed Singleline-Comment
		local SCOMMENT2	= "^%-%-.-.*"							--Incompleted Singleline-Comment
		local THINGY 	= "^[%.:]%w-%s?%(.-%)"

		local lua_keyword = {
			["and"] = true,  ["break"] = true,  ["do"] = true,      ["else"] = true,      ["elseif"] = true,
			["end"] = true,  ["false"] = true,  ["for"] = true,     ["function"] = true,  ["if"] = true,
			["in"] = true,   ["local"] = true,  ["nil"] = true,     ["not"] = true,       ["while"] = true,
			["or"] = true,   ["repeat"] = true, ["return"] = true,  ["then"] = true,      ["true"] = true,
			["self"] = true, ["until"] = true
		}

		local lua_builtin = {
			["assert"] = true;["collectgarbage"] = true;["error"] = true;["_G"] = true;
			["gcinfo"] = true;["getfenv"] = true;["getmetatable"] = true;["ipairs"] = true;
			["loadstring"] = true;["newproxy"] = true;["next"] = true;["pairs"] = true;
			["pcall"] = true;["print"] = true;["rawequal"] = true;["rawget"] = true;["rawset"] = true;
			["select"] = true;["setfenv"] = true;["setmetatable"] = true;["tonumber"] = true;
			["tostring"] = true;["type"] = true;["unpack"] = true;["_VERSION"] = true;["xpcall"] = true;
			["delay"] = true;["elapsedTime"] = true;["require"] = true;["spawn"] = true;["tick"] = true;
			["time"] = true;["typeof"] = true;["UserSettings"] = true;["wait"] = true;["warn"] = true;
			["game"] = true;["Enum"] = true;["script"] = true;["shared"] = true;["workspace"] = true;
			["Axes"] = true;["BrickColor"] = true;["CFrame"] = true;["Color3"] = true;["ColorSequence"] = true;
			["ColorSequenceKeypoint"] = true;["Faces"] = true;["Instance"] = true;["NumberRange"] = true;
			["NumberSequence"] = true;["NumberSequenceKeypoint"] = true;["PhysicalProperties"] = true;
			["Random"] = true;["Ray"] = true;["Rect"] = true;["Region3"] = true;["Region3int16"] = true;
			["TweenInfo"] = true;["UDim"] = true;["UDim2"] = true;["Vector2"] = true;["Vector3"] = true;
			["Vector3int16"] = true;["next"] = true;["dofile"] = true;["writefile"] = true;["readfile"] = true;
			["isfile"] = true;["delfile"] = true;["isfolder"] = true;["makefolder"] = true;["delfolder"] = true;["listfiles"] = true;
			["descend"] = true;
			["os"] = true;
			--["os.time"] = true;["os.date"] = true;["os.difftime"] = true;
			["debug"] = true;
			--["debug.traceback"] = true;["debug.profilebegin"] = true;["debug.profileend"] = true;
			["math"] = true;
			--["math.abs"] = true;["math.acos"] = true;["math.asin"] = true;["math.atan"] = true;["math.atan2"] = true;["math.ceil"] = true;["math.clamp"] = true;["math.cos"] = true;["math.cosh"] = true;["math.deg"] = true;["math.exp"] = true;["math.floor"] = true;["math.fmod"] = true;["math.frexp"] = true;["math.ldexp"] = true;["math.log"] = true;["math.log10"] = true;["math.max"] = true;["math.min"] = true;["math.modf"] = true;["math.noise"] = true;["math.pow"] = true;["math.rad"] = true;["math.random"] = true;["math.randomseed"] = true;["math.sign"] = true;["math.sin"] = true;["math.sinh"] = true;["math.sqrt"] = true;["math.tan"] = true;["math.tanh"] = true;
			["coroutine"] = true;
			--["coroutine.create"] = true;["coroutine.resume"] = true;["coroutine.running"] = true;["coroutine.status"] = true;["coroutine.wrap"] = true;["coroutine.yield"] = true;
			["string"] = true;
			--["string.byte"] = true;["string.char"] = true;["string.dump"] = true;["string.find"] = true;["string.format"] = true;["string.len"] = true;["string.lower"] = true;["string.match"] = true;["string.rep"] = true;["string.reverse"] = true;["string.sub"] = true;["string.upper"] = true;["string.gmatch"] = true;["string.gsub"] = true;
			["table"] = true;
			--["table.concat"] = true;["table.insert"] = true;["table.remove"] = true;["table.sort"] = true;
		}

		local function tdump(tok)
			return yield(tok, tok)
		end

		local function ndump(tok)
			return yield("number", tok)
		end

		local function sdump(tok)
			return yield("string", tok)
		end

		local function cdump(tok)
			return yield("comment", tok)
		end

		local function wsdump(tok)
			return yield("space", tok)
		end

		local function lua_vdump(tok)
			if (lua_keyword[tok]) then
				return yield("keyword", tok)
			elseif (lua_builtin[tok]) then
				return yield("builtin", tok)
			else
				return yield("iden", tok)
			end
		end

		local function thingy_dump(tok)
			return yield("thingy", tok)
		end

		local lua_matches = {
			{THINGY, thingy_dump},

			{IDEN,      lua_vdump},        -- Indentifiers
			{WSPACE,    wsdump},           -- Whitespace
			{NUMBER3,   ndump},            -- Numbers
			{NUMBER4,   ndump},
			{NUMBER5,   ndump},
			{STRING1,   sdump},            -- Strings
			{STRING2,   sdump},
			{STRING3,   sdump},
			{STRING4,   sdump},
			{STRING5,   sdump},            -- Multiline-Strings
			{STRING6,   sdump},            -- Multiline-Strings

			{MCOMMENT1, cdump},            -- Multiline-Comments
			{MCOMMENT2, cdump},			
			{SCOMMENT1, cdump},            -- Singleline-Comments
			{SCOMMENT2, cdump},

			{"^==",     tdump},            -- Operators
			{"^~=",     tdump},
			{"^<=",     tdump},
			{"^>=",     tdump},
			{"^%.%.%.", tdump},
			{"^%.%.",   tdump},
			{"^.",      tdump},
		}

		local num_lua_matches = #lua_matches


		--- Create a plain token iterator from a string.
		-- @tparam string s a string.
		function lexer.scan(s)

			local function lex(first_arg)

				local line_nr = 0
				local sz = #s
				local idx = 1

				-- res is the value used to resume the coroutine.
				local function handle_requests(res)
					while (res) do
						local tp = type(res)
						-- Insert a token list:
						if (tp == "table") then
							res = yield("", "")
							for i = 1,#res do
								local t = res[i]
								res = yield(t[1], t[2])
							end
						elseif (tp == "string") then -- Or search up to some special pattern:
							local i1, i2 = strfind(s, res, idx)
							if (i1) then
								local tok = strsub(s, i1, i2)
								idx = (i2 + 1)
								res = yield("", tok)
							else
								res = yield("", "")
								idx = (sz + 1)
							end
						else
							res = yield(line_nr, idx)
						end
					end
				end

				handle_requests(first_arg)
				line_nr = 1

				while (true) do

					if (idx > sz) then
						while (true) do
							handle_requests(yield())
						end
					end

					for i = 1,num_lua_matches do
						local m = lua_matches[i]
						local pat = m[1]
						local fun = m[2]
						local findres = {strfind(s, pat, idx)}
						local i1, i2 = findres[1], findres[2]
						if (i1) then
							local tok = strsub(s, i1, i2)
							idx = (i2 + 1)
							lexer.finished = (idx > sz)
							local res = fun(tok, findres)
							if (tok:find("\n")) then
								-- Update line number:
								local _,newlines = tok:gsub("\n", {})
								line_nr = (line_nr + newlines)
							end
							handle_requests(res)
							break
						end
					end

				end

			end

			return wrap(lex)

		end

		return lexer
	end;
};
G2L_MODULES[G2L["69"]] = {
	Closure = function()
		local script = G2L["69"];
		local module = {}

		--// Vars
		local words   = require(script.Parent.Words)
		local GetWord = require(script.Parent.GetWord)
		local getLine = require(script.Parent.GetLine)

		--// Funcs
		function module.GetCurrentWord(self)
			return GetWord:GetCurrentWord(self.Textbox)
		end

		function module.Search(self)

			return nil
		end

		function module.Start(self, editor)
			self.Editor = editor
			self.Textbox = editor.Scroll.Source
			self.SuggestionButton = self.Textbox.Suggestion

			self.Textbox:GetPropertyChangedSignal("Text"):Connect(function()
				local foundWord, matchedLength = nil

				if foundWord then
					local position = UDim2.new(0, 0,0, getLine:GetCurrentLine(self.Textbox) * self.Textbox.TextSize)

					self.SuggestionButton.Text = foundWord
					self.SuggestionButton.Position = position
					self.SuggestionButton.Visible = true
					self.MatchedLength = matchedLength
				else
					self.SuggestionButton.Visible = false
				end
			end)

			self.SuggestionButton.MouseButton1Click:Connect(function(input)
				-- Fill in the word
				local word = self.SuggestionButton.Text
				self.SuggestionButton.Visible = false
				self.Textbox.Text = self.Textbox.Text:sub(1, self.Textbox.CursorPosition - 1 - (self.MatchedLength or 0)) .. word .. self.Textbox.Text:sub(self.Textbox.CursorPosition + 1, #self.Textbox.Text)

				local newCursorPosition = self.Textbox.CursorPosition + #word - self.MatchedLength
				wait()
				self.Textbox:ReleaseFocus()
				self.Textbox:CaptureFocus()
				self.Textbox.CursorPosition = newCursorPosition
			end)
		end

		return module

	end;
};
G2L_MODULES[G2L["6a"]] = {
	Closure = function()
		local script = G2L["6a"];
		local words = {
			['print'] = 'builtin',
			['warn'] = 'builtin',
			['Vector3'] = 'builtin',
			['Vector2'] = 'builtin',
			['error'] = 'builtin',
			['Instance'] = 'builtin',
			['game'] = 'builtin',
			['script'] = 'builtin',
			['workspace'] = 'builtin',

			['while'] = 'keyword',
			['true'] = 'keyword',
			['false'] = 'keyword',
			['then'] = 'keyword',
			['do'] = 'keyword',
			['if'] = 'keyword',
		}

		return words

	end;
};
G2L_MODULES[G2L["6b"]] = {
	Closure = function()
		local script = G2L["6b"];
		-- Fixes a Roblox bug with RichText

		-- If the bug gets fixed, this will break the editor (visually).
		-- In this case, please remove any instances of this module being used.

		local module = {}

		function module.Fix(textbox)
			if textbox.Text:sub(1, 1) ~= "\n" then
				textbox.Text = "\n" .. textbox.Text
			end

			textbox.Position = UDim2.new(0, -3.5,0,-8.8)
			textbox.Size = UDim2.new(1, 4,1, textbox.TextSize)
		end

		return module

	end;
};
G2L_MODULES[G2L["b0"]] = {
	Closure = function()
		local script = G2L["b0"];
		-- Lexer by sleitnick
		-- Everything else by me, bread. lol.


		local module = {}

		local syntax 	   = require(script.Syntax)
		local getLines 	   = require(script.GetLines)
		local fakeEditor   = require(script.FakeEditor)
		local textFixer    = require(script.TextFixer)
		local getLine 	   = require(script.GetLine)
		local tween 	   = require(script.TweenLibrary)
		local suggestions  = require(script.Suggestions)

		function module.new(frame)
			local newEditor = script.Editor:Clone()
			newEditor.Parent = frame

			local editorObj  	= fakeEditor.new(newEditor)
			local textbox 	 	= newEditor.Scroll.Source
			local linesLabel 	= newEditor.Scroll.Left.Lines
			local lineHighlight = textbox.LineHighlight

			local highlightBox = Instance.new("TextLabel")
			highlightBox.Size = UDim2.new(1, 0,1, 0)
			highlightBox.Position = UDim2.new(0, 0,0, 0)
			highlightBox.TextColor3 = textbox.TextColor3
			highlightBox.BackgroundTransparency = 1
			highlightBox.Name = "Syntax"
			highlightBox.RichText = true
			highlightBox.TextSize = textbox.TextSize
			highlightBox.Font = textbox.Font
			highlightBox.TextXAlignment = Enum.TextXAlignment.Left
			highlightBox.TextYAlignment = Enum.TextYAlignment.Top
			highlightBox.TextStrokeColor3 = Color3.fromRGB(40, 40, 40)
			highlightBox.TextStrokeTransparency = 0.1
			highlightBox.Text = ""
			highlightBox.Parent = textbox

			editorObj:SetTheme("default")
			textFixer.Fix(highlightBox)
			suggestions:Start(newEditor)

			textbox:GetPropertyChangedSignal("Text"):Connect(function()
				syntax.Highlight(highlightBox, textbox.Text)

				-- Fix tabs
				textbox.Text = textbox.Text:gsub("\t", "    ")
				--textbox.CursorPosition += 4

				-- Update line count
				linesLabel.Text = getLines.GetLinesString(textbox.Text)
			end)

			textbox:GetPropertyChangedSignal("CursorPosition"):Connect(function()
				-- Position line highlight
				local lineYPos = ((getLine:GetCurrentLine(textbox) * textbox.TextSize) - math.ceil(lineHighlight.AbsoluteSize.Y / 2)) + 4

				if lineYPos ~= lineHighlight.Position.Y.Offset then
					tween.TweenPosition(lineHighlight, UDim2.new(0, -10,0, lineYPos), 0.1, Enum.EasingStyle.Quad)
				end
			end)

			return editorObj
		end

		return module

	end;
};
G2L_MODULES[G2L["b1"]] = {
	Closure = function()
		local script = G2L["b1"];
		local module = {}

		local lexer 	= require(script.Parent.Lexer)
		local theme 	= require(script.Parent.Theme)
		local textFixer = require(script.Parent.TextFixer)

		local function ColorToFont(text, color)
			return string.format(
				'<font color="rgb(%s,%s,%s)">%s</font>',
				tostring(math.floor(color.R * 255)),
				tostring(math.floor(color.G * 255)),
				tostring(math.floor(color.B * 255)),
				text
			)
		end

		function module.Highlight(textbox, source)
			textbox.Text = ""

			for tokenType, text in lexer.scan(source) do
				local currentTheme = theme.current
				local tokenCol = currentTheme[tokenType]

				if tokenCol then
					textbox.Text = textbox.Text .. ColorToFont(text, tokenCol)
				else
					textbox.Text = textbox.Text .. text
				end
			end

			textFixer.Fix(textbox)
		end

		return module

	end;
};
G2L_MODULES[G2L["b2"]] = {
	Closure = function()
		local script = G2L["b2"];
		local theme = {
			current = nil,
			themes = {
				["default"] = {
					["keyword"] = Color3.fromRGB(248, 109, 124),
					["builtin"] = Color3.fromRGB(84, 184, 247),
					["string"] = Color3.fromRGB(130, 241, 149),
					["number"] = Color3.fromRGB(255, 198, 0),
					["comment"] = Color3.fromRGB(106, 106, 100),
					["thingy"] = Color3.fromRGB(253, 251, 154)
				},
				["extra 2"] = {
					["keyword"] = Color3.fromRGB(249, 36, 114),
					["builtin"] = Color3.fromRGB(95, 209, 250),
					["string"] = Color3.fromRGB(217, 219, 88),
					["number"] = Color3.fromRGB(161, 118, 209),
					["comment"] = Color3.fromRGB(116, 122, 101),
					["thingy"] = Color3.fromRGB(248, 245, 139)
				}
			}
		}

		return theme

	end;
};
G2L_MODULES[G2L["b3"]] = {
	Closure = function()
		local script = G2L["b3"];
		local module = {}

		function module.GetLines(text)
			local amount = 1

			text:gsub("\n", function()
				amount += 1
			end)

			return amount
		end

		function module.GetLinesString(text)
			local lineAmt = module.GetLines(text)
			local result = ""

			for i = 1, lineAmt do
				result = result .. i .. "\n"
			end

			-- Remove last \n
			result = result:sub(1, #result - 1)

			return result
		end

		return module

	end;
};
G2L_MODULES[G2L["b4"]] = {
	Closure = function()
		local script = G2L["b4"];
		local fakeEditor = {} -- Main module

		local textFixer = require(script.Parent.TextFixer)
		local theme = require(script.Parent.Theme)
		local syntax = require(script.Parent.Syntax)

		local editorObj = {
			SetTextSize = function(self, textSize)
				local sourceBox = self.Editor.Scroll.Source
				local syntaxBox = sourceBox.Syntax
				local linesBox = self.Editor.Scroll.Left.Lines
				local lineHighlight = sourceBox.LineHighlight

				sourceBox.TextSize = textSize
				syntaxBox.TextSize = textSize
				linesBox.TextSize = textSize
				lineHighlight.Size = UDim2.new(1, 0,0, textSize + 5)


		--[[
			Might want to fix it manually because adding another \n
			might cause some instability
		]]
				textFixer.Fix(self.Editor.Scroll.Source.Syntax)

				return textSize
			end,
			Destroy = function(self)
				self.Editor:Destroy()
				setmetatable(self, {__index = nil})
				table.clear(self)
				self = nil

				return nil
			end,
			GetText = function(self)
				local sourceBox = self.Editor.Scroll.Source
				return sourceBox.Text
			end,
			SetText = function(self, text)
				local sourceBox = self.Editor.Scroll.Source
				sourceBox.Text = text

				return text
			end,
			ContentToBytes = function(self)
				local text = self.Editor.Scroll.Source.Text
				local bytes = {}

				for _, c in pairs(text:split("")) do
					table.insert(bytes, string.byte(c))
				end

				return "/" .. table.concat(bytes, "/")
			end,
			Hide = function(self)
				local hiddenLabel = self.Editor.Scroll.Source.Hidden
				hiddenLabel.Visible = true
			end,
			Unhide = function(self)
				local hiddenLabel = self.Editor.Scroll.Source.Hidden
				hiddenLabel.Visible = false
			end,
			SetTheme = function(self, themeName)
				local sourceBox = self.Editor.Scroll.Source
				local syntaxBox = sourceBox.Syntax

				assert(theme.themes[themeName], "'" .. themeName .. "' is not a valid theme.")

				theme.current = theme.themes[themeName]

				-- Update highlighting
				syntax.Highlight(syntaxBox, sourceBox.Text)
			end,
		}

		function fakeEditor.new(editor)
			return setmetatable({Editor = editor}, {__index = editorObj})
		end

		return fakeEditor

	end;
};
G2L_MODULES[G2L["b5"]] = {
	Closure = function()
		local script = G2L["b5"];
		local module = {}

		function module.peekBack(self)
			return self.text:sub(self.position - 1, self.position - 1)
		end

		function module.next(self)
			self.position += 1

			self.character = self.text:sub(self.position, self.position)

			if self.character == "\n" then
				self.lines += 1
			end

			if self.position < #self.text and self.position < self.cursorPosition then
				self:next()
			end
		end

		function module.GetCurrentLine(self, textbox)
			self.position = 0
			self.text = textbox.Text .. " "
			self.cursorPosition = textbox.CursorPosition
			self.lines = 1

			self:next()

			return self.lines
		end

		function module.GetCurrentLineWidth(self, textbox)
			self.position = 0
			self.text = textbox.Text .. " "
			self.cursorPosition = textbox.CursorPosition
			self.lines = 1

			self:next()

			-- self.lines is the current line

			return self.position
		end

		return module

	end;
};
G2L_MODULES[G2L["b6"]] = {
	Closure = function()
		local script = G2L["b6"];
		local module = {}

		local tweenService = game:GetService("TweenService")
		local debris = game:GetService("Debris")

		-- Custom functions
		local function default(arg, def)
			if arg == nil then
				arg = def
			end
			return arg
		end

		-- Guis --

		function module.TweenScale(frame, scale, timelen, easingstyle, easingdir)
			local uiscale
			if not frame:FindFirstChild("$ScaleAnim") then
				uiscale = Instance.new("UIScale")
				uiscale.Scale = 1
				uiscale.Name = "$ScaleAnim"
				uiscale.Parent = frame
			end

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				Scale = scale
			}

			-- Finally, play tween
			tweenService:Create(uiscale, tinfo, goals):Play()
			--debris:AddItem(uiscale, timelen) -- Remove it when animation is done
		end

		function module.TweenPosition(frame, position, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(position, "No position provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				Position = position
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenSize(frame, size, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(size, "No size provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				Size = size
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenBackgroundColor3(frame, color, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(color, "No color provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				BackgroundColor3 = color
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenBackgroundTransparency(frame, transparency, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(transparency, "No transparency provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				BackgroundTransparency = transparency
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenBorderColor3(frame, color, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(color, "No color provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				BorderColor3 = color
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenBorderSizePixel(frame, bordersize, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(bordersize, "No border size provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				BorderSizePixel = bordersize
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenImageTransparency(frame, imagetransparency, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(imagetransparency, "No image transparency provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				ImageTransparency = imagetransparency
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenImageColor3(frame, color, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(color, "No color provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				ImageColor3 = color
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenImageRectOffset(frame, offset, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(offset, "No offset provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				ImageRectOffset = offset
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenImageRectSize(frame, size, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(size, "No size provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				ImageRectSize = size
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenSliceScale(frame, scale, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(scale, "No scale provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				SliceScale = scale
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenTextColor3(frame, color, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(color, "No color provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				TextColor3 = color
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenMaxVisibleGraphemes(frame, graphemes, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(graphemes, "No graphemes provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				MaxVisibleGraphemes = graphemes
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenTextSize(frame, size, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(size, "No size provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				TextSize = size
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenTextStrokeColor3(frame, color, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(color, "No color provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				TextStrokeColor3 = color
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenTextTransparency(frame, transparency, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(transparency, "No transparency provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				TextTransparency = transparency
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenTextStrokeTransparency(frame, transparency, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(transparency, "No transparency provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				TextStrokeTransparency = transparency
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenCanvasSize(frame, size, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(size, "No size provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				CanvasSize = size
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenCanvasPosition(frame, position, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(position, "No position provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				CanvasPosition = position
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenScrollBarImageTransparency(frame, transparency, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(transparency, "No transparency provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				ScrollBarImageTransparency = transparency
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenScrollBarThickness(frame, thickness, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(thickness, "No thickness provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				ScrollBarThickness = thickness
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenScrollBarImageColor3(frame, color, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(frame, "No frame provided")
			assert(color, "No color provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				ScrollBarImageColor3 = color
			}

			-- Finally, play tween
			tweenService:Create(frame, tinfo, goals):Play()
		end

		function module.TweenCFrame(thing, cframe, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(thing, "No instance provided")
			assert(cframe, "No cframe provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				CFrame = cframe
			}

			-- Finally, play tween
			tweenService:Create(thing, tinfo, goals):Play()
		end

		function module.TweenFOV(thing, fov, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(thing, "No instance provided")
			assert(fov, "No FOV provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				FieldOfView = fov
			}

			-- Finally, play tween
			tweenService:Create(thing, tinfo, goals):Play()
		end

		function module.TweenValue(thing, value, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(thing, "No instance provided")
			assert(value, "No value provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				Value = value
			}

			-- Finally, play tween
			tweenService:Create(thing, tinfo, goals):Play()
		end

		function module.TweenVolume(thing, volume, timelen, easingstyle, easingdir)
			-- Errors & defaults
			assert(thing, "No instance provided")
			assert(volume, "No volume provided")
			assert(timelen, "No time length provided")
			easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
			easingdir = default(easingdir, Enum.EasingDirection.Out)

			-- Generate tween info
			local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
			local goals = {
				Volume = volume
			}

			-- Finally, play tween
			tweenService:Create(thing, tinfo, goals):Play()
		end

		return module

	end;
};
G2L_MODULES[G2L["b7"]] = {
	Closure = function()
		local script = G2L["b7"];
		local module = {}

		function module.next(self)
			self.position += 1
			local character = self.text:sub(self.position, self.position)

			if character == "\n" or character == " " or self.position > #self.text then
				return self.position - 1
			else
				return self:next()
			end
		end

		function module.prev(self)
			self.position -= 1
			local character = self.text:sub(self.position, self.position)

			if character == "\n" or character == " " or self.position < 1 then
				return self.position + 1
			else
				return self:prev()
			end
		end

		function module.GetCurrentWord(self, textbox)
			self.cursorPosition = textbox.CursorPosition
			self.position = self.cursorPosition
			self.text = textbox.Text

			local wordEnd = self:next()
			local wordStart = self:prev()
			local wordString = self.text:sub(wordStart, wordEnd)

			return wordString
		end

		return module

	end;
};
G2L_MODULES[G2L["b8"]] = {
	Closure = function()
		local script = G2L["b8"];
--[[

	Lexical scanner for creating a sequence of tokens from Lua source code.

	This is a heavily modified and Roblox-optimized version of
	the original Penlight Lexer module:
		https://github.com/stevedonovan/Penlight

	Authors:
		stevedonovan <https://github.com/stevedonovan> ----------------- Original Penlight lexer author
		ryanjmulder  <https://github.com/ryanjmulder>  ----------------- Penlight lexer contributer
		mpeterv      <https://github.com/mpeterv>      ----------------- Penlight lexer contributer
		Tieske       <https://github.com/Tieske>       ----------------- Penlight lexer contributer
		boatbomber   <https://github.com/boatbomber>   ----------------- Roblox port, optimizations, and bug fixes
		Sleitnick    <https://github.com/Sleitnick>    ----------------- Roblox optimizations

	Usage:

		local source = "for i = 1,n do end"
		
		-- The 'scan' function returns a token iterator:
		for token,src in lexer.scan(source) do
			print(token, src)
		end

			> keyword for
			> iden    i
			> =       =
			> number  1
			> ,       ,
			> iden    n
			> keyword do
			> keyword end

	List of tokens:
		- keyword
		- builtin
		- iden
		- string
		- number
		- space
		- comment

	Other tokens that don't fall into the above categories
	will simply be returned as itself. For instance, operators
	like "+" will simply return "+" as the token.

--]]

		local lexer = {}

		local yield, wrap  = coroutine.yield, coroutine.wrap
		local strfind      = string.find
		local strsub       = string.sub
		local append       = table.insert
		local type         = type

		local NUMBER1	= "^[%+%-]?%d+%.?%d*[eE][%+%-]?%d+"
		local NUMBER2	= "^[%+%-]?%d+%.?%d*"
		local NUMBER3	= "^0x[%da-fA-F]+"
		local NUMBER4	= "^%d+%.?%d*[eE][%+%-]?%d+"
		local NUMBER5	= "^%d+%.?%d*"
		local IDEN		= "^[%a_][%w_]*"
		local WSPACE	= "^%s+"
		local STRING1	= "^(['\"])%1"							--Empty String
		local STRING2	= [[^(['"])(\*)%2%1]]
		local STRING3	= [[^(['"]).-[^\](\*)%2%1]]
		local STRING4	= "^(['\"]).-.*"						--Incompleted String
		local STRING5	= "^%[(=*)%[.-%]%1%]"					--Multiline-String
		local STRING6	= "^%[%[.-.*"							--Incompleted Multiline-String
		local CHAR1		= "^''"
		local CHAR2		= [[^'(\*)%1']]
		local CHAR3		= [[^'.-[^\](\*)%1']]
		local PREPRO	= "^#.-[^\\]\n"
		local MCOMMENT1	= "^%-%-%[(=*)%[.-%]%1%]"				--Completed Multiline-Comment
		local MCOMMENT2	= "^%-%-%[%[.-.*"						--Incompleted Multiline-Comment
		local SCOMMENT1	= "^%-%-.-\n"							--Completed Singleline-Comment
		local SCOMMENT2	= "^%-%-.-.*"							--Incompleted Singleline-Comment
		local THINGY 	= "^[%.:]%w-%s?%(.-%)"

		local lua_keyword = {
			["and"] = true,  ["break"] = true,  ["do"] = true,      ["else"] = true,      ["elseif"] = true,
			["end"] = true,  ["false"] = true,  ["for"] = true,     ["function"] = true,  ["if"] = true,
			["in"] = true,   ["local"] = true,  ["nil"] = true,     ["not"] = true,       ["while"] = true,
			["or"] = true,   ["repeat"] = true, ["return"] = true,  ["then"] = true,      ["true"] = true,
			["self"] = true, ["until"] = true
		}

		local lua_builtin = {
			["assert"] = true;["collectgarbage"] = true;["error"] = true;["_G"] = true;
			["gcinfo"] = true;["getfenv"] = true;["getmetatable"] = true;["ipairs"] = true;
			["loadstring"] = true;["newproxy"] = true;["next"] = true;["pairs"] = true;
			["pcall"] = true;["print"] = true;["rawequal"] = true;["rawget"] = true;["rawset"] = true;
			["select"] = true;["setfenv"] = true;["setmetatable"] = true;["tonumber"] = true;
			["tostring"] = true;["type"] = true;["unpack"] = true;["_VERSION"] = true;["xpcall"] = true;
			["delay"] = true;["elapsedTime"] = true;["require"] = true;["spawn"] = true;["tick"] = true;
			["time"] = true;["typeof"] = true;["UserSettings"] = true;["wait"] = true;["warn"] = true;
			["game"] = true;["Enum"] = true;["script"] = true;["shared"] = true;["workspace"] = true;
			["Axes"] = true;["BrickColor"] = true;["CFrame"] = true;["Color3"] = true;["ColorSequence"] = true;
			["ColorSequenceKeypoint"] = true;["Faces"] = true;["Instance"] = true;["NumberRange"] = true;
			["NumberSequence"] = true;["NumberSequenceKeypoint"] = true;["PhysicalProperties"] = true;
			["Random"] = true;["Ray"] = true;["Rect"] = true;["Region3"] = true;["Region3int16"] = true;
			["TweenInfo"] = true;["UDim"] = true;["UDim2"] = true;["Vector2"] = true;["Vector3"] = true;
			["Vector3int16"] = true;["next"] = true;["dofile"] = true;["writefile"] = true;["readfile"] = true;
			["isfile"] = true;["delfile"] = true;["isfolder"] = true;["makefolder"] = true;["delfolder"] = true;["listfiles"] = true;
			["descend"] = true;
			["os"] = true;
			--["os.time"] = true;["os.date"] = true;["os.difftime"] = true;
			["debug"] = true;
			--["debug.traceback"] = true;["debug.profilebegin"] = true;["debug.profileend"] = true;
			["math"] = true;
			--["math.abs"] = true;["math.acos"] = true;["math.asin"] = true;["math.atan"] = true;["math.atan2"] = true;["math.ceil"] = true;["math.clamp"] = true;["math.cos"] = true;["math.cosh"] = true;["math.deg"] = true;["math.exp"] = true;["math.floor"] = true;["math.fmod"] = true;["math.frexp"] = true;["math.ldexp"] = true;["math.log"] = true;["math.log10"] = true;["math.max"] = true;["math.min"] = true;["math.modf"] = true;["math.noise"] = true;["math.pow"] = true;["math.rad"] = true;["math.random"] = true;["math.randomseed"] = true;["math.sign"] = true;["math.sin"] = true;["math.sinh"] = true;["math.sqrt"] = true;["math.tan"] = true;["math.tanh"] = true;
			["coroutine"] = true;
			--["coroutine.create"] = true;["coroutine.resume"] = true;["coroutine.running"] = true;["coroutine.status"] = true;["coroutine.wrap"] = true;["coroutine.yield"] = true;
			["string"] = true;
			--["string.byte"] = true;["string.char"] = true;["string.dump"] = true;["string.find"] = true;["string.format"] = true;["string.len"] = true;["string.lower"] = true;["string.match"] = true;["string.rep"] = true;["string.reverse"] = true;["string.sub"] = true;["string.upper"] = true;["string.gmatch"] = true;["string.gsub"] = true;
			["table"] = true;
			--["table.concat"] = true;["table.insert"] = true;["table.remove"] = true;["table.sort"] = true;
		}

		local function tdump(tok)
			return yield(tok, tok)
		end

		local function ndump(tok)
			return yield("number", tok)
		end

		local function sdump(tok)
			return yield("string", tok)
		end

		local function cdump(tok)
			return yield("comment", tok)
		end

		local function wsdump(tok)
			return yield("space", tok)
		end

		local function lua_vdump(tok)
			if (lua_keyword[tok]) then
				return yield("keyword", tok)
			elseif (lua_builtin[tok]) then
				return yield("builtin", tok)
			else
				return yield("iden", tok)
			end
		end

		local function thingy_dump(tok)
			return yield("thingy", tok)
		end

		local lua_matches = {
			{THINGY, thingy_dump},

			{IDEN,      lua_vdump},        -- Indentifiers
			{WSPACE,    wsdump},           -- Whitespace
			{NUMBER3,   ndump},            -- Numbers
			{NUMBER4,   ndump},
			{NUMBER5,   ndump},
			{STRING1,   sdump},            -- Strings
			{STRING2,   sdump},
			{STRING3,   sdump},
			{STRING4,   sdump},
			{STRING5,   sdump},            -- Multiline-Strings
			{STRING6,   sdump},            -- Multiline-Strings

			{MCOMMENT1, cdump},            -- Multiline-Comments
			{MCOMMENT2, cdump},			
			{SCOMMENT1, cdump},            -- Singleline-Comments
			{SCOMMENT2, cdump},

			{"^==",     tdump},            -- Operators
			{"^~=",     tdump},
			{"^<=",     tdump},
			{"^>=",     tdump},
			{"^%.%.%.", tdump},
			{"^%.%.",   tdump},
			{"^.",      tdump},
		}

		local num_lua_matches = #lua_matches


		--- Create a plain token iterator from a string.
		-- @tparam string s a string.
		function lexer.scan(s)

			local function lex(first_arg)

				local line_nr = 0
				local sz = #s
				local idx = 1

				-- res is the value used to resume the coroutine.
				local function handle_requests(res)
					while (res) do
						local tp = type(res)
						-- Insert a token list:
						if (tp == "table") then
							res = yield("", "")
							for i = 1,#res do
								local t = res[i]
								res = yield(t[1], t[2])
							end
						elseif (tp == "string") then -- Or search up to some special pattern:
							local i1, i2 = strfind(s, res, idx)
							if (i1) then
								local tok = strsub(s, i1, i2)
								idx = (i2 + 1)
								res = yield("", tok)
							else
								res = yield("", "")
								idx = (sz + 1)
							end
						else
							res = yield(line_nr, idx)
						end
					end
				end

				handle_requests(first_arg)
				line_nr = 1

				while (true) do

					if (idx > sz) then
						while (true) do
							handle_requests(yield())
						end
					end

					for i = 1,num_lua_matches do
						local m = lua_matches[i]
						local pat = m[1]
						local fun = m[2]
						local findres = {strfind(s, pat, idx)}
						local i1, i2 = findres[1], findres[2]
						if (i1) then
							local tok = strsub(s, i1, i2)
							idx = (i2 + 1)
							lexer.finished = (idx > sz)
							local res = fun(tok, findres)
							if (tok:find("\n")) then
								-- Update line number:
								local _,newlines = tok:gsub("\n", {})
								line_nr = (line_nr + newlines)
							end
							handle_requests(res)
							break
						end
					end

				end

			end

			return wrap(lex)

		end

		return lexer
	end;
};
G2L_MODULES[G2L["b9"]] = {
	Closure = function()
		local script = G2L["b9"];
		local module = {}

		--// Vars
		local words   = require(script.Parent.Words)
		local GetWord = require(script.Parent.GetWord)
		local getLine = require(script.Parent.GetLine)

		--// Funcs
		function module.GetCurrentWord(self)
			return GetWord:GetCurrentWord(self.Textbox)
		end

		function module.Search(self)

			return nil
		end

		function module.Start(self, editor)
			self.Editor = editor
			self.Textbox = editor.Scroll.Source
			self.SuggestionButton = self.Textbox.Suggestion

			self.Textbox:GetPropertyChangedSignal("Text"):Connect(function()
				local foundWord, matchedLength = nil

				if foundWord then
					local position = UDim2.new(0, 0,0, getLine:GetCurrentLine(self.Textbox) * self.Textbox.TextSize)

					self.SuggestionButton.Text = foundWord
					self.SuggestionButton.Position = position
					self.SuggestionButton.Visible = true
					self.MatchedLength = matchedLength
				else
					self.SuggestionButton.Visible = false
				end
			end)

			self.SuggestionButton.MouseButton1Click:Connect(function(input)
				-- Fill in the word
				local word = self.SuggestionButton.Text
				self.SuggestionButton.Visible = false
				self.Textbox.Text = self.Textbox.Text:sub(1, self.Textbox.CursorPosition - 1 - (self.MatchedLength or 0)) .. word .. self.Textbox.Text:sub(self.Textbox.CursorPosition + 1, #self.Textbox.Text)

				local newCursorPosition = self.Textbox.CursorPosition + #word - self.MatchedLength
				wait()
				self.Textbox:ReleaseFocus()
				self.Textbox:CaptureFocus()
				self.Textbox.CursorPosition = newCursorPosition
			end)
		end

		return module

	end;
};
G2L_MODULES[G2L["ba"]] = {
	Closure = function()
		local script = G2L["ba"];
		local words = {
			['print'] = 'builtin',
			['warn'] = 'builtin',
			['Vector3'] = 'builtin',
			['Vector2'] = 'builtin',
			['error'] = 'builtin',
			['Instance'] = 'builtin',
			['game'] = 'builtin',
			['script'] = 'builtin',
			['workspace'] = 'builtin',

			['while'] = 'keyword',
			['true'] = 'keyword',
			['false'] = 'keyword',
			['then'] = 'keyword',
			['do'] = 'keyword',
			['if'] = 'keyword',
		}

		return words

	end;
};
G2L_MODULES[G2L["bb"]] = {
	Closure = function()
		local script = G2L["bb"];
		-- Fixes a Roblox bug with RichText

		-- If the bug gets fixed, this will break the editor (visually).
		-- In this case, please remove any instances of this module being used.

		local module = {}

		function module.Fix(textbox)
			if textbox.Text:sub(1, 1) ~= "\n" then
				textbox.Text = "\n" .. textbox.Text
			end

			textbox.Position = UDim2.new(0, -3.5,0,-8.8)
			textbox.Size = UDim2.new(1, 4,1, textbox.TextSize)
		end

		return module

	end;
};
-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.Continue.TextButton.LocalScript
local function C_12()
	local script = G2L["12"];
	local btn = script.Parent
	local key = script.Parent.Parent.Parent.SideTextbox.MainTextBox
	btn.MouseButton1Click:Connect(function()
		if key.Text == "TEST KEY" then
			script.Parent.Parent.Parent.Parent.Parent.FloatingIcon.Visible =true
			script.Parent.Parent.Parent.Visible = false
		end
	end)
end;
task.spawn(C_12);
-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.GetKey.TextButton.LocalScript
local function C_19()
	local script = G2L["19"];
	local btn = script.Parent
	btn.MouseButton1Click:Connect(function()
		setclipboard("LINK HERE")
	end)
end;
task.spawn(C_19);
-- StarterGui.DeltaGui.KeySystem.MainKeyFrame.JoinServer.TextButton.LocalScript
local function C_20()
	local script = G2L["20"];
	local btn = script.Parent
	btn.MouseButton1Click:Connect(function()
		setclipboard("LINK HERE")
	end)
end;
task.spawn(C_20);
-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.Home.LocalScript
local function C_30()
	local script = G2L["30"];
	local btn = script.Parent

	btn.MouseButton1Click:Connect(function()
		btn.Image = btn.OnImage.Value
		for _,v in pairs(script.Parent.Parent:GetChildren()) do
			if v.Name ~= script.Parent.Name then
				if v:FindFirstChild("OffImage") and v:FindFirstChild("OnImage") then
					v.Image = v.OffImage.Value
				end
			end
		end
		for _,v in pairs(script.Parent.Parent.Parent.Parent.Tabs:GetChildren()) do
			if v.Name ~= btn.Name then
				v.Visible = false
			else
				v.Visible = true
			end
		end
	end)

end;
task.spawn(C_30);
-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.MakeScript.LocalScript
local function C_35()
	local script = G2L["35"];
	local btn = script.Parent

	btn.MouseButton1Click:Connect(function()
		btn.Image = btn.OnImage.Value
		for _,v in pairs(script.Parent.Parent:GetChildren()) do
			if v.Name ~= script.Parent.Name then
				if v:FindFirstChild("OffImage") and v:FindFirstChild("OnImage") then
					v.Image = v.OffImage.Value
				end
			end
		end
		for _,v in pairs(script.Parent.Parent.Parent.Parent.Tabs:GetChildren()) do
			if v.Name ~= btn.Name then
				v.Visible = false
			else
				v.Visible = true
			end
		end
	end)

end;
task.spawn(C_35);
-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.Minimize.LocalScript
local function C_3a()
	local script = G2L["3a"];
	local btn = script.Parent

	btn.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent.Parent.MainFrame.Visible = false
		script.Parent.Parent.Parent.Parent.Parent.Parent.FloatingIcon.Visible = true
	end)


end;
task.spawn(C_3a);
-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.Settings.LocalScript
local function C_3f()
	local script = G2L["3f"];
	local btn = script.Parent

	btn.MouseButton1Click:Connect(function()
		btn.Image = btn.OnImage.Value
		for _,v in pairs(script.Parent.Parent:GetChildren()) do
			if v.Name ~= script.Parent.Name then
				if v:FindFirstChild("OffImage") and v:FindFirstChild("OnImage") then
					v.Image = v.OffImage.Value
				end
			end
		end
		for _,v in pairs(script.Parent.Parent.Parent.Parent.Tabs:GetChildren()) do
			if v.Name ~= btn.Name then
				v.Visible = false
			else
				v.Visible = true
			end
		end
	end)

end;
task.spawn(C_3f);
-- StarterGui.DeltaGui.MainUi.MainFrame.SideFrame.Buttons.Scripts.LocalScript
local function C_44()
	local script = G2L["44"];
	local btn = script.Parent

	btn.MouseButton1Click:Connect(function()
		btn.Image = btn.OnImage.Value
		for _,v in pairs(script.Parent.Parent:GetChildren()) do
			if v.Name ~= script.Parent.Name then
				if v:FindFirstChild("OffImage") and v:FindFirstChild("OnImage") then
					v.Image = v.OffImage.Value
				end
			end
		end
		for _,v in pairs(script.Parent.Parent.Parent.Parent.Tabs:GetChildren()) do
			if v.Name ~= btn.Name then
				v.Visible = false
			else
				v.Visible = true
			end
		end
	end)

end;
task.spawn(C_44);
-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.GoBack.TextButton.LocalScript
local function C_51()
	local script = G2L["51"];
	local btn = script.Parent



	btn.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent.AddScript1.Visible = true
		script.Parent.Parent.Parent.Parent.ScriptTextbox.Visible = false
		script.Parent.Parent.Parent.Parent.Scripts.Visible = true
		script.Parent.Parent.Parent.Parent.TitleScript.Visible = false
	end)
end;
task.spawn(C_51);
-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.AddScript.TextButton.LocalScript



	local script = G2L["58"];
	local btn = script.Parent

	local function AddScript(name, source, loading)
        if(loading == false) then
            makefolder("d_android_script_dir")
            writefile("d_android_script_dir/" .. name, source)
        end
		local parent = script.Parent.Parent.Parent.Parent.Scripts.ScriptFrame
		local hub = script.Parent.Parent.Parent.Parent.Scripts.LIST
		local newhub = hub:Clone()

		local scriptname = newhub.TitleScript.TextLabel
		local execbutton = newhub.Execute.TextButton
		local delbutton = newhub.Delete.TextButton

		newhub.Parent = parent
		newhub.Visible = true
		scriptname.Text = name
		execbutton.MouseButton1Click:Connect(function()
			loadstring(source)()
			game.StarterGui:SetCore("SendNotification", 
            {
            Title = "Delta Android";
            Text = "Successfully executed the script!";
            Duration = 1;
            })
		end)
		delbutton.MouseButton1Click:Connect(function()
            delfile("d_android_script_dir/"..name)
			newhub:Destroy()
		end)
	end

    for _, file in ipairs(listfiles("d_android_script_dir")) do
        AddScript(file:sub(22, #file), readfile(file), true)
    end


	btn.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent.AddScript1.Visible = true
		script.Parent.Parent.Parent.Parent.ScriptTextbox.Visible = false
		script.Parent.Parent.Parent.Parent.Scripts.Visible = true
		script.Parent.Parent.Parent.Parent.TitleScript.Visible = false

		AddScript(script.Parent.Parent.Parent.Parent.TitleScript.MainTextBox.Text, script.Parent.Parent.Parent.TextboxBar.Editor.Scroll.Source.Text, false)
		script.Parent.Parent.Parent.TextboxBar.Editor.Scroll.Source.Text = ""
		script.Parent.Parent.Parent.Parent.TitleScript.MainTextBox.Text = ""
	end)



local function load_saved_scripts()
    --test
end
    

-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript
local function C_5f()
	local script = G2L["5f"];
	local ScriptEditor = require(script.ScriptEditor)
	local editor = ScriptEditor.new(script.Parent)
end;
task.spawn(C_5f);
-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Left.AdaptSize
local function C_7a()
	local script = G2L["7a"];
	local defaultSize = script.Parent.Size
	local textbox = script.Parent.Parent.Source

	textbox:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		local height = textbox.AbsoluteSize.Y

		script.Parent.Size = UDim2.new(
			defaultSize.X.Scale,
			defaultSize.X.Offset,
			0,
			height
		)
	end)
end;
task.spawn(C_7a);
-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.MakeScript.AddScript1.TextButton.LocalScript
local function C_93()
	local script = G2L["93"];
	local btn = script.Parent
	btn.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
		script.Parent.Parent.Parent.ScriptTextbox.Visible =true
		script.Parent.Parent.Parent.TitleScript.Visible = true
		script.Parent.Parent.Parent.Scripts.Visible = false
	end)
end;
task.spawn(C_93);
-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.Execute.TextButton.LocalScript
local function C_9c()
	local script = G2L["9c"];
	local btn = script.Parent
	btn.MouseButton1Click:Connect(function()
		loadstring(script.Parent.Parent.Parent.TextboxBar.Editor.Scroll.Source.Text)()
		game.StarterGui:SetCore("SendNotification", 
            {
            Title = "Delta Android";
            Text = "Successfully executed the script!";
            Duration = 1;
            })
	end)
end;
task.spawn(C_9c);
-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.Clear.TextButton.LocalScript
local function C_a3()
	local script = G2L["a3"];
	local btn = script.Parent
	btn.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.TextboxBar.Editor.Scroll.Source.Text = ''
	end)
end;
task.spawn(C_a3);
-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.ExecuteClipboard.TextButton.LocalScript
local function C_aa()
	local script = G2L["aa"];
	local btn = script.Parent
	btn.MouseButton1Click:Connect(function()
		loadstring(getclipboard())()
		game.StarterGui:SetCore("SendNotification", 
            {
            Title = "Delta Android";
            Text = "Successfully executed from clipboard!";
            Duration = 1;
            })
	end)
end;
task.spawn(C_aa);
-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript
local function C_af()
	local script = G2L["af"];
	local ScriptEditor = require(script.ScriptEditor)
	local editor = ScriptEditor.new(script.Parent)
end;
task.spawn(C_af);
-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.LocalScript.ScriptEditor.Editor.Scroll.Left.AdaptSize
local function C_ca()
	local script = G2L["ca"];
	local defaultSize = script.Parent.Size
	local textbox = script.Parent.Parent.Source

	textbox:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		local height = textbox.AbsoluteSize.Y

		script.Parent.Size = UDim2.new(
			defaultSize.X.Scale,
			defaultSize.X.Offset,
			0,
			height
		)
	end)
end;
task.spawn(C_ca);
-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Scripts.Search.TextButton.LocalScript
local function C_fd()
	local script = G2L["fd"];
	local btn = script.Parent

	local function AddTab(imageTab, creator, scriptname, source)
		local scriptFrame = script.Parent.Parent.Parent.Scripts.ScriptFrame
		local newList = scriptFrame.Parent.Folder.LIST:Clone()

		local execute = newList.Execute.TextButton
		local save = newList.Save.TextButton
		local loadtext = newList.LoadText.TextButton
		local copy = newList.Copy.TextButton
		local hide = newList.Hide.TextButton

		local scname = newList.NameScript
		local credit = newList.Credit
		local img = newList.ImageButton

		newList.Name = scriptname
		newList.Parent = scriptFrame
		newList.Visible = true

		img.Image = imageTab

		credit.Text = "Uploaded by: "..creator
		scname.Text = scriptname


		execute.MouseButton1Click:Connect(function()
			loadstring(source)()
			game.StarterGui:SetCore("SendNotification", 
            {
            Title = "Delta Android";
            Text = "Successfully executed the script!";
            Duration = 1;
            })
		end)
        copy.MouseButton1Click:Connect(function()
			setclipboard(source)
            game.StarterGui:SetCore("SendNotification", 
            {
            Title = "Delta Android";
            Text = "Successfully copied the script!";
            Duration = 5;
            })
		end)
		save.MouseButton1Click:Connect(function()
            AddScript(scriptname, source, false)
            game.StarterGui:SetCore("SendNotification", 
            {
            Title = "Delta Android";
            Text = "Sucessfully saved the script in the script hub";
            Duration = 5;
            })
            --assaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaassaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
		end)
		loadtext.MouseButton1Click:Connect(function()
			game.StarterGui:SetCore("SendNotification", 
            {
            Title = "Delta Android";
            Text = "Work In Progress / Coming Soon";
            Duration = 5;
            })

		end)
	end


	local http = game:GetService("HttpService")
	btn.MouseButton1Click:Connect(function()
		for _, child in ipairs(G2L["d2"]:GetChildren()) do
			if child:IsA("Frame") then
			  child:Destroy()
			end
		  end

		  
		local url = "https://scriptblox.com/api/script/search?filters=free&q="..G2L["ce"].Text
		local response = game:HttpGetAsync(url)
		local decoded = http:JSONDecode(response)
		for _, script in pairs(decoded.result.scripts) do
            if(script.isUniversal == true) then
                AddTab("rbxassetid://12742166887", "??", script.title, script.script)
            else
                AddTab("https://assetgame.roblox.com/Game/Tools/ThumbnailAsset.ashx?aid="..script.game.gameId.."&fmt=png&wd=420&ht=420", "??", script.title, script.script)
            end
			
		end

	end)

end;
task.spawn(C_fd);
-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.WalkSpeed.Set.LocalScript
local function C_10a()
	local script = G2L["10a"];
	local btn = script.Parent
	local textbox = script.Parent.Parent.TextBox

	btn.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(textbox.Text)
	end)
end;
task.spawn(C_10a);
-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.InviteLink.LocalScript
local function C_110()
	local script = G2L["110"];
	local btn = script.Parent
	btn.MouseButton1Click:Connect(function()
		setclipboard("discord.gg/deltaex")
        game.StarterGui:SetCore("SendNotification", 
    {
    Title = "Delta Android";
    Text = "Copied the discord invite to you clipboard";
    Duration = 5;
    })

	end)
end;
task.spawn(C_110);
-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.Credits.LocalScript
local function C_115()
	local script = G2L["115"];
	local btn = script.Parent
	btn.MouseButton1Click:Connect(function()
		game.StarterGui:SetCore("SendNotification", 
    {
    Title = "Delta Android";
    Text = "Made by ShowerheadFD & Lxnny/DeltaTeam";
    Duration = 5;
    })

	end)
end;
task.spawn(C_115);
-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.UnlockFPS.LocalScript
local function C_11b()
	local script = G2L["11b"];
	local btn = script.Parent
	btn.MouseButton1Click:Connect(function()
		setfpscap(0)
	end)
end;
task.spawn(C_11b);
-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.JumpPower.Set.LocalScript
local function C_123()
	local script = G2L["123"];
	local btn = script.Parent
	local textbox = script.Parent.Parent.TextBox

	btn.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(textbox.Text)
	end)
end;
task.spawn(C_123);
-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.Gravity.Set.LocalScript
local function C_12c()
	local script = G2L["12c"];
	local btn = script.Parent
	local textbox = script.Parent.Parent.TextBox

	btn.MouseButton1Click:Connect(function()
		workspace.Gravity = tonumber(textbox.Text)
	end)
end;
task.spawn(C_12c);
-- StarterGui.DeltaGui.MainUi.MainFrame.Tabs.Settings.Gravity.Reset.LocalScript
local function C_130()
	local script = G2L["130"];
	local btn = script.Parent
	local textbox = script.Parent.Parent.TextBox

	btn.MouseButton1Click:Connect(function()
		workspace.Gravity = 196.2
	end)
end;
task.spawn(C_130);
-- StarterGui.DeltaGui.MainUi.MainFrame.DraggableStuff
local function C_132()
	local script = G2L["132"];
	script.Parent.Draggable = true
end;
task.spawn(C_132);
-- StarterGui.DeltaGui.FloatingIcon.LocalScript
local function C_135()
	local script = G2L["135"];
	script.Parent.Draggable = true
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.MainUi.MainFrame.Visible = true
		script.Parent.Visible = false
	end)
end;
task.spawn(C_135);

load_saved_scripts()
if isfile("theme.delta") then
    local HttpService = game:GetService("HttpService")
local json = readfile("theme.delta")
local data = HttpService:JSONDecode(json)


local BgColor = Color3.fromHex(data.BgColor)
local BtnColor = Color3.fromHex(data.BtnColor)
local MenuColor = Color3.fromHex(data.MenuColor)
local SettingBtnColor = Color3.fromHex(data.SettingInputColor)


local gui = gethui().DeltaGui
local BG = gui.MainUi.MainFrame

BG.BackgroundColor3 = BgColor
gui.FloatingIcon.BackgroundColor3 = BgColor

-- Menus
    -- Script List
    gethui().DeltaGui.MainUi.MainFrame.Tabs.MakeScript.TitleScript.BackgroundColor3 = MenuColor
    gethui().DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.BackgroundColor3 = MenuColor
    --Executor Home
    gethui().DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.BackgroundColor3 = MenuColor
	--Script Search
    gethui().DeltaGui.MainUi.MainFrame.Tabs.Scripts.TitleScript.BackgroundColor3 = MenuColor
	--Settings
    gethui().DeltaGui.MainUi.MainFrame.Tabs.Settings.WalkSpeed.BackgroundColor3 = MenuColor
    gethui().DeltaGui.MainUi.MainFrame.Tabs.Settings.JumpPower.BackgroundColor3 = MenuColor
    gethui().DeltaGui.MainUi.MainFrame.Tabs.Settings.Gravity.BackgroundColor3 = MenuColor
    gethui().DeltaGui.MainUi.MainFrame.Tabs.Settings.Credits.BackgroundColor3 = MenuColor
    gethui().DeltaGui.MainUi.MainFrame.Tabs.Settings.InviteLink.BackgroundColor3 = MenuColor
    gethui().DeltaGui.MainUi.MainFrame.Tabs.Settings.UnlockFPS.BackgroundColor3 = MenuColor

task.spawn(function()
	gethui().DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.Folder.LIST.BackgroundColor3 = MenuColor
	gethui().DeltaGui.MainUi.MainFrame.Tabs.MakeScript.Scripts.LIST.TitleScript.BackgroundColor3 = MenuColor
	for _, script in pairs(gethui().DeltaGui.MainUi.MainFrame.Tabs.MakeScript.Scripts.ScriptFrame:GetChildren()) do
		if script.Name == "LIST" then
			script.TitleScript.BackgroundColor3 = MenuColor
		end
	end
	for _, script in pairs(gethui().DeltaGui.MainUi.MainFrame.Tabs.Scripts.Scripts.ScriptFrame:GetChildren()) do
		if script:IsA("Frame") then
			script.BackgroundColor3 = MenuColor
		end
	end
end)


-- Buttons
task.spawn(function()
	for _, inside in pairs(gethui().DeltaGui.MainUi.MainFrame.Tabs:GetDescendants()) do
		if inside:IsA("Frame") and inside:FindFirstChild("ImageLabel") and inside:FindFirstChild("TextButton") then
			inside.BackgroundColor3 = BtnColor
			inside.ImageLabel.BackgroundColor3 = BtnColor
			inside.TextButton.BackgroundColor3 = BtnColor
			
		end
	end
	
	-- Setting btns
	gethui().DeltaGui.MainUi.MainFrame.Tabs.Settings.Gravity.Reset.BackgroundColor3 = SettingBtnColor
	gethui().DeltaGui.MainUi.MainFrame.Tabs.Settings.Gravity.Set.BackgroundColor3 = SettingBtnColor
	gethui().DeltaGui.MainUi.MainFrame.Tabs.Settings.Gravity.TextBox.BackgroundColor3 = SettingBtnColor
	gethui().DeltaGui.MainUi.MainFrame.Tabs.Settings.JumpPower.Set.BackgroundColor3 = SettingBtnColor
	gethui().DeltaGui.MainUi.MainFrame.Tabs.Settings.JumpPower.TextBox.BackgroundColor3 = SettingBtnColor
	gethui().DeltaGui.MainUi.MainFrame.Tabs.Settings.WalkSpeed.Set.BackgroundColor3 = SettingBtnColor
	gethui().DeltaGui.MainUi.MainFrame.Tabs.Settings.WalkSpeed.TextBox.BackgroundColor3 = SettingBtnColor
	
end)

if(data.editor_image ~= "") then
local ImageFile = "delta_theme_image"
local ImageTransparency = data.image_opacity


gethui().DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.Editor.Image = getcustomasset(ImageFile)
gethui().DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.Editor.Image = getcustomasset(ImageFile)
gethui().DeltaGui.MainUi.MainFrame.Tabs.Home.ScriptTextbox.TextboxBar.Editor.ImageTransparency = ImageTransparency
gethui().DeltaGui.MainUi.MainFrame.Tabs.MakeScript.ScriptTextbox.TextboxBar.Editor.ImageTransparency = ImageTransparency



end

end



return G2L["1"], require;