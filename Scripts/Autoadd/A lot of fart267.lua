local MarketplaceService = game:GetService("MarketplaceService")
local lp = game:GetService("Players").LocalPlayer
local rc = game:GetService("ReplicatedStorage")
local IsError = false

if rc:FindFirstChild('HDAdminClient') == nil then
	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title = "NO HD FOUND",
		Text = "THIS GAME HAS NO HD ADMIN!!!",
		Icon = "rbxassetid://14529775287"
	})
	IsError = true
end

if not MarketplaceService:UserOwnsGamePassAsync(lp.UserId, 5745895) then
	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title = "NO DONOR",
		Text = "YOU HAVE TO BUY DONOR GAMEPASS!!!",
		Icon = "rbxassetid://14529775287"
	})
	IsError = true
	MarketplaceService:PromptGamePassPurchase(lp, 5745895)
end

if (_G.CanOpenFG == 'Y' or _G.CanOpenFG == nil) and not IsError then
	_G.CanOpenFG = 'N'
	local fartGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local UICorner = Instance.new("UICorner")
	local close = Instance.new("TextButton")
	local UICorner_2 = Instance.new("UICorner")
	local lf = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")
	local fart = Instance.new("TextButton")
	local UICorner_4 = Instance.new("UICorner")
	local dur = Instance.new("TextBox")
	local UICorner_5 = Instance.new("UICorner")
	local dl = Instance.new("TextButton")
	local UICorner_6 = Instance.new("UICorner")
	rc = rc.HDAdminClient.Signals.RequestCommand

	fartGui.Name = "fartGui"
	fartGui.Parent = game.CoreGui.RobloxGui
	fartGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = fartGui
	Frame.Active = true
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Draggable = true
	Frame.Position = UDim2.new(0.493688524, -269, 0.509465218, -169)
	Frame.Size = UDim2.new(0.316355854, 0, 0.27354762, 0)

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(65, 65, 65)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))}
	UIGradient.Rotation = 0
	UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0, 0.15), NumberSequenceKeypoint.new(1, 0.15)}
	UIGradient.Parent = Frame

	UICorner.Parent = Frame

	close.Name = "close"
	close.Parent = Frame
	close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	close.BorderColor3 = Color3.fromRGB(0, 0, 0)
	close.BorderSizePixel = 0
	close.Position = UDim2.new(0.900929511, 0, 0.0383972973, 0)
	close.Size = UDim2.new(0.0799999982, 0, 0.0799999982, 0)
	close.SizeConstraint = Enum.SizeConstraint.RelativeXX
	close.Font = Enum.Font.SourceSans
	close.Text = "X"
	close.TextColor3 = Color3.fromRGB(0, 0, 0)
	close.TextScaled = true
	close.TextSize = 14
	close.TextWrapped = true

	UICorner_2.Parent = close

	lf.Name = "lf"
	lf.Parent = Frame
	lf.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	lf.BorderColor3 = Color3.fromRGB(0, 0, 0)
	lf.BorderSizePixel = 0
	lf.Position = UDim2.new(0.0200618561, 0, 0.183079019, 0)
	lf.Size = UDim2.new(0.404821604, 0, 0.262907445, 0)
	lf.Font = Enum.Font.SourceSans
	lf.Text = "Loop fart"
	lf.TextColor3 = Color3.fromRGB(0, 0, 0)
	lf.TextScaled = true
	lf.TextSize = 14
	lf.TextWrapped = true

	UICorner_3.Parent = lf

	fart.Name = "fart"
	fart.Parent = Frame
	fart.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	fart.BorderColor3 = Color3.fromRGB(0, 0, 0)
	fart.BorderSizePixel = 0
	fart.Position = UDim2.new(0.0177733749, 0, 0.592289984, 0)
	fart.Size = UDim2.new(0.407110006, 0, 0.289426148, 0)
	fart.Font = Enum.Font.SourceSans
	fart.Text = "Fart"
	fart.TextColor3 = Color3.fromRGB(0, 0, 0)
	fart.TextScaled = true
	fart.TextSize = 14
	fart.TextWrapped = true

	UICorner_4.Parent = fart

	dur.Name = "dur"
	dur.Parent = Frame
	dur.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	dur.BackgroundTransparency = 0.500
	dur.BorderColor3 = Color3.fromRGB(0, 0, 0)
	dur.BorderSizePixel = 0
	dur.Position = UDim2.new(0.442910165, 0, 0.171471566, 0)
	dur.Size = UDim2.new(0.434423625, 0, 0.274514854, 0)
	dur.ClearTextOnFocus = false
	dur.Font = Enum.Font.SourceSans
	dur.MultiLine = true
	dur.PlaceholderColor3 = Color3.fromRGB(200, 200, 200)
	dur.PlaceholderText = "Loop fart duration"
	dur.Text = ""
	dur.TextColor3 = Color3.fromRGB(0, 0, 0)
	dur.TextScaled = true
	dur.TextSize = 14
	dur.TextWrapped = true

	UICorner_5.Parent = dur

	dl.Name = "dl"
	dl.Parent = Frame
	dl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	dl.BorderColor3 = Color3.fromRGB(0, 0, 0)
	dl.BorderSizePixel = 0
	dl.Position = UDim2.new(0.456156224, 0, 0.592289984, 0)
	dl.Size = UDim2.new(0.407110006, 0, 0.289426148, 0)
	dl.Font = Enum.Font.SourceSans
	dl.Text = "Download IY plugin(fart.iy)"
	dl.TextColor3 = Color3.fromRGB(0, 0, 0)
	dl.TextScaled = true
	dl.TextSize = 14
	dl.TextWrapped = true

	UICorner_6.Parent = dl
		
	local RunService = game:GetService("RunService")
	local ROTATE_SPEED = 22.5
		
	local function onRenderStep(deltaTime)
		local currentRotation = UIGradient.Rotation
		UIGradient.Rotation = (currentRotation + ROTATE_SPEED * deltaTime) % 360
	end

	RunService.RenderStepped:Connect(onRenderStep)
		
	close.MouseButton1Click:Connect(function()
		_G.CanOpenFG = 'Y'
		fartGui:Destroy()
	end)

	local TweenService = game:GetService("TweenService")
	local ticked = false
		
	local function changeButtonColor(tickValue)
		local targetColor = tickValue and Color3.new(0, 1, 0) or Color3.new(1, 0, 0)
		local colorTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
		TweenService:Create(lf, colorTweenInfo, {BackgroundColor3 = targetColor}):Play()
	end
		
	lf.MouseButton1Click:Connect(function()
		ticked = not ticked
		changeButtonColor(ticked)
	end)
		
	local durNum = 1
	fart.MouseButton1Click:Connect(function()
		rc:InvokeServer('!fart')
	end)
		

	dl.MouseButton1Click:Connect(function()
		writefile('fart.iy', [[local rc = game:GetService("ReplicatedStorage")
		if rc:FindFirstChild('HDAdminClient') then
			rc = rc.HDAdminClient.Signals.RequestCommand
			local fart = false
			local duration = 1
		
			spawn(function()
				while true do
					if fart then
						rc:InvokeServer('!fart')
						wait(duration)
					else
						wait()
					end
				end
			end)
		
			return {
				["PluginName"] = "HD fart",
				["PluginDescription"] = "You can fart, but for example you can bind it to your damage!",
				["Commands"] = {
					["fart"] = {
						["ListName"] = "fart",
						["Description"] = "Just farts",
						["Aliases"] = {},
						["Function"] = function(args, speaker)
							rc:InvokeServer('!fart')
						end
					},
					["loopfart"] = {
						["ListName"] = "loopfart / lf [duration]",
						["Description"] = "Minimum 1 second",
						["Aliases"] = {"lf"},
						["Function"] = function(args, speaker)
							duration = 1
							pcall(function()
								num = tonumber(args[1])
								if num > 1 then
									duration = num
								end
							end)	
							fart = true
						end
					},
					["unloopfart"] = {
						["ListName"] = "unloopfart / unlf",
						["Description"] = "Stops loop farting",
						["Aliases"] = {"unlf"},
						["Function"] = function(args, speaker)
							fart = false
						end
					},
					["loopfartspeed"] = {
						["ListName"] = "loopfartspeed / lfspeed [duration]",
						["Description"] = "Minimum 1 second",
						["Aliases"] = {"lfspeed"},
						["Function"] = function(args, speaker)
							duration = 1
							pcall(function()
								num = tonumber(args[1])
								if num > 1 then
									duration = num
								end
							end)
						end
					}
				}
			}
		else
			return {
				["PluginName"] = "HD fart(NO HD FOUND)",
				["PluginDescription"] = "THERE'S NO HD FOUND",
				["Commands"] = {
					["NO HD FOUND"] = {
						["ListName"] = "NO HD FOUND",
						["Description"] = "This plugin requires HD admin, which isn't found.",
						["Aliases"] = {},
						["Function"] = function(args, speaker)
							print("This plugin requires HD admin, which isn't found.")
						end
					}
				}
			}
		end]])
	end)

	while wait() do
		if ticked then
			rc:InvokeServer('!fart')
			
			durNum = tonumber(dur.Text)
			if durNum then
                if durNum < 1 then
				    durNum = 1
			    end
            else
                durNum = 1
            end
			wait(durNum)
		end
	end
end