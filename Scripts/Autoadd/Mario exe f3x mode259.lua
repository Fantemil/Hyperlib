-- Created by c00lkidd

-- Instances: 60 | Scripts: 20 | Modules: 0
local G2L = {};

-- StarterGui.F3XHUB
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[F3XHUB]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;

-- StarterGui.F3XHUB.Bar
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(250, 0, 0);
G2L["2"]["Size"] = UDim2.new(0.5647348761558533, 0, 0.11222444474697113, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Position"] = UDim2.new(0.21701602637767792, 0, 0.1402805596590042, 0);
G2L["2"]["Name"] = [[Bar]];

-- StarterGui.F3XHUB.Bar.Main
G2L["3"] = Instance.new("Frame", G2L["2"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(171, 86, 0);
G2L["3"]["Size"] = UDim2.new(1.0020790100097656, 0, 4.335403919219971, 0);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Position"] = UDim2.new(-3.331613385171295e-08, 0, 0.9999999403953552, 0);
G2L["3"]["Name"] = [[Main]];

-- StarterGui.F3XHUB.Bar.Main.BigHead
G2L["4"] = Instance.new("TextButton", G2L["3"]);
G2L["4"]["TextWrapped"] = true;
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["TextScaled"] = true;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["TextSize"] = 14;
G2L["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["Size"] = UDim2.new(0.2614651620388031, 0, 0.09473495930433273, 0);
G2L["4"]["Name"] = [[BigHead]];
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Text"] = [[Big Head]];
G2L["4"]["Position"] = UDim2.new(0.06100853905081749, 0, 0.03855844587087631, 0);

-- StarterGui.F3XHUB.Bar.Main.BigHead.UICorner
G2L["5"] = Instance.new("UICorner", G2L["4"]);
G2L["5"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.F3XHUB.Bar.Main.BigHead.LocalScript
G2L["6"] = Instance.new("LocalScript", G2L["4"]);


-- StarterGui.F3XHUB.Bar.Main.BumAll
G2L["7"] = Instance.new("TextButton", G2L["3"]);
G2L["7"]["TextWrapped"] = true;
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["TextScaled"] = true;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["TextSize"] = 14;
G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["Size"] = UDim2.new(0.2614651620388031, 0, 0.09473495930433273, 0);
G2L["7"]["Name"] = [[BumAll]];
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Text"] = [[Bum All]];
G2L["7"]["Position"] = UDim2.new(0.36823010444641113, 0, 0.03855844587087631, 0);

-- StarterGui.F3XHUB.Bar.Main.BumAll.UICorner
G2L["8"] = Instance.new("UICorner", G2L["7"]);
G2L["8"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.F3XHUB.Bar.Main.BumAll.LocalScript
G2L["9"] = Instance.new("LocalScript", G2L["7"]);


-- StarterGui.F3XHUB.Bar.Main.ColorAll
G2L["a"] = Instance.new("TextButton", G2L["3"]);
G2L["a"]["TextWrapped"] = true;
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["TextScaled"] = true;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["TextSize"] = 14;
G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["Size"] = UDim2.new(0.2636440396308899, 0, 0.09473495930433273, 0);
G2L["a"]["Name"] = [[ColorAll]];
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Text"] = [[Color All]];
G2L["a"]["Position"] = UDim2.new(0.6710939407348633, 0, 0.03855844587087631, 0);

-- StarterGui.F3XHUB.Bar.Main.ColorAll.UICorner
G2L["b"] = Instance.new("UICorner", G2L["a"]);
G2L["b"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.F3XHUB.Bar.Main.ColorAll.LocalScript
G2L["c"] = Instance.new("LocalScript", G2L["a"]);


-- StarterGui.F3XHUB.Bar.Main.DecalSpam
G2L["d"] = Instance.new("TextButton", G2L["3"]);
G2L["d"]["TextWrapped"] = true;
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["TextScaled"] = true;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["TextSize"] = 14;
G2L["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["Size"] = UDim2.new(0.2614651620388031, 0, 0.09473495930433273, 0);
G2L["d"]["Name"] = [[DecalSpam]];
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Text"] = [[Decal Spam]];
G2L["d"]["Position"] = UDim2.new(0.06100853905081749, 0, 0.216508150100708, 0);

-- StarterGui.F3XHUB.Bar.Main.DecalSpam.UICorner
G2L["e"] = Instance.new("UICorner", G2L["d"]);
G2L["e"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.F3XHUB.Bar.Main.DecalSpam.LocalScript
G2L["f"] = Instance.new("LocalScript", G2L["d"]);


-- StarterGui.F3XHUB.Bar.Main.FireAll
G2L["10"] = Instance.new("TextButton", G2L["3"]);
G2L["10"]["TextWrapped"] = true;
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["TextScaled"] = true;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["TextSize"] = 14;
G2L["10"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["10"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["Size"] = UDim2.new(0.2614651620388031, 0, 0.09473495930433273, 0);
G2L["10"]["Name"] = [[FireAll]];
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["Text"] = [[Fire All]];
G2L["10"]["Position"] = UDim2.new(0.36823010444641113, 0, 0.216508150100708, 0);

-- StarterGui.F3XHUB.Bar.Main.FireAll.UICorner
G2L["11"] = Instance.new("UICorner", G2L["10"]);
G2L["11"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.F3XHUB.Bar.Main.FireAll.LocalScript
G2L["12"] = Instance.new("LocalScript", G2L["10"]);


-- StarterGui.F3XHUB.Bar.Main.Rain Toad
G2L["13"] = Instance.new("TextButton", G2L["3"]);
G2L["13"]["TextWrapped"] = true;
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["TextScaled"] = true;
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["TextSize"] = 14;
G2L["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["13"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["Size"] = UDim2.new(0.2636440396308899, 0, 0.09473495930433273, 0);
G2L["13"]["Name"] = [[Rain Toad]];
G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["Text"] = [[Rain Toad]];
G2L["13"]["Position"] = UDim2.new(0.6710939407348633, 0, 0.216508150100708, 0);

-- StarterGui.F3XHUB.Bar.Main.Rain Toad.UICorner
G2L["14"] = Instance.new("UICorner", G2L["13"]);
G2L["14"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.F3XHUB.Bar.Main.Rain Toad.LocalScript
G2L["15"] = Instance.new("LocalScript", G2L["13"]);


-- StarterGui.F3XHUB.Bar.Main.ThomasEngine
G2L["16"] = Instance.new("TextButton", G2L["3"]);
G2L["16"]["TextWrapped"] = true;
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["TextScaled"] = true;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["TextSize"] = 14;
G2L["16"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["16"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["Size"] = UDim2.new(0.2614651620388031, 0, 0.09473495930433273, 0);
G2L["16"]["Name"] = [[ThomasEngine]];
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["Text"] = [[Become Thomas]];
G2L["16"]["Position"] = UDim2.new(0.06100853905081749, 0, 0.39000919461250305, 0);

-- StarterGui.F3XHUB.Bar.Main.ThomasEngine.UICorner
G2L["17"] = Instance.new("UICorner", G2L["16"]);
G2L["17"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.F3XHUB.Bar.Main.ThomasEngine.LocalScript
G2L["18"] = Instance.new("LocalScript", G2L["16"]);


-- StarterGui.F3XHUB.Bar.Main.Unanchor
G2L["19"] = Instance.new("TextButton", G2L["3"]);
G2L["19"]["TextWrapped"] = true;
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["TextScaled"] = true;
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["TextSize"] = 14;
G2L["19"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["19"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19"]["Size"] = UDim2.new(0.2614651620388031, 0, 0.09473495930433273, 0);
G2L["19"]["Name"] = [[Unanchor]];
G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["Text"] = [[Unanchor]];
G2L["19"]["Position"] = UDim2.new(0.36823010444641113, 0, 0.39000919461250305, 0);

-- StarterGui.F3XHUB.Bar.Main.Unanchor.UICorner
G2L["1a"] = Instance.new("UICorner", G2L["19"]);
G2L["1a"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.F3XHUB.Bar.Main.Unanchor.LocalScript
G2L["1b"] = Instance.new("LocalScript", G2L["19"]);


-- StarterGui.F3XHUB.Bar.Main.CreateBasePlate
G2L["1c"] = Instance.new("TextButton", G2L["3"]);
G2L["1c"]["TextWrapped"] = true;
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["TextScaled"] = true;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["TextSize"] = 14;
G2L["1c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["Size"] = UDim2.new(0.2636440396308899, 0, 0.09473495930433273, 0);
G2L["1c"]["Name"] = [[CreateBasePlate]];
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["Text"] = [[Create Baseplate]];
G2L["1c"]["Position"] = UDim2.new(0.6710939407348633, 0, 0.39000919461250305, 0);

-- StarterGui.F3XHUB.Bar.Main.CreateBasePlate.UICorner
G2L["1d"] = Instance.new("UICorner", G2L["1c"]);
G2L["1d"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.F3XHUB.Bar.Main.CreateBasePlate.LocalScript
G2L["1e"] = Instance.new("LocalScript", G2L["1c"]);


-- StarterGui.F3XHUB.Bar.Main.KillAll
G2L["1f"] = Instance.new("TextButton", G2L["3"]);
G2L["1f"]["TextWrapped"] = true;
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["TextScaled"] = true;
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["TextSize"] = 14;
G2L["1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["Size"] = UDim2.new(0.2614651620388031, 0, 0.09473495930433273, 0);
G2L["1f"]["Name"] = [[KillAll]];
G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["Text"] = [[Kill All]];
G2L["1f"]["Position"] = UDim2.new(0.06100853905081749, 0, 0.5768563747406006, 0);

-- StarterGui.F3XHUB.Bar.Main.KillAll.UICorner
G2L["20"] = Instance.new("UICorner", G2L["1f"]);
G2L["20"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.F3XHUB.Bar.Main.KillAll.LocalScript
G2L["21"] = Instance.new("LocalScript", G2L["1f"]);


-- StarterGui.F3XHUB.Bar.Main.PersonalityAll
G2L["22"] = Instance.new("TextButton", G2L["3"]);
G2L["22"]["TextWrapped"] = true;
G2L["22"]["BorderSizePixel"] = 0;
G2L["22"]["TextScaled"] = true;
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["TextSize"] = 14;
G2L["22"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["22"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["22"]["Size"] = UDim2.new(0.2614651918411255, 0, 0.09473495930433273, 0);
G2L["22"]["Name"] = [[PersonalityAll]];
G2L["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["Text"] = [[Personality All]];
G2L["22"]["Position"] = UDim2.new(0.36823010444641113, 0, 0.5768563747406006, 0);

-- StarterGui.F3XHUB.Bar.Main.PersonalityAll.UICorner
G2L["23"] = Instance.new("UICorner", G2L["22"]);
G2L["23"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.F3XHUB.Bar.Main.PersonalityAll.LocalScript
G2L["24"] = Instance.new("LocalScript", G2L["22"]);


-- StarterGui.F3XHUB.Bar.Main.Skybox
G2L["25"] = Instance.new("TextButton", G2L["3"]);
G2L["25"]["TextWrapped"] = true;
G2L["25"]["BorderSizePixel"] = 0;
G2L["25"]["TextScaled"] = true;
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["25"]["TextSize"] = 14;
G2L["25"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["25"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["25"]["Size"] = UDim2.new(0.2636440396308899, 0, 0.09473495930433273, 0);
G2L["25"]["Name"] = [[Skybox]];
G2L["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["25"]["Text"] = [[Skybox]];
G2L["25"]["Position"] = UDim2.new(0.6710939407348633, 0, 0.5768563747406006, 0);

-- StarterGui.F3XHUB.Bar.Main.Skybox.UICorner
G2L["26"] = Instance.new("UICorner", G2L["25"]);
G2L["26"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.F3XHUB.Bar.Main.Skybox.LocalScript
G2L["27"] = Instance.new("LocalScript", G2L["25"]);


-- StarterGui.F3XHUB.Bar.Main.Peircer
G2L["28"] = Instance.new("TextButton", G2L["3"]);
G2L["28"]["TextWrapped"] = true;
G2L["28"]["BorderSizePixel"] = 0;
G2L["28"]["TextScaled"] = true;
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["28"]["TextSize"] = 14;
G2L["28"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["28"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["28"]["Size"] = UDim2.new(0.2614651620388031, 0, 0.09473495930433273, 0);
G2L["28"]["Name"] = [[Peircer]];
G2L["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["28"]["Text"] = [[Peircer]];
G2L["28"]["Position"] = UDim2.new(0.06100853905081749, 0, 0.7503573298454285, 0);

-- StarterGui.F3XHUB.Bar.Main.Peircer.UICorner
G2L["29"] = Instance.new("UICorner", G2L["28"]);
G2L["29"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.F3XHUB.Bar.Main.Peircer.LocalScript
G2L["2a"] = Instance.new("LocalScript", G2L["28"]);


-- StarterGui.F3XHUB.Bar.Main.StickAll
G2L["2b"] = Instance.new("TextButton", G2L["3"]);
G2L["2b"]["TextWrapped"] = true;
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["TextScaled"] = true;
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2b"]["TextSize"] = 14;
G2L["2b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["Size"] = UDim2.new(0.2614651620388031, 0, 0.09473495930433273, 0);
G2L["2b"]["Name"] = [[StickAll]];
G2L["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2b"]["Text"] = [[StickAll]];
G2L["2b"]["Position"] = UDim2.new(0.36823010444641113, 0, 0.7503573298454285, 0);

-- StarterGui.F3XHUB.Bar.Main.StickAll.UICorner
G2L["2c"] = Instance.new("UICorner", G2L["2b"]);
G2L["2c"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.F3XHUB.Bar.Main.StickAll.LocalScript
G2L["2d"] = Instance.new("LocalScript", G2L["2b"]);


-- StarterGui.F3XHUB.Bar.Main.TwigAll
G2L["2e"] = Instance.new("TextButton", G2L["3"]);
G2L["2e"]["TextWrapped"] = true;
G2L["2e"]["BorderSizePixel"] = 0;
G2L["2e"]["TextScaled"] = true;
G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e"]["TextSize"] = 14;
G2L["2e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e"]["Size"] = UDim2.new(0.2636440396308899, 0, 0.09473495930433273, 0);
G2L["2e"]["Name"] = [[TwigAll]];
G2L["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e"]["Text"] = [[TwigAll]];
G2L["2e"]["Position"] = UDim2.new(0.6710939407348633, 0, 0.7503573298454285, 0);

-- StarterGui.F3XHUB.Bar.Main.TwigAll.UICorner
G2L["2f"] = Instance.new("UICorner", G2L["2e"]);
G2L["2f"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.F3XHUB.Bar.Main.TwigAll.LocalScript
G2L["30"] = Instance.new("LocalScript", G2L["2e"]);


-- StarterGui.F3XHUB.Bar.Main.FireParts
G2L["31"] = Instance.new("TextButton", G2L["3"]);
G2L["31"]["TextWrapped"] = true;
G2L["31"]["BorderSizePixel"] = 0;
G2L["31"]["TextScaled"] = true;
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["TextSize"] = 14;
G2L["31"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["31"]["TextColor3"] = Color3.fromRGB(2