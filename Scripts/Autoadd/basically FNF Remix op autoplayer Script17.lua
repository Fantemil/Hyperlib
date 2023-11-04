local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
local PlaceId = game.PlaceId
local DataSetting
local DataHome
local DataMics
local HttpService = game:GetService("HttpService")
local HubData = game:HttpGet("https://raw.githubusercontent.com/HairBaconGamming/BaconHub/main/Data.json")
local HubDataDecoded = HttpService:JSONDecode(HubData)
local VersionHub = HubDataDecoded.version

print("Checking lastest version...")
print("Lastest version: ".. VersionHub)

local MyVersion = "3.3.1"

print("BaconHub using version: ".. MyVersion)

if _G.UsingHub then
	return
end

if not isfile("BaconHubVersion.json") then
	writefile("BaconHubVersion.json",HttpService:JSONEncode({["Version"]=VersionHub}))
else
	local _Version = readfile("BaconHubVersion.json")
	pcall(function()
		_Version = HttpService:JSONDecode(_Version)
	end)
	if _Version then
		if _Version.Version ~= VersionHub then
			delfile("BaconHubVersion.json")
			writefile("BaconHubVersion.json",HttpService:JSONEncode({["Version"]=VersionHub}))
		end
		if _Version.Version ~= MyVersion then
			warn("You are using out version BaconHub!")
			local Screen = Instance.new("ScreenGui",game.CoreGui)
			Screen.ResetOnSpawn = false
			Screen.Name = "#|%$#WRfetih4t4h5h46&%&*^IYGtghyhu76u$RRF(T(@$##92efrgh9237344273tduig64rtwuiegd648uwfyg83tf68437gtr684t389og7frg54gft8ow7gft87tfr834gft4t34ty9y8t7yt3t35#$@RwFG#$Re@F#T#^$R3TT@#rHR!6UWR4YHEFGb#!1#T#"
			local TweenService = game:GetService("TweenService")
			local Frame2 = Instance.new("Frame",Screen)
			Frame2.Size = UDim2.new(0,0,0.05,0)
			Frame2.BorderSizePixel = 0
			Frame2.BackgroundColor3 = Color3.new(0.705882, 0.705882, 0.705882)
			local Frame = Instance.new("Frame",Screen)
			Frame.Size = UDim2.new(0,0,0.05,0)
			Frame.BorderSizePixel = 0
			Frame.BackgroundColor3 = Color3.new(0.831373, 0.831373, 0.831373)
			local TextLabel = Instance.new("TextLabel",Screen)
			TextLabel.Text = "You are using out version BaconHub! You do want use old version? [Chat /e yes or /e no]"
			TextLabel.Size = UDim2.new(0,0,0.05,0)
			TextLabel.Font = Enum.Font.SourceSansSemibold
			TextLabel.TextColor3 = Color3.new(0.121569, 0.121569, 0.121569)
			TextLabel.BackgroundColor3 = Color3.new(0.921569, 0.921569, 0.921569)
			TextLabel.TextScaled = true
			TextLabel.BorderSizePixel = 0
			TextLabel.TextTransparency = 1
			TextLabel:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,1)
			Frame:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,0.6)
			Frame2:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,0.3)
			TweenService:Create(TextLabel,TweenInfo.new(1.5),{TextTransparency = 0}):Play()
			local no = true
			local chatted = false
			game.Players.LocalPlayer.Chatted:Connect(function(chat)
				if chat:lower() == "/e yes" then
					no = false
					chatted = true
				elseif chat:lower() == "/e no" then
					no = true
					chatted = true
				end
			end)
			repeat wait() until chatted == true
			if no then
				setclipboard('loadstring(game:HttpGet("https://raw.githubusercontent.com/HairBaconGamming/BaconHub/main/Main.lua"))()')
				warn("Copied Script Latest Version BaconHub!")
				wait(1)
				TextLabel.Text = "Copied Script Lasest Version BaconHub!"
				wait(1.5)
				TweenService:Create(TextLabel,TweenInfo.new(1),{TextTransparency = 1}):Play()
				wait(1.2)
				Frame.Size = UDim2.new(1,0,0.05,0)
				Frame2.Size = UDim2.new(1,0,0.05,0)
				TextLabel:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.3)
				Frame:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.6)
				Frame2:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.9)
				game.Debris:AddItem(Screen,2)
				return
			else
				wait(1)
				TextLabel.Text = "Ok!"
				wait(1.5)
				TweenService:Create(TextLabel,TweenInfo.new(1),{TextTransparency = 1}):Play()
				wait(1.2)
				Frame.Size = UDim2.new(1,0,0.05,0)
				Frame2.Size = UDim2.new(1,0,0.05,0)
				TextLabel:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.3)
				Frame:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.6)
				Frame2:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.9)
				game.Debris:AddItem(Screen,2)
			end
		end
	end
end

function MakeData()
	if not isfolder("BaconHubDataVersion".. MyVersion) then
		makefolder("BaconHubDataVersion".. MyVersion)
		writefile("BaconHubDataVersion".. MyVersion .."\\SettingData.json","")
		writefile("BaconHubDataVersion".. MyVersion.."\\HomeData.json","")
		writefile("BaconHubDataVersion".. MyVersion.."\\MicsData.json","")
		DataSetting = readfile("BaconHubDataVersion".. MyVersion.."\\SettingData.json")
		DataHome = readfile("BaconHubDataVersion".. MyVersion.."\\HomeData.json")
		DataMics = readfile("BaconHubDataVersion".. MyVersion.."\\MicsData.json")
	else
		DataSetting = readfile("BaconHubDataVersion".. MyVersion.."\\SettingData.json")
		DataHome = readfile("BaconHubDataVersion".. MyVersion.."\\HomeData.json")
		DataMics = readfile("BaconHubDataVersion".. MyVersion.."\\MicsData.json")
	end
end

function SaveData(DataType,Data)
	MakeData()
	if DataType == "Setting" then
		local DataTable 
		pcall(function()
			DataTable = HttpService:JSONDecode(DataSetting)
		end)
		if DataTable then
			if DataTable[PlaceId] then
				for dataname,data in pairs(Data) do
					DataTable[PlaceId][dataname] = data
				end
			else
				DataTable[PlaceId] = Data
			end
		else
			DataTable = {
				[PlaceId] = Data
			}
		end
		DataTable = HttpService:JSONEncode(DataTable)
		delfile("BaconHubDataVersion".. MyVersion.."\\SettingData.json")
		DataSetting = writefile("BaconHubDataVersion".. MyVersion.."\\SettingData.json", DataTable)
	elseif DataType == "Home" then
		local DataTable 
		pcall(function()
			DataTable = HttpService:JSONDecode(DataSetting)
		end)
		if DataTable then
			if DataTable[PlaceId] then
				for dataname,data in pairs(Data) do
					DataTable[PlaceId][dataname] = data
				end
			else
				DataTable[PlaceId] = Data
			end
		else
			DataTable = {
				[PlaceId] = Data
			}
		end
		DataTable = HttpService:JSONEncode(DataTable)
		delfile("BaconHubDataVersion".. MyVersion.."\\HomeData.json")
		DataHome = writefile("BaconHubDataVersion".. MyVersion.."\\HomeData.json", DataTable)
	elseif DataType == "Mics" then
		local DataTable 
		pcall(function()
			DataTable = HttpService:JSONDecode(DataSetting)
		end)
		if DataTable then
			if DataTable[PlaceId] then
				for dataname,data in pairs(Data) do
					DataTable[PlaceId][dataname] = data
				end
			else
				DataTable[PlaceId] = Data
			end
		else
			DataTable = {
				[PlaceId] = Data
			}
		end
		DataTable = HttpService:JSONEncode(DataTable)
		print(DataTable)
		delfile("BaconHubDataVersion".. MyVersion.."\\MicsData.json")
		DataMics = writefile("BaconHubDataVersion".. MyVersion.."\\MicsData.json", DataTable)
		print(DataMics)
	end
end

function LoadData(DataType)
	MakeData()
	local Data
	if DataType == "Setting" then
		pcall(function()
			Data = HttpService:JSONDecode(DataSetting)
		end)
	elseif DataType == "Home" then
		pcall(function()
			Data = HttpService:JSONDecode(DataHome)
		end)
	elseif DataType == "Mics" then
		pcall(function()
			Data = HttpService:JSONDecode(DataMics)
		end)
	end
	return Data
end

MakeData()

pcall(function()
	local Screen = Instance.new("ScreenGui",game.CoreGui)
	Screen.ResetOnSpawn = false
	Screen.Name = "#|%$#$$@%$Y%Y^$&Y^%&%&$%^$%#$T54i4t83yt74t gefge76rfwuge4gfuefgu8eg ifrhy7egfti9egt76eghft78oehgr789tgf7gdf9ogWRfetih4t4h5h46&%&*^IYGtghyhu76u$RRF(T(@$##92efrgh9237344273tduig64rtwuiegd648uwfyg83tf68437gtr684t389og7frg54gft8ow7gft87tfr834gft4t34ty9y8t7yt3t35#$@RwFG#$Re@F#T#^$R3TT@#rHR!6UWR4YHEFGb#!1#T#"
	local TweenService = game:GetService("TweenService")
	local Frame2 = Instance.new("Frame",Screen)
	Frame2.Size = UDim2.new(0,0,0.05,0)
	Frame2.BorderSizePixel = 0
	Frame2.BackgroundColor3 = Color3.new(0.705882, 0.705882, 0.705882)
	local Frame = Instance.new("Frame",Screen)
	Frame.Size = UDim2.new(0,0,0.05,0)
	Frame.BorderSizePixel = 0
	Frame.BackgroundColor3 = Color3.new(0.831373, 0.831373, 0.831373)
	local TextLabel = Instance.new("TextLabel",Screen)
	TextLabel.Text = "Welcome! ".. game.Players.LocalPlayer.Name
	TextLabel.Size = UDim2.new(0,0,0.05,0)
	TextLabel.Font = Enum.Font.SourceSansSemibold
	TextLabel.TextColor3 = Color3.new(0.121569, 0.121569, 0.121569)
	TextLabel.BackgroundColor3 = Color3.new(0.921569, 0.921569, 0.921569)
	TextLabel.TextScaled = true
	TextLabel.BorderSizePixel = 0
	TextLabel.TextTransparency = 1
	TextLabel:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,1)
	Frame:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,0.6)
	Frame2:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,0.3)
	TweenService:Create(TextLabel,TweenInfo.new(1.5),{TextTransparency = 0}):Play()
	wait(3)
	TextLabel.Text = "Thank you using the Bacon Hub Version ".. MyVersion .."!"
	wait(1.5)
	TextLabel.Text = "Have Fun!"
	wait(1.5)
	TweenService:Create(TextLabel,TweenInfo.new(1),{TextTransparency = 1}):Play()
	wait(1.2)
	Frame.Size = UDim2.new(1,0,0.05,0)
	Frame2.Size = UDim2.new(1,0,0.05,0)
	TextLabel:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.3)
	Frame:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.6)
	Frame2:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.9)
	game.Debris:AddItem(Screen,2)
end)

game.Players.LocalPlayer.Chatted:Connect(function(chat)
	local YESSSSS = chat:lower():split(" ")
	if YESSSSS[1] == "/e" and YESSSSS[2] == "clearalldata" then
		delfolder("BaconHubDataVersion".. MyVersion)
		pcall(function()
			local Screen = Instance.new("ScreenGui",game.CoreGui)
			Screen.ResetOnSpawn = false
			Screen.Name = "#|%GY%^&%&$ 5384tjetj948y9 384th 3ty890pt598yh4pyh4 $#$$@%$Y%Y^$&Y^%&%&$%^$%#$T54i4t83yt74t gefge76rfwuge4gfuefgu8eg ifrhy7egfti9egt76eghft78oehgr789tgf7gdf9ogWRfetih4t4h5h46&%&*^IYGtghyhu76u$RRF(T(@$##92efrgh9237344273tduig64rtwuiegd648uwfyg83tf68437gtr684t389og7frg54gft8ow7gft87tfr834gft4t34ty9y8t7yt3t35#$@RwFG#$Re@F#T#^$R3TT@#rHR!6UWR4YHEFGb#!1#T#"
			local TweenService = game:GetService("TweenService")
			local Frame2 = Instance.new("Frame",Screen)
			Frame2.Size = UDim2.new(0,0,0.05,0)
			Frame2.BorderSizePixel = 0
			Frame2.BackgroundColor3 = Color3.new(0.705882, 0.705882, 0.705882)
			local Frame = Instance.new("Frame",Screen)
			Frame.Size = UDim2.new(0,0,0.05,0)
			Frame.BorderSizePixel = 0
			Frame.BackgroundColor3 = Color3.new(0.831373, 0.831373, 0.831373)
			local TextLabel = Instance.new("TextLabel",Screen)
			TextLabel.Text = "Succes Clear All Data!"
			TextLabel.Size = UDim2.new(0,0,0.05,0)
			TextLabel.Font = Enum.Font.SourceSansSemibold
			TextLabel.TextColor3 = Color3.new(0.121569, 0.121569, 0.121569)
			TextLabel.BackgroundColor3 = Color3.new(0.921569, 0.921569, 0.921569)
			TextLabel.TextScaled = true
			TextLabel.BorderSizePixel = 0
			TextLabel.TextTransparency = 1
			TextLabel:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,1)
			Frame:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,0.6)
			Frame2:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,0.3)
			TweenService:Create(TextLabel,TweenInfo.new(1.5),{TextTransparency = 0}):Play()
			wait(3)
			TweenService:Create(TextLabel,TweenInfo.new(1),{TextTransparency = 1}):Play()
			wait(1.2)
			Frame.Size = UDim2.new(1,0,0.05,0)
			Frame2.Size = UDim2.new(1,0,0.05,0)
			TextLabel:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.3)
			Frame:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.6)
			Frame2:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.9)
			game.Debris:AddItem(Screen,2)
		end)
	elseif YESSSSS[1] == "/e" and YESSSSS[2] == "cleardata" and YESSSSS[3] ~= nil then
		if YESSSSS[3] == "home" then
			delfile("BaconHubDataVersion".. MyVersion.."\\HomeData.json")
			writefile("BaconHubDataVersion".. MyVersion.."\\HomeData.json","")
			DataHome = readfile("BaconHubDataVersion".. MyVersion.."\\HomeData.json")
			pcall(function()
				local Screen = Instance.new("ScreenGui",game.CoreGui)
				Screen.ResetOnSpawn = false
				Screen.Name = "#|%GY%^&%&$ 5384tjetj948y9 384th 3ty890pt598yh4pyh4 $#$$@%$Y%Y^$&Y^%&%&$%^$%#$T54i4t83yt74t gefge76rfwuge4gfuefgu8eg ifrhy7egfti9egt76eghft78oehgr789tgf7gdf9ogWRfetih4t4h5h46&%&*^IYGtghyhu76u$RRF(T(@$##92efrgh9237344273tduig64rtwuiegd648uwfyg83tf68437gtr684t389og7frg54gft8ow7gft87tfr834gft4t34ty9y8t7yt3t35#$@RwFG#$Re@F#T#^$R3TT@#rHR!6UWR4YHEFGb#!1#T#"
				local TweenService = game:GetService("TweenService")
				local Frame2 = Instance.new("Frame",Screen)
				Frame2.Size = UDim2.new(0,0,0.05,0)
				Frame2.BorderSizePixel = 0
				Frame2.BackgroundColor3 = Color3.new(0.705882, 0.705882, 0.705882)
				local Frame = Instance.new("Frame",Screen)
				Frame.Size = UDim2.new(0,0,0.05,0)
				Frame.BorderSizePixel = 0
				Frame.BackgroundColor3 = Color3.new(0.831373, 0.831373, 0.831373)
				local TextLabel = Instance.new("TextLabel",Screen)
				TextLabel.Text = "Succes Clear Home Data!"
				TextLabel.Size = UDim2.new(0,0,0.05,0)
				TextLabel.Font = Enum.Font.SourceSansSemibold
				TextLabel.TextColor3 = Color3.new(0.121569, 0.121569, 0.121569)
				TextLabel.BackgroundColor3 = Color3.new(0.921569, 0.921569, 0.921569)
				TextLabel.TextScaled = true
				TextLabel.BorderSizePixel = 0
				TextLabel.TextTransparency = 1
				TextLabel:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,1)
				Frame:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,0.6)
				Frame2:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,0.3)
				TweenService:Create(TextLabel,TweenInfo.new(1.5),{TextTransparency = 0}):Play()
				wait(3)
				TweenService:Create(TextLabel,TweenInfo.new(1),{TextTransparency = 1}):Play()
				wait(1.2)
				Frame.Size = UDim2.new(1,0,0.05,0)
				Frame2.Size = UDim2.new(1,0,0.05,0)
				TextLabel:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.3)
				Frame:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.6)
				Frame2:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.9)
				game.Debris:AddItem(Screen,2)
			end)
		elseif YESSSSS[3] == "setting" then
			delfile("BaconHubDataVersion".. MyVersion.."\\SettingData.json")
			writefile("BaconHubDataVersion".. MyVersion .."\\SettingData.json","")
			DataSetting = readfile("BaconHubDataVersion".. MyVersion.."\\SettingData.json")
			pcall(function()
				local Screen = Instance.new("ScreenGui",game.CoreGui)
				Screen.ResetOnSpawn = false
				Screen.Name = "#|%GY%^&%&$ 5384tjetj948y9 384th 3ty890pt598yh4pyh4 $#$$@%$Y%Y^$&Y^%&%&$%^$%#$T54i4t83yt74t gefge76rfwuge4gfuefgu8eg ifrhy7egfti9egt76eghft78oehgr789tgf7gdf9ogWRfetih4t4h5h46&%&*^IYGtghyhu76u$RRF(T(@$##92efrgh9237344273tduig64rtwuiegd648uwfyg83tf68437gtr684t389og7frg54gft8ow7gft87tfr834gft4t34ty9y8t7yt3t35#$@RwFG#$Re@F#T#^$R3TT@#rHR!6UWR4YHEFGb#!1#T#"
				local TweenService = game:GetService("TweenService")
				local Frame2 = Instance.new("Frame",Screen)
				Frame2.Size = UDim2.new(0,0,0.05,0)
				Frame2.BorderSizePixel = 0
				Frame2.BackgroundColor3 = Color3.new(0.705882, 0.705882, 0.705882)
				local Frame = Instance.new("Frame",Screen)
				Frame.Size = UDim2.new(0,0,0.05,0)
				Frame.BorderSizePixel = 0
				Frame.BackgroundColor3 = Color3.new(0.831373, 0.831373, 0.831373)
				local TextLabel = Instance.new("TextLabel",Screen)
				TextLabel.Text = "Succes Clear Setting Data!"
				TextLabel.Size = UDim2.new(0,0,0.05,0)
				TextLabel.Font = Enum.Font.SourceSansSemibold
				TextLabel.TextColor3 = Color3.new(0.121569, 0.121569, 0.121569)
				TextLabel.BackgroundColor3 = Color3.new(0.921569, 0.921569, 0.921569)
				TextLabel.TextScaled = true
				TextLabel.BorderSizePixel = 0
				TextLabel.TextTransparency = 1
				TextLabel:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,1)
				Frame:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,0.6)
				Frame2:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,0.3)
				TweenService:Create(TextLabel,TweenInfo.new(1.5),{TextTransparency = 0}):Play()
				wait(3)
				TweenService:Create(TextLabel,TweenInfo.new(1),{TextTransparency = 1}):Play()
				wait(1.2)
				Frame.Size = UDim2.new(1,0,0.05,0)
				Frame2.Size = UDim2.new(1,0,0.05,0)
				TextLabel:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.3)
				Frame:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.6)
				Frame2:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.9)
				game.Debris:AddItem(Screen,2)
			end)
		elseif YESSSSS[3] == "misc" then
			delfile("BaconHubDataVersion".. MyVersion.."\\MiscData.json")
			writefile("BaconHubDataVersion".. MyVersion.."\\MicsData.json","")
			DataMics = readfile("BaconHubDataVersion".. MyVersion.."\\MicsData.json")
			pcall(function()
				local Screen = Instance.new("ScreenGui",game.CoreGui)
				Screen.ResetOnSpawn = false
				Screen.Name = "#|%GY%^&%&$ 5384tjetj948y9 384th 3ty890pt598yh4pyh4 $#$$@%$Y%Y^$&Y^%&%&$%^$%#$T54i4t83yt74t gefge76rfwuge4gfuefgu8eg ifrhy7egfti9egt76eghft78oehgr789tgf7gdf9ogWRfetih4t4h5h46&%&*^IYGtghyhu76u$RRF(T(@$##92efrgh9237344273tduig64rtwuiegd648uwfyg83tf68437gtr684t389og7frg54gft8ow7gft87tfr834gft4t34ty9y8t7yt3t35#$@RwFG#$Re@F#T#^$R3TT@#rHR!6UWR4YHEFGb#!1#T#"
				local TweenService = game:GetService("TweenService")
				local Frame2 = Instance.new("Frame",Screen)
				Frame2.Size = UDim2.new(0,0,0.05,0)
				Frame2.BorderSizePixel = 0
				Frame2.BackgroundColor3 = Color3.new(0.705882, 0.705882, 0.705882)
				local Frame = Instance.new("Frame",Screen)
				Frame.Size = UDim2.new(0,0,0.05,0)
				Frame.BorderSizePixel = 0
				Frame.BackgroundColor3 = Color3.new(0.831373, 0.831373, 0.831373)
				local TextLabel = Instance.new("TextLabel",Screen)
				TextLabel.Text = "Succes Clear Misc Data!"
				TextLabel.Size = UDim2.new(0,0,0.05,0)
				TextLabel.Font = Enum.Font.SourceSansSemibold
				TextLabel.TextColor3 = Color3.new(0.121569, 0.121569, 0.121569)
				TextLabel.BackgroundColor3 = Color3.new(0.921569, 0.921569, 0.921569)
				TextLabel.TextScaled = true
				TextLabel.BorderSizePixel = 0
				TextLabel.TextTransparency = 1
				TextLabel:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,1)
				Frame:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,0.6)
				Frame2:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,0.3)
				TweenService:Create(TextLabel,TweenInfo.new(1.5),{TextTransparency = 0}):Play()
				wait(3)
				TweenService:Create(TextLabel,TweenInfo.new(1),{TextTransparency = 1}):Play()
				wait(1.2)
				Frame.Size = UDim2.new(1,0,0.05,0)
				Frame2.Size = UDim2.new(1,0,0.05,0)
				TextLabel:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.3)
				Frame:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.6)
				Frame2:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.9)
				game.Debris:AddItem(Screen,2)
			end)
		else
			pcall(function()
				local Screen = Instance.new("ScreenGui",game.CoreGui)
				Screen.ResetOnSpawn = false
				Screen.Name = "#|%GY%^&%&$ 5384tjetj948y9 384th 3ty890pt598yh4pyh4 $#$$@%$Y%Y^$&Y^%&%&$%^$%#$T54i4t83yt74t gefge76rfwuge4gfuefgu8eg ifrhy7egfti9egt76eghft78oehgr789tgf7gdf9ogWRfetih4t4h5h46&%&*^IYGtghyhu76u$RRF(T(@$##92efrgh9237344273tduig64rtwuiegd648uwfyg83tf68437gtr684t389og7frg54gft8ow7gft87tfr834gft4t34ty9y8t7yt3t35#$@RwFG#$Re@F#T#^$R3TT@#rHR!6UWR4YHEFGb#!1#T#"
				local TweenService = game:GetService("TweenService")
				local Frame2 = Instance.new("Frame",Screen)
				Frame2.Size = UDim2.new(0,0,0.05,0)
				Frame2.BorderSizePixel = 0
				Frame2.BackgroundColor3 = Color3.new(0.705882, 0.705882, 0.705882)
				local Frame = Instance.new("Frame",Screen)
				Frame.Size = UDim2.new(0,0,0.05,0)
				Frame.BorderSizePixel = 0
				Frame.BackgroundColor3 = Color3.new(0.831373, 0.831373, 0.831373)
				local TextLabel = Instance.new("TextLabel",Screen)
				TextLabel.Text = "Failded!"
				TextLabel.Size = UDim2.new(0,0,0.05,0)
				TextLabel.Font = Enum.Font.SourceSansSemibold
				TextLabel.TextColor3 = Color3.new(1, 0.243137, 0.243137)
				TextLabel.BackgroundColor3 = Color3.new(0.921569, 0.921569, 0.921569)
				TextLabel.TextScaled = true
				TextLabel.BorderSizePixel = 0
				TextLabel.TextTransparency = 1
				TextLabel:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,1)
				Frame:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,0.6)
				Frame2:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,0.3)
				TweenService:Create(TextLabel,TweenInfo.new(1.5),{TextTransparency = 0}):Play()
				wait(3)
				TweenService:Create(TextLabel,TweenInfo.new(1),{TextTransparency = 1}):Play()
				wait(1.2)
				Frame.Size = UDim2.new(1,0,0.05,0)
				Frame2.Size = UDim2.new(1,0,0.05,0)
				TextLabel:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.3)
				Frame:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.6)
				Frame2:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.9)
				game.Debris:AddItem(Screen,2)
			end)
		end
	elseif YESSSSS[1] == "/e" and YESSSSS[2] == "dex" then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/peyton2465/Dex/master/out.lua"))()
		pcall(function()
			local Screen = Instance.new("ScreenGui",game.CoreGui)
			Screen.ResetOnSpawn = false
			Screen.Name = "#|%GY%^&%&$ 5384tjetj948y9 384th 3ty890pt598yh4pyh4 $#$$@%$Y%Y^$&Y^%&%&$%^$%#$T54i4t83yt74t gefge76rfwuge4gfuefgu8eg ifrhy7egfti9egt76eghft78oehgr789tgf7gdf9ogWRfetih4t4h5h46&%&*^IYGtghyhu76u$RRF(T(@$##92efrgh9237344273tduig64rtwuiegd648uwfyg83tf68437gtr684t389og7frg54gft8ow7gft87tfr834gft4t34ty9y8t7yt3t35#$@RwFG#$Re@F#T#^$R3TT@#rHR!6UWR4YHEFGb#!1#T#"
			local TweenService = game:GetService("TweenService")
			local Frame2 = Instance.new("Frame",Screen)
			Frame2.Size = UDim2.new(0,0,0.05,0)
			Frame2.BorderSizePixel = 0
			Frame2.BackgroundColor3 = Color3.new(0.705882, 0.705882, 0.705882)
			local Frame = Instance.new("Frame",Screen)
			Frame.Size = UDim2.new(0,0,0.05,0)
			Frame.BorderSizePixel = 0
			Frame.BackgroundColor3 = Color3.new(0.831373, 0.831373, 0.831373)
			local TextLabel = Instance.new("TextLabel",Screen)
			TextLabel.Text = "Loaded Dex V4!"
			TextLabel.Size = UDim2.new(0,0,0.05,0)
			TextLabel.Font = Enum.Font.SourceSansSemibold
			TextLabel.TextColor3 = Color3.new(0.172549, 0.172549, 0.172549)
			TextLabel.BackgroundColor3 = Color3.new(0.921569, 0.921569, 0.921569)
			TextLabel.TextScaled = true
			TextLabel.BorderSizePixel = 0
			TextLabel.TextTransparency = 1
			TextLabel:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,1)
			Frame:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,0.6)
			Frame2:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,0.3)
			TweenService:Create(TextLabel,TweenInfo.new(1.5),{TextTransparency = 0}):Play()
			wait(3)
			TweenService:Create(TextLabel,TweenInfo.new(1),{TextTransparency = 1}):Play()
			wait(1.2)
			Frame.Size = UDim2.new(1,0,0.05,0)
			Frame2.Size = UDim2.new(1,0,0.05,0)
			TextLabel:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.3)
			Frame:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.6)
			Frame2:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.9)
			game.Debris:AddItem(Screen,2)
		end)
	end
end)

if PlaceId == 7603193259 then
	local function yea()
		local AutoPlayer = false
		local AutoFarm = false
		local HardestMode = true
		local RandomSong = false
		local AutoRejoin = true
		local Song = "Atrocity"
		local Modes = {"Easy","Normal","Hard","Legacy","Expert","Insane","Mania","Troll"}
		local ModeChosed = "Mania"
		local PlayerType = 1
		local VirtualUser= game:GetService("VirtualUser")
		local AtAfk = true
		local plr = game.Players.LocalPlayer

		local vim = game:GetService("VirtualInputManager")
		local rs = game:GetService("RunService")
		local MainAutoPlayerHairHub

		local Player = 0
		local DownScroll = plr.Input.Downscroll

		plr.PlayerGui.ChildAdded:Connect(function(child)
			if child:IsA("ScreenGui") and child:FindFirstChild("Game") then
				print(child.Name)
				MainAutoPlayerHairHub = child
			end
		end)

		for _, ScreenGui in ipairs(plr.PlayerGui:GetChildren()) do
			if not ScreenGui:FindFirstChild("Game") then continue end
			MainAutoPlayerHairHub = ScreenGui
		end

		rs.Heartbeat:Connect(function()
			if AutoPlayer then
				if MainAutoPlayerHairHub then
					if MainAutoPlayerHairHub.Game.Visible then
						Player = 1
					else
						Player = 0
					end
				else
					Player = 0
				end
			else
				Player = 0
			end
		end)

		if not MainAutoPlayerHairHub then
			pcall(function()
				local Screen = Instance.new("ScreenGui",game.CoreGui)
				Screen.ResetOnSpawn = false
				Screen.Name = "#|%GY%^&%&$ 5384tjetj948y9 384th 3ty890pt598yh4pyh4 $#$$@%$Y%Y^$&Y^%&%&$%^$%#$T54i4t83yt74t gefge76rfwuge4gfuefgu8eg ifrhy7egfti9egt76eghft78oehgr789tgf7gdf9ogWRfetih4t4h5h46&%&*^IYGtghyhu76u$RRF(T(@$##92efrgh9237344273tduig64rtwuiegd648uwfyg83tf68437gtr684t389og7frg54gft8ow7gft87tfr834gft4t34ty9y8t7yt3t35#$@RwFG#$Re@F#T#^$R3TT@#rHR!6UWR4YHEFGb#!1#T#"
				local TweenService = game:GetService("TweenService")
				local Frame2 = Instance.new("Frame",Screen)
				Frame2.Size = UDim2.new(0,0,0.05,0)
				Frame2.BorderSizePixel = 0
				Frame2.BackgroundColor3 = Color3.new(0.705882, 0.705882, 0.705882)
				local Frame = Instance.new("Frame",Screen)
				Frame.Size = UDim2.new(0,0,0.05,0)
				Frame.BorderSizePixel = 0
				Frame.BackgroundColor3 = Color3.new(0.831373, 0.831373, 0.831373)
				local TextLabel = Instance.new("TextLabel",Screen)
				TextLabel.Text = "Execute if you're in the song select menu! Rejoin and excute if song finished!"
				TextLabel.Size = UDim2.new(0,0,0.05,0)
				TextLabel.Font = Enum.Font.SourceSansSemibold
				TextLabel.TextColor3 = Color3.new(0.121569, 0.121569, 0.121569)
				TextLabel.BackgroundColor3 = Color3.new(0.921569, 0.921569, 0.921569)
				TextLabel.TextScaled = true
				TextLabel.BorderSizePixel = 0
				TextLabel.TextTransparency = 1
				TextLabel:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,1)
				Frame:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,0.6)
				Frame2:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,0.3)
				TweenService:Create(TextLabel,TweenInfo.new(1.5),{TextTransparency = 0}):Play()
				wait(3)
				TweenService:Create(TextLabel,TweenInfo.new(1),{TextTransparency = 1}):Play()
				wait(1.2)
				Frame.Size = UDim2.new(1,0,0.05,0)
				Frame2.Size = UDim2.new(1,0,0.05,0)
				TextLabel:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.3)
				Frame:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.6)
				Frame2:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.9)
				game.Debris:AddItem(Screen,1)
			end)
			return
		end

		local X = Material.Load({
			Title = "BaconHub",
			Style = 3,
			SizeX = 500,
			SizeY = 350,
			Theme = "Light",
			ColorOverrides = {
				MainFrame = Color3.fromRGB(235, 235, 235)
			}
		})

		local Y = X.New({
			Title = "Home",
			ImageID = 9310172214,
		})

		local Z = X.New({
			Title = "Misc",
			ImageID = 8099777545,
		})

		local S = X.New({
			Title = "Setting",
			ImageID = 6942070576,
		})

		local keys = {
			["Left"] = plr.Input.Keybinds.Left,
			["Down"] = plr.Input.Keybinds.Down,
			["Up"] = plr.Input.Keybinds.Up,
			["Right"] = plr.Input.Keybinds.Right,
			["Space"] = plr.Input.Keybinds.Space,
			["L1"] = plr.Input.Keybinds.L1,
			["L2"] = plr.Input.Keybinds.L2,
			["L3"] = plr.Input.Keybinds.L3,
			["L4"] = plr.Input.Keybinds.L4,
			["R1"] = plr.Input.Keybinds.R1,
			["R2"] = plr.Input.Keybinds.R2,
			["R3"] = plr.Input.Keybinds.R3,
			["R4"] = plr.Input.Keybinds.R4,
		}

		local DataHomeLoaded = LoadData("Home")
		local DataSettingLoaded = LoadData("Setting")
		local DataMicsLoaded = LoadData("Misc")
		if DataHomeLoaded and DataHomeLoaded[tostring(PlaceId)] then
			AutoPlayer = DataHomeLoaded[tostring(PlaceId)].AutoPlayer
			AutoFarm = DataHomeLoaded[tostring(PlaceId)].AutoFarm
		else
			warn("Data nil")
		end
		if DataMicsLoaded and DataMicsLoaded[tostring(PlaceId)] then

		else
			warn("Data nil")
		end
		if DataSettingLoaded and DataSettingLoaded[tostring(PlaceId)] then
			Song = DataSettingLoaded[tostring(PlaceId)].Song
			ModeChosed = DataSettingLoaded[tostring(PlaceId)].ModeChosed
			HardestMode = DataSettingLoaded[tostring(PlaceId)].HardestMode
			RandomSong = DataSettingLoaded[tostring(PlaceId)].RandomSong
			PlayerType = DataSettingLoaded[tostring(PlaceId)].PlayerType
		else
			warn("Data nil")
		end

		X.Banner({
			Text = [[
				Current Song: ]].. Song ..[[
				Current Song Mode: ]].. ModeChosed
		})

		local ButtonAutoPlayer = Y.Toggle({
			Text = "Auto Player",
			Callback = function(Value)
				AutoPlayer = Value
				print("Auto player: ".. tostring(AutoPlayer))
			end,
			Enabled = AutoPlayer
		})

		local ButtonAutoFarm = Y.Toggle({
			Text = "Auto Farm [Turn on auto player]",
			Callback = function(Value)
				AutoFarm = Value
				print("AutoFarm: ".. tostring(AutoFarm))
			end,
			Enabled = AutoFarm
		})

		local ButtonAutoRejoin = Y.Toggle({
			Text = "Auto Hop if song finished",
			Callback = function(Value)
				AutoRejoin = Value
				print("AutoRejoin: ".. tostring(AutoRejoin))
			end,
			Enabled = AutoRejoin
		})

		local SaveBt = Y.Button({
			Text = "Save Home",
			Callback = function()
				SaveData("Home",{
					["AutoPlayer"] = AutoPlayer,
					["AutoFarm"] = AutoFarm,
				})
				X.Banner({
					Text = "Data Saved!"
				})
				print("succes!")
			end,
			Menu = {
				Information = function(self)
					X.Banner({
						Text = "Save Home"
					})
				end
			}
		})

		local Antiafkbt = Z.Toggle({
			Text = "Anti Afk",
			Callback = function(Value)
				AtAfk = Value
				print("AtAfk: ".. tostring(AtAfk))
			end,
			Enabled = AtAfk
		})

		local SongBaconHave = HttpService:JSONDecode(game:HttpGet("https://pastebin.com/raw/v60xgCVd"))
		-- song generate --
	--[[
	local http = game:GetService("HttpService")
local gui = game.Players.LocalPlayer.PlayerGui:GetChildren()[#game.Players.LocalPlayer.PlayerGui:GetChildren()].SongSelect.Scroller
local songs = ""
local songstabel = {}
local songsnumber = 0
for i,v in pairs(gui:GetChildren()) do
if v:IsA("Frame") then
songs = songs..'"'..v.Name..'"'..","
table.insert(songstabel,v.Name)
songsnumber += 1
end
end
local songstabel2 = http:JSONEncode(songstabel)
local songstabel3 = http:JSONDecode(songstabel2)
--setclipboard(songs)
--setclipboard(songstabel2)
print(songs)
--print(songstabel2)
--print(songstabel3)
print(songsnumber.." Songs")
	]]
		local Songsss = S.Dropdown({
			Text = "Song For Auto Farm",
			Callback = function(Value)
				X.Banner({
					Text = "Song changed: ".. Value
				})
				Song = Value
			end,
			Options = SongBaconHave,
			Menu = {
				Information = function(self)
					X.Banner({
						Text = "Chose song :DDDD"
					})
				end
			}
		})

		local songteaeasdsd = ""
		local Songsss2 = S.TextField({
			Text = "Write Your Song For Auto Farm",
			Callback = function(Value)
				songteaeasdsd = Value
			end,
			Menu = {
				Information = function(self)
					X.Banner({
						Text = "Write a song :DDDD"
					})
				end
			}
		})

		local findsongbt = S.Button({
			Text = "Find Song For Auto Farm",
			Callback = function()
				local songfined = ""
				local tabelsongfinded = {}
				local howmanyamongus = 5
				for i,v in pairs(SongBaconHave) do
					if v:lower():find(songteaeasdsd:lower()) then
						if songfined == "" then
							Song = v
							songfined = v
							tabelsongfinded = {v}
						else
							songfined = songfined..","..v
							table.insert(tabelsongfinded,v)
						end
					end
				end
				if #tabelsongfinded > howmanyamongus then
					songfined = ""
					for i = 1,howmanyamongus do
						if songfined == "" then
							songfined = tabelsongfinded[i]
						else
							songfined = songfined..","..tabelsongfinded[i]
						end
					end
					songfined = songfined.."..."
				end
				X.Banner({
					Text = "Song changed: ".. Song .." | All Song Finded: ".. songfined
				})
				print("succes!")
			end,
			Menu = {
				Information = function(self)
					X.Banner({
						Text = "idk"
					})
				end
			}
		})

		local Modessss = S.Dropdown({
			Text = "Song Modes",
			Callback = function(Value)
				ModeChosed = Value
			end,
			Options = Modes,
			Menu = {
				Information = function(self)
					X.Banner({
						Text = "Chose a mode song :DDDD"
					})
				end
			}
		})

		local ButtonAutoFarm = S.Toggle({
			Text = "Get Hardest Mode If cant find mode song",
			Callback = function(Value)
				HardestMode = Value
				print("HardestMode: ".. tostring(HardestMode))
			end,
			Enabled = HardestMode
		})

		local ButtonAutoFarm = S.Toggle({
			Text = "Random Song",
			Callback = function(Value)
				RandomSong = Value
				print("RandomSong: ".. tostring(RandomSong))
			end,
			Enabled = RandomSong
		})

		local Modessss = S.Dropdown({
			Text = "Player Type For AutoFarm",
			Callback = function(Value)
				PlayerType = Value
			end,
			Options = {
				1,2,3
			},
			Menu = {
				Information = function(self)
					X.Banner({
						Text = [[
					1: Left
					2: Right
					3: Left Or Right
					]]
					})
				end
			}
		})

		local SaveBt = S.Button({
			Text = "Save Setting",
			Callback = function()
				SaveData("Setting",{
					["Song"] = Song,
					["ModeChosed"] = ModeChosed,
					["HardestMode"] = HardestMode,
					["RandomSong"] = RandomSong,
					["PlayerType"] = PlayerType,
				})
				X.Banner({
					Text = "Data Saved!"
				})
				print("succes!")
			end,
			Menu = {
				Information = function(self)
					X.Banner({
						Text = "Save Setting"
					})
				end
			}
		})

		local playerTss = "L"
		spawn(function()
			while rs.Heartbeat:Wait() do
				for i,stage in pairs(workspace.Stages:GetChildren()) do
					if stage:FindFirstChild("Config") then
						if stage.Config.Player1.Value == plr then
							playerTss = "L"
							break
						elseif stage.Config.Player2.Value == plr then
							playerTss = "R"
							break
						end
					end
				end
			end
		end)

		local function hackarrow(v,num,keke)
			while rs.Heartbeat:Wait() and v.Visible do
				if not v.Visible then
					break
				end
				if v.Visible then
					if DownScroll.Value then
						if v.Position.Y.Scale <= 0 then
							vim:SendKeyEvent(1,Enum.KeyCode[keke],0,nil)
							if v:FindFirstChild("Frame") then
								if v.Frame.Bar.Size.Y.Scale > 0 then
									repeat rs.Heartbeat:Wait() if not v:FindFirstChild("Frame") then break end until v.Frame.Bar.Size.Y.Scale <= 0
								end
							end
							vim:SendKeyEvent(0,Enum.KeyCode[keke],0,nil) 
							break
						end
					else
						if v.Position.Y.Scale >= 0 then
							vim:SendKeyEvent(1,Enum.KeyCode[keke],0,nil)
							if v:FindFirstChild("Frame") then
								if v.Frame.Bar.Size.Y.Scale > 0 then
									repeat rs.Heartbeat:Wait() if not v:FindFirstChild("Frame") then break end until v.Frame.Bar.Size.Y.Scale <= 0
								end
							end
							vim:SendKeyEvent(0,Enum.KeyCode[keke],0,nil)
							break
						end
					end
				end
			end
		end

		spawn(function()
			local playing = false
			while wait() do
				if AutoRejoin then
					if game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored == true then
						playing = true
					elseif playing and game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored == false then
						print("sooooooooo............")
						local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
						module:Teleport(game.PlaceId)
					end
				end
			end
		end)

		local function lol(key)
			while rs.Stepped:Wait() do
				local keke = key.Key
				local num = key.NameArrow
				if AutoPlayer then
					if Player > 0 then
						if MainAutoPlayerHairHub.Game[playerTss].Arrows.IncomingNotes:FindFirstChild(num) then
							for i,v in pairs(MainAutoPlayerHairHub.Game[playerTss].Arrows.IncomingNotes[num]:GetChildren()) do
								if not MainAutoPlayerHairHub.Game.Visible then
									break
								end
								if not v:FindFirstChild("HackedNoteArrowByBaconHubPro") then
									local hackednotproff = Instance.new("StringValue",v)
									hackednotproff.Name = "HackedNoteArrowByBaconHubPro"
									hackednotproff.Value = "Nothing Lol"
									if v:FindFirstChild("HellNote") then
										if not v.HellNote.Value then
											spawn(function()
												hackarrow(v,num,keke)
											end)
										elseif v.Frame.Arrow.Image == "rbxassetid://8075643888" or v.Frame.Arrow.Image == "rbxassetid://8991029998" or v.Frame.Arrow.Image == "rbxassetid://7324214308" then
											spawn(function()
												hackarrow(v,num,keke)
											end)
										elseif v:FindFirstChildOfClass("ModuleScript") then
											spawn(function()
												hackarrow(v,num,keke)
											end)
										end
									else
										spawn(function()
											hackarrow(v,num,keke)
										end)
									end
								end
							end
						end
					end
				end
			end
		end

		spawn(function()
			lol({["Key"]=keys.Left.Value,["NameArrow"]="Left"})
		end)
		spawn(function()
			lol({["Key"]=keys.Right.Value,["NameArrow"]="Right"})
		end)
		spawn(function()
			lol({["Key"]=keys.Up.Value,["NameArrow"]="Up"})
		end)
		spawn(function()
			lol({["Key"]=keys.Down.Value,["NameArrow"]="Down"})
		end)
		spawn(function()
			lol({["Key"]=keys.L4.Value,["NameArrow"]="A"})
		end)
		spawn(function()
			lol({["Key"]=keys.L3.Value,["NameArrow"]="S"})
		end)
		spawn(function()
			lol({["Key"]=keys.L2.Value,["NameArrow"]="D"})
		end)
		spawn(function()
			lol({["Key"]=keys.L1.Value,["NameArrow"]="F"})
		end)
		spawn(function()
			lol({["Key"]=keys.Space.Value,["NameArrow"]="Space"})
		end)
		spawn(function()
			lol({["Key"]=keys.R1.Value,["NameArrow"]="H"})
		end)
		spawn(function()
			lol({["Key"]=keys.R2.Value,["NameArrow"]="J"})
		end)
		spawn(function()
			lol({["Key"]=keys.R3.Value,["NameArrow"]="K"})
		end)
		spawn(function()
			lol({["Key"]=keys.R4.Value,["NameArrow"]="L"})
		end)

		local function AntiAfk()
			game.Players.LocalPlayer.Idled:connect(function()
				if AtAfk then
					VirtualUser:CaptureController()
					VirtualUser:ClickButton2(Vector2.new())
				end
			end)
		end

		local function autofarmpro()
			while rs.Heartbeat:Wait() do
				pcall(function()
					if AutoFarm then
						if Player == 0 or MainAutoPlayerHairHub == nil or game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored == false then
							local succes = false
							local player2 = false
							for i,v in pairs(workspace.Stages:GetChildren()) do
								if v:FindFirstChild("Config") then
									if PlayerType == 1 then
										if v.Config.Player1.Value == nil then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.OutlineA.Core.CFrame
											succes = true
											if v.Config.Player2.Value then
												player2 = true
											end
											print("1yes".. i)
											break
										end
									elseif PlayerType == 2 then
										if v.Config.Player2.Value == nil then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.OutlineB.Core.CFrame
											succes = true
											if v.Config.Player1.Value then
												player2 = true
											end
											print("2yes".. i)
											break
										end
									elseif PlayerType == 3 then
										if v.Config.Player1.Value == nil then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.OutlineA.Core.CFrame
											succes = true
											if v.Config.Player2.Value then
												player2 = true
											end
											print("1yes".. i)
											break
										elseif v.Config.Player2.Value == nil then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.OutlineB.Core.CFrame
											succes = true
											if v.Config.Player1.Value then
												player2 = true
											end
											print("2yes".. i)
											break
										end
									end
									print("ae")
								else
									print("no")
								end
							end
							if succes then
								repeat rs.Heartbeat:Wait() if not AutoFarm then break end until game.Players.LocalPlayer.PlayerGui.ProximityPrompts:FindFirstChild("Prompt")
								repeat rs.Heartbeat:Wait() if not AutoFarm then break end until game.Players.LocalPlayer.PlayerGui.ProximityPrompts.Prompt.Frame.Size == UDim2.new(1,0,1,0)
								if AutoFarm then
									wait(0.1)
									vim:SendKeyEvent(1,Enum.KeyCode.E,0,nil)
									wait(0.55)
									vim:SendKeyEvent(0,Enum.KeyCode.E,0,nil)
								end
								repeat rs.Heartbeat:Wait() if not AutoFarm then break end until game.Players.LocalPlayer.PlayerGui:FindFirstChild("SingleplayerUI")
								if AutoFarm and not player2 then
									firesignal(game.Players.LocalPlayer.PlayerGui.SingleplayerUI.Frame.Play.MouseButton1Click)
								end
								repeat rs.Heartbeat:Wait() if not AutoFarm then break end until MainAutoPlayerHairHub ~= nil
								repeat rs.Heartbeat:Wait() if not AutoFarm then break end until game:IsLoaded()
								repeat rs.Heartbeat:Wait() if not AutoFarm then break end until MainAutoPlayerHairHub:FindFirstChild("SongSelect")
								repeat rs.Heartbeat:Wait() if not AutoFarm then break end until game:IsLoaded()
								if AutoFarm and RandomSong then
									firesignal(MainAutoPlayerHairHub.SongSelect.Background.Fill.SelectNone.MouseButton1Click)
								elseif AutoFarm then
									firesignal(MainAutoPlayerHairHub.SongSelect.Scroller2["(((A"].Fill.TextButton.MouseButton1Click)
									repeat rs.Heartbeat:Wait() if not AutoFarm then break end until game:IsLoaded()
									MainAutoPlayerHairHub.SongSelect.SearchBar.Box.Mover.Input.Text = Song
									rs.Heartbeat:Wait()
									repeat rs.Heartbeat:Wait() if not AutoFarm then break end until game:IsLoaded()
									if not MainAutoPlayerHairHub.SongSelect.Scroller[Song].Fill.Modes:FindFirstChild(ModeChosed) then
										local hightmodeid = 0
										for i,mode in pairs(MainAutoPlayerHairHub.SongSelect.Scroller[Song].Fill.Modes:GetChildren()) do
											if mode:IsA("Frame") and mode.Visible then
												for i2,sussybeke in pairs(Modes) do
													if HardestMode then
														if sussybeke == mode.Name and hightmodeid < i2 then
															hightmodeid = i2
														end
													else
														if sussybeke == mode.Name and hightmodeid > i2 then
															hightmodeid = i2
														elseif sussybeke == mode.Name and hightmodeid == 0 then
															hightmodeid = i2
														end
													end
												end
											end
										end
										if hightmodeid > 0 then
											firesignal(MainAutoPlayerHairHub.SongSelect.Scroller[Song].Fill.Modes[Modes[hightmodeid]].Fill.MouseButton1Click)
										else
											for i,mode in pairs(MainAutoPlayerHairHub.SongSelect.Scroller[Song].Fill.Modes:GetChildren()) do
												if mode:IsA("Frame") and mode.Visible then
													firesignal(mode.Fill.MouseButton1Click)
													break
												end
											end
										end
									else
										firesignal(MainAutoPlayerHairHub.SongSelect.Scroller[Song].Fill.Modes[ModeChosed].Fill.MouseButton1Click)
									end
								end
								repeat rs.Heartbeat:Wait() if not AutoFarm then break end until Player > 0
								repeat rs.Heartbeat:Wait() if not AutoFarm then break end until game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored == false
								print("YES")
								wait(0.5)
							else
								print("NOOOOOOOO")
							end
						else
							if MainAutoPlayerHairHub:FindFirstChild("SongSelect") then
								if AutoFarm and RandomSong then
									firesignal(MainAutoPlayerHairHub.SongSelect.Background.Fill.SelectNone.MouseButton1Click)
								elseif AutoFarm then
									repeat rs.Heartbeat:Wait() if not AutoFarm then break end until game:IsLoaded()
									MainAutoPlayerHairHub.SongSelect.SearchBar.Box.Mover.Input.Text = Song
									rs.Heartbeat:Wait()
									repeat rs.Heartbeat:Wait() if not AutoFarm then break end until game:IsLoaded()
									local hightmodeid = 0
									for i,mode in pairs(MainAutoPlayerHairHub.SongSelect.Scroller[Song].Fill.Modes:GetChildren()) do
										if mode:IsA("Frame") and mode.Visible then
											for i,sussybeke in pairs(Modes) do
												if sussybeke == mode.Name and hightmodeid < i then
													hightmodeid = i
												end
											end
										end
									end
									firesignal(MainAutoPlayerHairHub.SongSelect.Scroller[Song].Fill.Modes[Modes[hightmodeid]].Fill.MouseButton1Click)
								end
							end
							repeat rs.Heartbeat:Wait() if not AutoFarm then break end until game:IsLoaded()
							repeat rs.Heartbeat:Wait() if not AutoFarm then break end until Player == 0
							repeat rs.Heartbeat:Wait() if not AutoFarm then break end until game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored == false
							wait(0.5)
						end
					end
				end)
			end
		end

		spawn(function()
			autofarmpro()
		end)
	end
	yea()
elseif PlaceId == 6520999642 then
	local function sus()
		local vim = game:GetService("VirtualInputManager")
		local rs = game:GetService("RunService")
		local plr = game.Players.LocalPlayer
		local main = plr.PlayerGui.Main

		local X = Material.Load({
			Title = "BaconHub",
			Style = 3,
			SizeX = 500,
			SizeY = 350,
			Theme = "Light",
			ColorOverrides = {
				MainFrame = Color3.fromRGB(235, 235, 235)
			}
		})

		local Y = X.New({
			Title = "Home",
			ImageID = 9310172214,
		})

		local Z = X.New({
			Title = "Misc",
			ImageID = 8099777545,
		})

		local S = X.New({
			Title = "Setting",
			ImageID = 6942070576,
		})

		local AutoPlayer = true
		local Player = 1
		local DataHomeLoaded = LoadData("Home")
		local DataSettingLoaded = LoadData("Setting")
		local DataMicsLoaded = LoadData("Misc")
		if DataHomeLoaded and DataHomeLoaded[tostring(PlaceId)] then
			AutoPlayer = DataHomeLoaded[tostring(PlaceId)]["AutoPlayer"] or AutoPlayer
			X.Banner({
				Text = [[DATA LOADED!
AutoPlayer: ]].. tostring(AutoPlayer)
			})
			print([[DATA LOADED!
AutoPlayer: ]].. tostring(AutoPlayer))
		else
			warn("Data nil")
		end
		if DataMicsLoaded and DataMicsLoaded[tostring(PlaceId)] then

		else
			warn("Data nil")
		end
		if DataSettingLoaded and DataSettingLoaded[tostring(PlaceId)] then

		else
			warn("Data nil")
		end

		local ButtonAutoPlayer = Y.Toggle({
			Text = "Auto Player",
			Callback = function(Value)
				AutoPlayer = Value
				print("Auto player: ".. tostring(AutoPlayer))
			end,
			Enabled = AutoPlayer
		})

		local SaveBt = Y.Button({
			Text = "Save Home",
			Callback = function()
				SaveData("Home",{
					["AutoPlayer"] = AutoPlayer,
					--["Player"] = Player,
				})
				X.Banner({
					Text = "Data Saved!"
				})
				print("succes!")
			end,
			Menu = {
				Information = function(self)
					X.Banner({
						Text = "Save Home"
					})
				end
			}
		})

		--[[
		local D = Y.Dropdown({
			Text = "PLAYER",
			Callback = function(Value)
				Player = Value
			end,
			Options = {
				1,2
			},
			Menu = {
				Information = function(self)
					X.Banner({
						Text = "1 is left, 2 is right"
					})
				end
			}
		})
		
		]]
		spawn(function()
			while task.wait() do
				if AutoPlayer then
					if plr.File.CurrentPlayer.Value then
						if plr.File.CurrentPlayer.Value.Name == "Player1" then
							Player = 1
						elseif plr.File.CurrentPlayer.Value.Name == "Player2" then
							Player = 2
						end
					else
						Player = 0
					end
				end
			end
		end)
		
		function lol(num,keke)
			local antilag = 0
			local speed = 0.02
			local tyingarrow = {}
			while true do
				antilag += 1
				if antilag >= 10 then
					antilag = 0
					task.wait()
				end
				if AutoPlayer then
					if Player > 0 then
						for i,v in pairs(main.MatchFrame["KeySync".. Player]["Arrow".. num].Notes:GetChildren()) do
							if v:IsA("ImageLabel") then
								if v.Position.Y.Scale <= speed and not table.find(tyingarrow,v) then
									table.insert(tyingarrow,v)
									vim:SendKeyEvent(1,Enum.KeyCode[keke],0,nil)
									spawn(function()
										local hold = main.MatchFrame["KeySync".. Player]["Arrow".. num].Hold.Hitbox:WaitForChild(v.Name,0.1)
										local antilag2 = 0
										if hold and hold.Size.Y.Scale > 0 then
											repeat 
												antilag += 1
												if antilag >= 10 then
													antilag = 0
													task.wait()
												end
												if not hold then 
													break 
												end 
											until hold.Position.Y.Scale+hold.Size.Y.Scale <= speed
										end
										vim:SendKeyEvent(0,Enum.KeyCode[keke],0,nil) 
										table.remove(tyingarrow,i)
									end)
								end
							end
						end
					end
				end
			end
		end

		spawn(function()
			lol(1,"A")
		end)
		spawn(function()
			lol(2,"S")
		end)
		spawn(function()
			lol(3,"W")
		end)
		spawn(function()
			lol(4,"D")
		end)
	end 
	sus()
elseif PlaceId == 6604417568 then
	local X = Material.Load({
		Title = "BaconHub [DONT PLAY THIS GAME]",
		Style = 3,
		SizeX = 500,
		SizeY = 350,
		Theme = "Light",
		ColorOverrides = {
			MainFrame = Color3.fromRGB(235, 235, 235)
		}
	})

	local Y = X.New({
		Title = "Home",
		ImageID = 9310172214,
	})

	local Z = X.New({
		Title = "Misc",
		ImageID = 8099777545,
	})

	local S = X.New({
		Title = "Setting",
		ImageID = 6942070576,
	})
	local Xray = true
	local XrayButton = Y.Toggle({
		Text = "Xray [LAG]",
		Callback = function(Value)
			Xray = not Xray
			print("Xray: ".. tostring(Xray))
		end,
		Enabled = false
	})
	local SaveBt = Z.Button({
		Text = "Save Home",
		Callback = function()
			SaveData("Home",{
				["Xray"] = Xray,
			})
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Save Home"
				})
			end
		}
	})
	local nightvisionbt = Z.Button({
		Text = "Infinite Day",
		Callback = function(Value)
			game.Lighting.ColorShift_Top = Color3.new(1, 1, 1)
			game.Lighting.ColorShift_Bottom = Color3.new(1, 1, 1)
			game.Lighting.OutdoorAmbient = Color3.new(1, 1, 1)
			game.Lighting.Ambient = Color3.new(1, 1, 1)
			game.Lighting.ClockTime = 12
			game.Lighting.GlobalShadows = false
			for i,v in pairs(game.Lighting:GetChildren()) do
				v:Destroy()
			end
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "idk just click it"
				})
			end
		},
		Enabled = false
	})
	local HopServer = Z.Button({
		Text = "Hop Server (It can make you got error 268)",
		Callback = function()
			local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
			module:Teleport(game.PlaceId)
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Hop to other server..."
				})
			end
		}
	})
	local xraybox = true
	local xrayboxbt = S.Toggle({
		Text = "Xray Box [DONT OPEN IT]",
		Callback = function(Value)
			xraybox = not xraybox
			print("xraybox: ".. tostring(xraybox))
		end,
		Enabled = false
	})
	local LineThickness = 0.001
	local LineThicknessSlider = S.Slider({
		Text = "Line Thickness [Box]",
		Callback = function(Value)
			LineThickness = Value
		end,
		Min = 0.001,
		Max = 1,
		Def = 300
	})
	local BoxColor = Color3.fromRGB(0,0,0)
	local BoxColorPicker = S.ColorPicker({
		Text = "Box Colour",
		Default = Color3.fromRGB(0,0,0),
		Callback = function(Value)
			BoxColor = Color3.fromRGB(Value.R * 255, Value.G * 255, Value.B * 255)
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "This changes the color of your box."
				})
			end
		}
	})
	local SaveBt = S.Button({
		Text = "Save Setting",
		Callback = function()
			SaveData("Setting",{
				["Xraybox"] = xraybox,
				["LineThickness"] = LineThickness,
				["BoxColor"] = BoxColor,
			})
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Save Setting"
				})
			end
		}
	})
	local uis = game:GetService("UserInputService")
	local runserver = game:GetService("RunService")
	while wait() do
		if Xray then
			for i,e in pairs(workspace.Blocks:GetChildren()) do
				for i,v in pairs(e:GetChildren()) do
					if v.Transparency ~= 1 and not string.find(v.Name,"Ore") then
						v.Transparency = 1
						for i,sus in pairs(v:GetChildren()) do
							if sus:IsA("Decal") then
								sus.Transparency = 1
							end
						end
						if not v:FindFirstChild("Esped") then
							local esp = Instance.new("IntValue",v)
							esp.Name = "Esped"
						end
						if not v:FindFirstChild("BoxEsp") then
							local box = Instance.new("SelectionBox",v)
							box.Adornee = v
							box.Color3 = BoxColor
							box.LineThickness = LineThickness
							box.Name = "BoxEsp"
							box.Visible = false
							spawn(function()
								while runserver.Heartbeat:Wait() and box do
									if Xray then
										if xraybox then
											box.Color3 = BoxColor
											box.LineThickness = LineThickness
											box.Visible = true
										else
											box.Visible = false
										end
									else
										box.Visible = false
									end
								end
							end)
						end
					elseif v.CanCollide and not string.find(v.Name,"Ore") then
						for i,sus in pairs(v:GetChildren()) do
							if sus:IsA("Decal") then
								sus.Transparency = 1
							end
						end
						if not v:FindFirstChild("Esped2") then
							local esp = Instance.new("IntValue",v)
							esp.Name = "Esped2"
						end
						if not v:FindFirstChild("BoxEsp") then
							local box = Instance.new("SelectionBox",v)
							box.Adornee = v
							box.Color3 = BoxColor
							box.LineThickness = LineThickness
							box.Name = "BoxEsp"
							box.Visible = false
							spawn(function()
								while runserver.Heartbeat:Wait() and box do
									if Xray then
										if xraybox then
											box.Color3 = BoxColor
											box.LineThickness = LineThickness
											box.Visible = true
										else
											box.Visible = false
										end
									else
										box.Visible = false
									end
								end
							end)
						end
					end
					runserver.Heartbeat:Wait()
				end
				runserver.Heartbeat:Wait()
			end
		else
			for i,e in pairs(workspace.Blocks:GetChildren()) do
				for i,v in pairs(e:GetChildren()) do
					if v:FindFirstChild("Esped") and not string.find(v.Name,"Ore") then
						v.Transparency = 0
						for i,sus in pairs(v:GetChildren()) do
							if sus:IsA("Decal") then
								sus.Transparency = 0
							end
						end
						v.Esped:Destroy()
					end
					if v:FindFirstChild("Esped2") and not string.find(v.Name,"Ore") then
						for i,sus in pairs(v:GetChildren()) do
							if sus:IsA("Decal") then
								sus.Transparency = 0
							end
						end
						v.Esped2:Destroy()
					end
					runserver.Heartbeat:Wait()
				end
				runserver.Heartbeat:Wait()
			end
		end
	end
elseif PlaceId == 8376378000 then
	local X = Material.Load({
		Title = "BaconHub",
		Style = 3,
		SizeX = 500,
		SizeY = 350,
		Theme = "Light",
		ColorOverrides = {
			MainFrame = Color3.fromRGB(235, 235, 235)
		}
	})

	local Y = X.New({
		Title = "Home",
		ImageID = 9310172214,
	})

	local Z = X.New({
		Title = "Misc",
		ImageID = 8099777545,
	})

	local S = X.New({
		Title = "Setting",
		ImageID = 6942070576,
	})

	local Farm = true
	local Farmbt = Y.Toggle({
		Text = "Auto Farm",
		Callback = function(Value)
			Farm = not Farm
			print("Farm: ".. tostring(Farm))
		end,
		Enabled = false
	})
	local SaveBt = Y.Button({
		Text = "Save Home",
		Callback = function()
			SaveData("Home",{
				["Farm"] = Farm,
			})
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Save Home"
				})
			end
		}
	})
	local Esp = true
	local Espbt = Z.Toggle({
		Text = "Esp Stickmen",
		Callback = function(Value)
			Esp = not Esp
			print("Esp: ".. tostring(Esp))
		end,
		Enabled = false
	})

	local Esp2 = true
	local Esp2bt = Z.Toggle({
		Text = "Esp Pickaxe [For Miner Stickmen]",
		Callback = function(Value)
			Esp2 = not Esp2
			print("Esp2: ".. tostring(Esp2))
		end,
		Enabled = false
	})

	local HopServer = Z.Button({
		Text = "Hop Server",
		Callback = function()
			local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
			module:Teleport(game.PlaceId)
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Hop to other server but it can make you got error 268"
				})
			end
		}
	})

	local SaveBt = Z.Button({
		Text = "Save Mics",
		Callback = function()
			SaveData("Mics",{
				["Esp"] = Esp,
				["Esp2"] = Esp2,
			})
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Save Mics"
				})
			end
		}
	})

	local EspColor = Color3.fromRGB(0,0,0)
	local BoxColorPicker = S.ColorPicker({
		Text = "Esp Colour",
		Default = Color3.fromRGB(0,0,0),
		Callback = function(Value)
			EspColor = Color3.fromRGB(Value.R * 255, Value.G * 255, Value.B * 255)
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "This changes the color of your esp."
				})
			end
		}
	})

	local AutoFarmType = ""
	local AutoFarmTypeBt = S.Dropdown({
		Text = "Auto Farm Type",
		Callback = function(Value)
			AutoFarmType = Value
			print(Value)
		end,
		Options = {
			"Teleport",
			"Tween",
		},
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Is type if you auto farm."
				})
			end
		}
	})

	local EspColloedsda = true
	local EspColloedsdaBt = S.Toggle({
		Text = "Show Esp Stickmen Collected",
		Callback = function(Value)
			EspColloedsda = not EspColloedsda
			print("EspColloedsda: ".. tostring(EspColloedsda))
		end,
		Enabled = false
	})

	local Esp2Colloedsda = true
	local Esp2ColloedsdaBt = S.Toggle({
		Text = "Show Esp Pickaxe Collected",
		Callback = function(Value)
			Esp2Colloedsda = not Esp2Colloedsda
			print("Esp2Colloedsda: ".. tostring(Esp2Colloedsda))
		end,
		Enabled = false
	})

	local SpeedTween = 100
	local SpeedTweenSlider = S.Slider({
		Text = "Auto Farm Speed (Tween)",
		Callback = function(Value)
			SpeedTween = Value
		end,
		Min = 1,
		Max = 1000,
		Def = 100
	})

	local AutoFarmTeleDelay = 0
	local AutoFarmTeleDelaySlider = S.Slider({
		Text = "Auto Farm Delay (Teleport)",
		Callback = function(Value)
			AutoFarmTeleDelay = Value
		end,
		Min = 0,
		Max = 10,
		Def = 0
	})

	local AntiAfk = true
	local AntiAfkbt = S.Toggle({
		Text = "Anti AFK",
		Callback = function(Value)
			AntiAfk = not AntiAfk
			print("AntiAfk: ".. tostring(AntiAfk))
		end,
		Enabled = false
	})

	local SaveBt = S.Button({
		Text = "Save Setting",
		Callback = function()
			SaveData("Setting",{
				["EspColor"] = EspColor,
				["AutoFarmType"] = AutoFarmType,
				["EspColloedsda"] = EspColloedsda,
				["Esp2Colloedsda"] = Esp2Colloedsda,
				["SpeedTween"] = SpeedTween,
				["AutoFarmTeleDelay"] = AutoFarmTeleDelay,
				["AntiAfk"] = AntiAfk,
			})
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Save Setting"
				})
			end
		}
	})

	local TweenService = game:GetService("TweenService")
	local RunService = game:GetService("RunService")
	local EspTemps = {}

	local function Create(Object,Properties)
		local NewObject = Instance.new(Object)
		for PropertieName, Propertie in pairs(Properties) do
			if type(PropertieName) == 'number' then
				Propertie.Parent = NewObject
			else
				NewObject[PropertieName] = Propertie
			end
		end
		return NewObject
	end

	local function AntiAfkMain()
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
			if AntiAfk then
				vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
				wait(1)
				vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			end
		end)
	end

	local function surf(parent,part,face,color)
		local gui = Instance.new("SurfaceGui")
		gui.Name = "NightVisionSurface"
		gui.LightInfluence = 1
		gui.AlwaysOnTop = true
		gui.Face = face

		local fr = Instance.new("Frame")
		fr.Size = UDim2.new(1,0,1,0)
		fr.BorderSizePixel = 0
		fr.BackgroundColor3 = color
		fr.BackgroundTransparency = 0.5
		fr.Parent = gui

		gui.Adornee = part
		gui.Parent = parent

		return {Main=gui,Frame=fr}
	end

	spawn(function()
		AntiAfkMain()
	end)

	spawn(function()
		for i,stickmen in pairs(workspace.MinePickaxes:GetChildren()) do
			if stickmen:IsA("Part") or stickmen:IsA("MeshPart") or stickmen:IsA("UnionOperation") then
				local folderesp = Create("Folder",{
					Name = "EspMinePickaxeHairHub",
					Parent = stickmen
				})
				local gusi = Create("BillboardGui",{
					Name = "TextBill",
					LightInfluence = 1,
					AlwaysOnTop = true,
					StudsOffset = Vector3.new(0,3,0),
					Size = UDim2.new(0,200,0,50),
					MaxDistance = math.huge,
					Adornee = stickmen,
					Parent = folderesp
				})
				local text = Create("TextLabel",{
					Text = stickmen.Name,
					BorderSizePixel = 0,
					TextColor3 = EspColor,
					BackgroundTransparency = 1,
					TextScaled = true,
					TextStrokeTransparency = 0,
					Size = UDim2.new(1,0,1,0),
					Parent = gusi
				})
				table.insert(EspTemps,folderesp)
				spawn(function()
					local surf1 = surf(folderesp,stickmen,"Top",EspColor)
					local surf2 = surf(folderesp,stickmen,"Bottom",EspColor) 
					local surf3 = surf(folderesp,stickmen,"Right",EspColor) 
					local surf4 = surf(folderesp,stickmen,"Left",EspColor) 
					local surf5 = surf(folderesp,stickmen,"Front",EspColor)
					local surf6 = surf(folderesp,stickmen,"Back",EspColor)
					while wait() do
						surf1.Frame.BackgroundColor3 = EspColor
						surf2.Frame.BackgroundColor3 = EspColor
						surf3.Frame.BackgroundColor3 = EspColor
						surf4.Frame.BackgroundColor3 = EspColor
						surf5.Frame.BackgroundColor3 = EspColor
						surf6.Frame.BackgroundColor3 = EspColor
						text.TextColor3 = EspColor
						if Esp2 then
							if Esp2Colloedsda then
								if stickmen.Transparency == 0 then
									surf1.Main.Enabled = false
									surf2.Main.Enabled = false
									surf3.Main.Enabled = false
									surf4.Main.Enabled = false
									surf5.Main.Enabled = false
									surf6.Main.Enabled = false
									gusi.Enabled = false
								else
									surf1.Main.Enabled = true
									surf2.Main.Enabled = true
									surf3.Main.Enabled = true
									surf4.Main.Enabled = true
									surf5.Main.Enabled = true
									surf6.Main.Enabled = true
									gusi.Enabled = true
								end
							else
								surf1.Main.Enabled = true
								surf2.Main.Enabled = true
								surf3.Main.Enabled = true
								surf4.Main.Enabled = true
								surf5.Main.Enabled = true
								surf6.Main.Enabled = true
								gusi.Enabled = true
							end
						else
							surf1.Main.Enabled = false
							surf2.Main.Enabled = false
							surf3.Main.Enabled = false
							surf4.Main.Enabled = false
							surf5.Main.Enabled = false
							surf6.Main.Enabled = false
							gusi.Enabled = false
						end
					end
				end)
			end
		end
	end)

	spawn(function()
		for i,stickmen in pairs(workspace.Stickmen:GetChildren()) do
			if stickmen:IsA("Part") or stickmen:IsA("MeshPart") then
				local folderesp = Create("Folder",{
					Name = "EspStickmenHairHub",
					Parent = stickmen
				})
				local gusi = Create("BillboardGui",{
					Name = "TextBill",
					LightInfluence = 1,
					AlwaysOnTop = true,
					StudsOffset = Vector3.new(0,3,0),
					Size = UDim2.new(0,200,0,50),
					MaxDistance = math.huge,
					Adornee = stickmen,
					Parent = folderesp
				})
				local text = Create("TextLabel",{
					Text = stickmen.Name,
					BorderSizePixel = 0,
					TextColor3 = EspColor,
					BackgroundTransparency = 1,
					TextScaled = true,
					TextStrokeTransparency = 0,
					Size = UDim2.new(1,0,1,0),
					Parent = gusi
				})
				table.insert(EspTemps,folderesp)
				spawn(function()
					local surf1 = surf(folderesp,stickmen,"Top",EspColor)
					local surf2 = surf(folderesp,stickmen,"Bottom",EspColor) 
					local surf3 = surf(folderesp,stickmen,"Right",EspColor) 
					local surf4 = surf(folderesp,stickmen,"Left",EspColor) 
					local surf5 = surf(folderesp,stickmen,"Front",EspColor)
					local surf6 = surf(folderesp,stickmen,"Back",EspColor)
					while wait() do
						surf1.Frame.BackgroundColor3 = EspColor
						surf2.Frame.BackgroundColor3 = EspColor
						surf3.Frame.BackgroundColor3 = EspColor
						surf4.Frame.BackgroundColor3 = EspColor
						surf5.Frame.BackgroundColor3 = EspColor
						surf6.Frame.BackgroundColor3 = EspColor
						text.TextColor3 = EspColor
						if Esp and game.Players.LocalPlayer.PlayerGui:FindFirstChild("ScreenGui") then
							local MainGui = game.Players.LocalPlayer.PlayerGui.ScreenGui.MainFrame.ScrollingFrame
							if MainGui:FindFirstChild(stickmen.Name) then
								if MainGui:FindFirstChild(stickmen.Name).ContainFrame.ImageColor3 ~= Color3.fromRGB(14, 213, 0) then
									if EspColloedsda then
										surf1.Main.Enabled = false
										surf2.Main.Enabled = false
										surf3.Main.Enabled = false
										surf4.Main.Enabled = false
										surf5.Main.Enabled = false
										surf6.Main.Enabled = false
										gusi.Enabled = false
									else
										surf1.Main.Enabled = true
										surf2.Main.Enabled = true
										surf3.Main.Enabled = true
										surf4.Main.Enabled = true
										surf5.Main.Enabled = true
										surf6.Main.Enabled = true
										gusi.Enabled = true
									end
								else
									surf1.Main.Enabled = true
									surf2.Main.Enabled = true
									surf3.Main.Enabled = true
									surf4.Main.Enabled = true
									surf5.Main.Enabled = true
									surf6.Main.Enabled = true
									gusi.Enabled = true
								end
							end
						else
							surf1.Main.Enabled = false
							surf2.Main.Enabled = false
							surf3.Main.Enabled = false
							surf4.Main.Enabled = false
							surf5.Main.Enabled = false
							surf6.Main.Enabled = false
							gusi.Enabled = false
						end
					end
				end)
			end
		end
	end)
	local TweenAutoFram = nil
	spawn(function()
		while RunService.Heartbeat:Wait() do
			if Farm then
				if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.PlayerGui:FindFirstChild("ScreenGui") then
					for i,stickmen in pairs(workspace.Stickmen:GetChildren()) do
						if stickmen:IsA("Part") or stickmen:IsA("MeshPart") then
							local MainGui = game.Players.LocalPlayer.PlayerGui.ScreenGui.MainFrame.ScrollingFrame
							if MainGui:FindFirstChild(stickmen.Name) then
								if not Farm then
									break
								end
								if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
									break
								end
								if MainGui:FindFirstChild(stickmen.Name).ContainFrame.ImageColor3 ~= Color3.fromRGB(14, 213, 0) then
									if AutoFarmType == "" then
										warn("Please chose auto farm type!")
										break
									end
									if AutoFarmType == "Tween" then
										if TweenAutoFram then
											TweenAutoFram:Cancel()
										end
										local HrpPos = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position
										TweenAutoFram = TweenService:Create(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"),TweenInfo.new((stickmen.Position-HrpPos).Magnitude/SpeedTween),{CFrame = CFrame.new(stickmen.Position)}):Play()
										repeat RunService.Heartbeat:Wait() if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then break end if not Farm then break end until MainGui:FindFirstChild(stickmen.Name).ContainFrame.ImageColor3 == Color3.fromRGB(14, 213, 0)
									elseif AutoFarmType == "Teleport" then
										game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(stickmen.Position)
										wait(AutoFarmTeleDelay)
										repeat RunService.Heartbeat:Wait() if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then break end if not Farm then break end until MainGui:FindFirstChild(stickmen.Name).ContainFrame.ImageColor3 == Color3.fromRGB(14, 213, 0)
									end
								end
							end
						end
					end
				end
			else
				if TweenAutoFram then
					TweenAutoFram:Cancel()
				end
			end
		end
	end)
elseif PlaceId == 5926001758 then
	local X = Material.Load({
		Title = "BaconHub",
		Style = 3,
		SizeX = 500,
		SizeY = 350,
		Theme = "Light",
		ColorOverrides = {
			MainFrame = Color3.fromRGB(235, 235, 235)
		}
	})

	local Home = X.New({
		Title = "Home",
		ImageID = 9310172214,
	})

	local Misc = X.New({
		Title = "Misc",
		ImageID = 8099777545,
	})

	local Setting = X.New({
		Title = "Setting",
		ImageID = 6942070576,
	})

	local RunService = game:GetService("RunService")
	local TypeFarm = ""
	local Type = ""
	local Farm = true
	local Speed = 16

	local FarmBt = Home.Toggle({
		Text = "Auto Farm [Working if you chosed farm type]",
		Callback = function(Value)
			Farm = not Farm
			print("Farm: ".. tostring(Farm))
		end,
		Enabled = false
	})
	local SaveBt = Home.Button({
		Text = "Save Home",
		Callback = function()
			SaveData("Home",{
				["Farm"] = Farm,
			})
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Save Home"
				})
			end
		}
	})

	local Speed = true
	local Speedbt = Misc.Toggle({
		Text = "Speed",
		Callback = function(Value)
			Speed = not Speed
			print("Speed: ".. tostring(Speed))
		end,
		Enabled = false
	})

	local HopServer = Misc.Button({
		Text = "Hop Server",
		Callback = function()
			local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
			module:Teleport(game.PlaceId)
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Hop to other server but it can make you got error 268"
				})
			end
		}
	})

	local SaveBt = Misc.Button({
		Text = "Save Mics",
		Callback = function()
			SaveData("Mics",{
				["Speed"] = Speed,
			})
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Save Mics"
				})
			end
		}
	})

	local AutoFarmTypeBt = Setting.Dropdown({
		Text = "Auto Farm Type",
		Callback = function(Value)
			TypeFarm = Value
			print(Value)
		end,
		Options = {
			"Teleport",
			"Move",
		},
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Is type if you auto farm."
				})
			end
		}
	})

	local AutoFarmTypeBt2 = Setting.Dropdown({
		Text = "Auto Farm Type 2",
		Callback = function(Value)
			Type = Value
			print(Value)
		end,
		Options = {
			"Nearest",
			"Furthest",
			"Random",
		},
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Is type if you auto farm."
				})
			end
		}
	})

	local ShowPart = true
	local ShowPartbt = Setting.Toggle({
		Text = "Show Location Color Block",
		Callback = function(Value)
			ShowPart = not ShowPart
			print("ShowPart: ".. tostring(ShowPart))
		end,
		Enabled = false
	})

	local AntiAfk = true
	local AntiAfkbt = Setting.Toggle({
		Text = "Anti AFK",
		Callback = function(Value)
			AntiAfk = not AntiAfk
			print("AntiAfk: ".. tostring(AntiAfk))
		end,
		Enabled = false
	})

	local Speeds = 100
	local SpeedSlider = Setting.Slider({
		Text = "Speed",
		Callback = function(Value)
			Speeds = Value
		end,
		Min = 0,
		Max = 100,
		Def = 16
	})

	local SaveBt = Setting.Button({
		Text = "Save Setting",
		Callback = function()
			SaveData("Setting",{
				["TypeFarm"] = TypeFarm,
				["Type"] = Type,
				["ShowPart"] = ShowPart,
				["AntiAfk"] = AntiAfk,
				["Speeds"] = Speeds,
			})
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Save Setting"
				})
			end
		}
	})

	local function AntiAfkMain()
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
			if AntiAfk then
				vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
				wait(1)
				vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			end
		end)
	end

	spawn(function()
		AntiAfkMain()
	end)

	local Block
	local Part = Instance.new("Part",workspace.CurrentCamera)
	Part.Name = "ShowPart"
	Part.Color = Color3.new(0,1,0)
	Part.Size = Vector3.new(1,1000,1)
	Part.Transparency = 1
	Part.Position = Vector3.new(0,0,0)
	Part.Material = Enum.Material.Neon
	Part.CanCollide = false
	Part.Anchored = true
	spawn(function()
		while RunService.Heartbeat:Wait() do
			if Part then
				Part.Orientation += Vector3.new(0,3,0)
			end
			if ShowPart then
				Part.Transparency = 0
			else
				Part.Transparency = 1
			end
			if Speed then
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speeds
			end
			spawn(function()
				local eeeeeee
				local color = game.Players.LocalPlayer.PlayerGui.inGameGui.Frame.Color.BackgroundColor3
				local colorbrick = game.Players.LocalPlayer.PlayerGui.inGameGui.Frame.Color.BackgroundColor
				local sssssesh = {}
				for i,blocksussy in pairs(workspace.Blocks:GetChildren()) do
					for i,target in pairs(blocksussy:GetChildren()) do
						if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and target:IsA("Model") then
							if Type == "Nearest" then
								if eeeeeee then
									if (target:GetChildren()[1].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude < eeeeeee and (target:GetChildren()[1].BrickColor == colorbrick) then
										eeeeeee = (target:GetChildren()[1].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
										Block = target
									end
								elseif target:GetChildren()[1].BrickColor == colorbrick then
									eeeeeee = (target:GetChildren()[1].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
									Block = target
								end
							elseif Type == "Furthest" then
								if eeeeeee then
									if (target:GetChildren()[1].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > eeeeeee and (target:GetChildren()[1].BrickColor == colorbrick) then
										eeeeeee = (target:GetChildren()[1].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
										Block = target
									end
								elseif target:GetChildren()[1].BrickColor == colorbrick then
									eeeeeee = (target:GetChildren()[1].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
									Block = target
								end
							elseif Type == "Random" then
								if target:GetChildren()[1].BrickColor == colorbrick then
									Block = target
									break
								end
							end
						end
					end
				end
				if Block then
					if Part then
						if game.Players.LocalPlayer.PlayerGui.inGameGui.Frame.Visible then
							Part.Position = Block:GetChildren()[1].Position
						end
					end
					if Farm then
						if TypeFarm == "Teleport" then
							game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Block:GetChildren()[1].Position + Vector3.new(0,3,0))
						elseif TypeFarm == "Move" then
							game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
							game.Players.LocalPlayer.Character.Humanoid:MoveTo(Block:GetChildren()[1].Position + Vector3.new(0,3,0),Block:GetChildren()[1])
						end
					end
				end
			end)
		end
	end)
elseif PlaceId == 7896264844 then
	local X = Material.Load({
		Title = "BaconHub",
		Style = 3,
		SizeX = 500,
		SizeY = 350,
		Theme = "Light",
		ColorOverrides = {
			MainFrame = Color3.fromRGB(235, 235, 235)
		}
	})

	local Home = X.New({
		Title = "Home",
		ImageID = 9310172214,
	})

	local Misc = X.New({
		Title = "Misc",
		ImageID = 8099777545,
	})

	local Setting = X.New({
		Title = "Setting",
		ImageID = 6942070576,
	})

	local Markers = {}
	local RunService = game:GetService("RunService")
	local TweenService = game:GetService("TweenService")

	for i,marker in pairs(workspace:GetChildren()) do
		if marker:IsA("Model") and marker.Name:find("Marker") and marker.Name:split(" ")[2] == "Marker" then
			table.insert(Markers,marker)
		end
	end

	local Farm = false
	local Esp = false
	local EspColor = Color3.fromRGB(0,0,0)
	local AutoFarmType = ""
	local EspColloedsda = false
	local SpeedTween = 100
	local AutoFarmTeleDelay = 0
	local AntiAfk = false

	pcall(function()
		local DataHomeLoaded = LoadData("Home")
		local DataSettingLoaded = LoadData("Setting")
		local DataMicsLoaded = LoadData("Misc")
		if DataHomeLoaded[tostring(PlaceId)] then
			Farm = DataHomeLoaded[tostring(PlaceId)].Farm
		end
		if DataMicsLoaded[tostring(PlaceId)] then
			Esp = DataMicsLoaded[tostring(PlaceId)].Esp
		end
		if DataSettingLoaded[tostring(PlaceId)] then
			SpeedTween = DataSettingLoaded[tostring(PlaceId)].SpeedTween
			AutoFarmTeleDelay = DataSettingLoaded[tostring(PlaceId)].AutoFarmTeleDelay
			EspColloedsda = DataSettingLoaded[tostring(PlaceId)].EspColloedsda
			AntiAfk = DataSettingLoaded[tostring(PlaceId)].AntiAfk
		end
		print("succes!")
	end)

	local FarmBt = Home.Toggle({
		Text = "Auto Farm",
		Callback = function(Value)
			Farm = Value
			print("Farm: ".. tostring(Farm))
		end,
		Enabled = Farm
	})

	local SaveBt = Home.Button({
		Text = "Save Home",
		Callback = function()
			SaveData("Home",{
				["Farm"] = Farm,
			})
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Save Home"
				})
			end
		}
	})

	local Espbt = Misc.Toggle({
		Text = "Esp Marker",
		Callback = function(Value)
			Esp = Value
			print("Esp: ".. tostring(Esp))
		end,
		Enabled = Esp
	})

	local SaveBt = Misc.Button({
		Text = "Save Mics",
		Callback = function()
			SaveData("Mics",{
				["Esp"] = Esp,
			})
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Save Mics"
				})
			end
		}
	})

	local BoxColorPicker = Setting.ColorPicker({
		Text = "Esp Colour",
		Default = EspColor,
		Callback = function(Value)
			EspColor = Color3.fromRGB(Value.R * 255, Value.G * 255, Value.B * 255)
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "This changes the color of your esp."
				})
			end
		}
	})

	local AutoFarmTypeBt = Setting.Dropdown({
		Text = "Auto Farm Type",
		Callback = function(Value)
			AutoFarmType = Value
			print(Value)
		end,
		Options = {
			"Teleport",
			"Tween",
		},
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Is type if you auto farm."
				})
			end
		}
	})

	local EspColloedsdaBt = Setting.Toggle({
		Text = "Show Esp Marker Collected",
		Callback = function(Value)
			EspColloedsda = Value
			print("EspColloedsda: ".. tostring(EspColloedsda))
		end,
		Enabled = EspColloedsda
	})

	local SpeedTweenSlider = Setting.Slider({
		Text = "Auto Farm Speed (Tween)",
		Callback = function(Value)
			SpeedTween = Value
		end,
		Min = 1,
		Max = 1000,
		Def = SpeedTween
	})

	local AutoFarmTeleDelaySlider = Setting.Slider({
		Text = "Auto Farm Delay (Teleport)",
		Callback = function(Value)
			AutoFarmTeleDelay = Value
		end,
		Min = 0,
		Max = 10,
		Def = AutoFarmTeleDelay
	})

	local AntiAfkbt = Setting.Toggle({
		Text = "Anti AFK",
		Callback = function(Value)
			AntiAfk = Value
			print("AntiAfk: ".. tostring(AntiAfk))
		end,
		Enabled = AntiAfk
	})

	local SaveBt = Setting.Button({
		Text = "Save Setting",
		Callback = function()
			SaveData("Setting",{
				["EspColor"] = EspColor,
				["AutoFarmType"] = AutoFarmType,
				["EspColloedsda"] = EspColloedsda,
				["SpeedTween"] = SpeedTween,
				["AutoFarmTeleDelay"] = AutoFarmTeleDelay,
				["AntiAfk"] = AntiAfk,
			})
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Save Setting"
				})
			end
		}
	})

	local TweenService = game:GetService("TweenService")
	local RunService = game:GetService("RunService")
	local EspTemps = {}

	local function Create(Object,Properties)
		local NewObject = Instance.new(Object)
		for PropertieName, Propertie in pairs(Properties) do
			if type(PropertieName) == 'number' then
				Propertie.Parent = NewObject
			else
				NewObject[PropertieName] = Propertie
			end
		end
		return NewObject
	end

	local function AntiAfkMain()
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
			if AntiAfk then
				vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
				wait(1)
				vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			end
		end)
	end

	local function surf(parent,part,face,color)
		local gui = Instance.new("SurfaceGui")
		gui.Name = "NightVisionSurface"
		gui.LightInfluence = 1
		gui.AlwaysOnTop = true
		gui.Face = face

		local fr = Instance.new("Frame")
		fr.Size = UDim2.new(1,0,1,0)
		fr.BorderSizePixel = 0
		fr.BackgroundColor3 = color
		fr.BackgroundTransparency = 0.5
		fr.Parent = gui

		gui.Adornee = part
		gui.Parent = parent

		return {Main=gui,Frame=fr}
	end

	spawn(function()
		AntiAfkMain()
	end)

	spawn(function()
		for i,marker in pairs(Markers) do
			marker = marker["Color 1"]
			local folderesp = Create("Folder",{
				Name = "EspStickmenHairHub",
				Parent = marker
			})
			local gusi = Create("BillboardGui",{
				Name = "TextBill",
				LightInfluence = 1,
				AlwaysOnTop = true,
				StudsOffset = Vector3.new(0,3,0),
				Size = UDim2.new(0,200,0,50),
				MaxDistance = math.huge,
				Adornee = marker,
				Parent = folderesp
			})
			marker = marker.Parent
			local text = Create("TextLabel",{
				Text = marker.Name,
				BorderSizePixel = 0,
				TextColor3 = EspColor,
				BackgroundTransparency = 1,
				TextScaled = true,
				TextStrokeTransparency = 0,
				Size = UDim2.new(1,0,1,0),
				Parent = gusi
			})
			table.insert(EspTemps,folderesp)
			spawn(function()
				local surf1 = surf(folderesp,marker,"Top",EspColor)
				local surf2 = surf(folderesp,marker,"Bottom",EspColor) 
				local surf3 = surf(folderesp,marker,"Right",EspColor) 
				local surf4 = surf(folderesp,marker,"Left",EspColor) 
				local surf5 = surf(folderesp,marker,"Front",EspColor)
				local surf6 = surf(folderesp,marker,"Back",EspColor)
				while wait() do
					surf1.Frame.BackgroundColor3 = EspColor
					surf2.Frame.BackgroundColor3 = EspColor
					surf3.Frame.BackgroundColor3 = EspColor
					surf4.Frame.BackgroundColor3 = EspColor
					surf5.Frame.BackgroundColor3 = EspColor
					surf6.Frame.BackgroundColor3 = EspColor
					text.TextColor3 = EspColor
					if Esp and game.Players.LocalPlayer.PlayerGui:FindFirstChild("Menu") then
						local MainGui = game.Players.LocalPlayer.PlayerGui.Menu.AllMarkers.Markers
						if MainGui:FindFirstChild(marker.Name) then
							if MainGui:FindFirstChild(marker.Name).BackgroundColor3 ~= Color3.fromRGB(0, 255, 0) then
								if EspColloedsda then
									surf1.Main.Enabled = false
									surf2.Main.Enabled = false
									surf3.Main.Enabled = false
									surf4.Main.Enabled = false
									surf5.Main.Enabled = false
									surf6.Main.Enabled = false
									gusi.Enabled = false
								else
									surf1.Main.Enabled = true
									surf2.Main.Enabled = true
									surf3.Main.Enabled = true
									surf4.Main.Enabled = true
									surf5.Main.Enabled = true
									surf6.Main.Enabled = true
									gusi.Enabled = true
								end
							else
								surf1.Main.Enabled = true
								surf2.Main.Enabled = true
								surf3.Main.Enabled = true
								surf4.Main.Enabled = true
								surf5.Main.Enabled = true
								surf6.Main.Enabled = true
								gusi.Enabled = true
							end
						end
					else
						surf1.Main.Enabled = false
						surf2.Main.Enabled = false
						surf3.Main.Enabled = false
						surf4.Main.Enabled = false
						surf5.Main.Enabled = false
						surf6.Main.Enabled = false
						gusi.Enabled = false
					end
				end
			end)
		end
	end)

	local TweenAutoFram = nil
	spawn(function()
		while RunService.Heartbeat:Wait() do
			if Farm then
				if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.PlayerGui:FindFirstChild("Menu") then
					for i,marker in pairs(Markers) do
						local MainGui = game.Players.LocalPlayer.PlayerGui.Menu.AllMarkers.Markers
						if MainGui:FindFirstChild(marker.Name) then
							if not Farm then
								break
							end
							if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
								break
							end
							if MainGui:FindFirstChild(marker.Name).BackgroundColor3 ~= Color3.fromRGB(0, 255, 0) then
								marker = marker["Color 1"]
								marker.CanCollide = false
								if AutoFarmType == "" then
									warn("Please chose auto farm type!")
									break
								end
								if AutoFarmType == "Tween" then
									if TweenAutoFram then
										TweenAutoFram:Cancel()
									end
									local HrpPos = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position
									TweenAutoFram = TweenService:Create(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"),TweenInfo.new((marker.Position-HrpPos).Magnitude/SpeedTween),{CFrame = CFrame.new(marker.Position)}):Play()
									local marker2 = marker.Parent
									repeat RunService.Heartbeat:Wait() if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then break end if not Farm then break end until (marker.Position-HrpPos).Magnitude <= 5
									repeat RunService.Heartbeat:Wait() game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(marker.Position+Vector3.new(0,math.random(-100,100)/100)) if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then break end if not Farm then break end until MainGui:FindFirstChild(marker2.Name).BackgroundColor3 == Color3.fromRGB(0, 255, 0)
								elseif AutoFarmType == "Teleport" then
									wait(AutoFarmTeleDelay)
									game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(marker.Position)
									local marker2 = marker.Parent
									repeat RunService.Heartbeat:Wait() game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(marker.Position+Vector3.new(0,math.random(-100,100)/100)) if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then break end if not Farm then break end until MainGui:FindFirstChild(marker2.Name).BackgroundColor3 == Color3.fromRGB(0, 255, 0)
								end
							end
						end
					end
				end
			else
				if TweenAutoFram then
					TweenAutoFram:Cancel()
				end
			end
		end
	end)
elseif PlaceId == 662417684 then
	local X = Material.Load({
		Title = "BaconHub",
		Style = 3,
		SizeX = 500,
		SizeY = 350,
		Theme = "Light",
		ColorOverrides = {
			MainFrame = Color3.fromRGB(235, 235, 235)
		}
	})

	local Home = X.New({
		Title = "Home",
		ImageID = 9310172214,
	})

	local Misc = X.New({
		Title = "Misc",
		ImageID = 8099777545,
	})

	local Setting = X.New({
		Title = "Setting",
		ImageID = 6942070576,
	})

	local RunService = game:GetService("RunService")
	local TweenService = game:GetService("TweenService")
	local GetManyTool = 1
	local AutoGetVoid = false
	local AutoGetRainbowLuckyBlock = false
	local AutoGetGalaxyLuckyBlock = false
	local Fly = false
	local Flying = false

	pcall(function()
		local DataHomeLoaded = LoadData("Home")
		local DataSettingLoaded = LoadData("Setting")
		local DataMicsLoaded = LoadData("Misc")
		if DataHomeLoaded[tostring(PlaceId)] then
			AutoGetVoid = DataSettingLoaded[tostring(PlaceId)].AutoGetVoid
			AutoGetRainbowLuckyBlock = DataSettingLoaded[tostring(PlaceId)].AutoGetRainbowLuckyBlock
			AutoGetGalaxyLuckyBlock = DataSettingLoaded[tostring(PlaceId)].AutoGetGalaxyLuckyBlock
		end
		if DataMicsLoaded[tostring(PlaceId)] then
			Fly = DataSettingLoaded[tostring(PlaceId)].Fly
		end
		if DataSettingLoaded[tostring(PlaceId)] then
			GetManyTool = DataSettingLoaded[tostring(PlaceId)].GetManyTool
		end
		print("succes!")
	end)

	local LuckyBlock = Home.Button({
		Text = "Get Lucky Block Tools",
		Callback = function()
			for i = 1,GetManyTool do
				game.ReplicatedStorage.SpawnLuckyBlock:FireServer() 
			end
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Get The Tools From Lucky Block"
				})
			end
		}
	})

	local LuckyBlock2 = Home.Button({
		Text = "Get Super Lucky Block Tools",
		Callback = function()
			for i = 1,GetManyTool do
				game.ReplicatedStorage.SpawnSuperBlock:FireServer() 
			end
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Get The Tools From Lucky Block"
				})
			end
		}
	})

	local LuckyBlock3 = Home.Button({
		Text = "Get Diamond Lucky Block Tools",
		Callback = function()
			for i = 1,GetManyTool do
				game.ReplicatedStorage.SpawnDiamondBlock:FireServer() 
			end
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Get The Tools From Lucky Block"
				})
			end
		}
	})

	local LuckyBlock4 = Home.Button({
		Text = "Get Rainbow Lucky Block Tools",
		Callback = function()
			for i = 1,GetManyTool do
				game.ReplicatedStorage.SpawnRainbowBlock:FireServer() 
			end
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Get The Tools From Lucky Block"
				})
			end
		}
	})

	local LuckyBlock5 = Home.Button({
		Text = "Get Galaxy Lucky Block Tools",
		Callback = function()
			for i = 1,GetManyTool do
				game.ReplicatedStorage.SpawnGalaxyBlock:FireServer() 
			end
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Get The Tools From Lucky Block"
				})
			end
		}
	})

	local FarmBt = Home.Toggle({
		Text = "Auto Get Void Lucky Block",
		Callback = function(Value)
			AutoGetVoid = Value
			print("AutoGetVoid: ".. tostring(AutoGetVoid))
		end,
		Enabled = AutoGetVoid
	})
	local FarmBt2 = Home.Toggle({
		Text = "Auto Get Rainbow Lucky Block",
		Callback = function(Value)
			AutoGetRainbowLuckyBlock = Value
			print("AutoGetRainbowLuckyBlock: ".. tostring(AutoGetRainbowLuckyBlock))
		end,
		Enabled = AutoGetRainbowLuckyBlock
	})
	local FarmBt3 = Home.Toggle({
		Text = "Auto Get Galaxy Lucky Block",
		Callback = function(Value)
			AutoGetGalaxyLuckyBlock = Value
			print("AutoGetGalaxyLuckyBlock: ".. tostring(AutoGetGalaxyLuckyBlock))
		end,
		Enabled = AutoGetGalaxyLuckyBlock
	})

	local SaveBt = Home.Button({
		Text = "Save Home",
		Callback = function()
			SaveData("Home",{
				["AutoGetVoid"] = AutoGetVoid,
				["AutoGetGalaxyLuckyBlock"] = AutoGetGalaxyLuckyBlock,
				["AutoGetRainbowLuckyBlock"] = AutoGetRainbowLuckyBlock,
			})
			print("succes!")             
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Save Home"
				})
			end
		}
	})

	local flymaxspeed = 16/16
	local lp = game:GetService('Players').LocalPlayer
	local mouse = lp:GetMouse()
	function fly(char)
		local canstop = true
		local ctrl = {w=0,a=0,s=0,d=0}
		local lastctrl = {w=0,a=0,s=0,d=0}
		local speed = 0
		flyscript = game:GetService('RunService').Stepped:Connect(function()
			if ctrl.w == 1 or ctrl.a == 1 or ctrl.s == 1 or ctrl.d == 1 then
				speed+=1
				if speed > flymaxspeed then
					speed = flymaxspeed
				end
				wait()
			end
			if not ctrl.w == 1 and not ctrl.a == 1 and not ctrl.s == 1 and not ctrl.d == 1 then
				speed-=1
				if speed < 1 then
					speed = .1
				end
				wait()
			end
			for i,c in pairs(char:GetChildren()) do
				if c:IsA('BasePart') then
					c.Velocity = Vector3.new(0,0,0)
				end
			end
			char:SetPrimaryPartCFrame(CFrame.new(((workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.w-ctrl.s)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.d-ctrl.a,(ctrl.w-ctrl.s)*.2,0).Position) - workspace.CurrentCamera.CoordinateFrame.p))*speed)+char.PrimaryPart.Position)
			char:SetPrimaryPartCFrame(workspace.CurrentCamera.CFrame.Rotation+char.PrimaryPart.Position)
			lastctrl = {w=ctrl.w,a=ctrl.a,s=ctrl.s,d=ctrl.d}
		end)
		keydown = mouse.KeyDown:Connect(function(key)
			if key == 'w' then
				ctrl.w=1
			end
			if key == 'a' then
				ctrl.a=1
			end
			if key == 's' then
				ctrl.s=1
			end
			if key == 'd' then
				ctrl.d=1
			end
		end)
		keyup = mouse.KeyUp:Connect(function(key)
			if key == 'w' then
				ctrl.w=0
			end
			if key == 'a' then
				ctrl.a=0
			end
			if key == 's' then
				ctrl.s=0
			end
			if key == 'd' then
				ctrl.d=0
			end
		end)
	end

	--E to fly
	mouse.KeyDown:Connect(function(key)
		if key == 'e' then
			Flying = not Flying
			wait()
			if Flying and Fly then
				fly(game.Players.LocalPlayer.Character)
			else
				flyscript:Disconnect()
				keydown:Disconnect()
				keyup:Disconnect()
			end
		end
	end)

	local FlyBt = Home.Toggle({
		Text = "Fly [E]",
		Callback = function(Value)
			Fly = Value
		end,
		Enabled = Fly
	})

	local ClickTp = Misc.Button({
		Text = "Click TP",
		Callback = function()
			local mouse = game.Players.LocalPlayer:GetMouse()
			local tool = Instance.new("Tool")
			tool.RequiresHandle = false
			tool.Name = "Click Teleport"
			tool.Activated:connect(function()
				local pos = mouse.Hit+Vector3.new(0,2.5,0)
				pos = CFrame.new(pos.X,pos.Y,pos.Z)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
			end)
			tool.Parent = game.Players.LocalPlayer.Backpack
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "It will give you a tool name 'Click TP' if you equip it and click you will tp to your mouse hit"
				})
			end
		}
	})

	local SaveBt = Setting.Button({
		Text = "Save Misc",
		Callback = function()
			SaveData("Misc",{
				["Fly"] = Fly,
			})
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Save Misc"
				})
			end
		}
	})

	local GetManyToolSilder = Setting.Slider({
		Text = "Many Tools You Get",
		Callback = function(Value)
			GetManyTool = Value
		end,
		Min = 1,
		Max = 100,
		Def = GetManyTool
	})

	local SaveBt = Setting.Button({
		Text = "Save Setting",
		Callback = function()
			SaveData("Setting",{
				["GetManyTool"] = GetManyTool,
			})
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Save Setting"
				})
			end
		}
	})

	spawn(function()
		while RunService.Heartbeat:Wait() do
			if AutoGetVoid then
				if workspace.CenterBlocks.Givers.VoidGiver.ColoredParts.TouchMe.Color == Color3.fromRGB(4, 175, 236) then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.CenterBlocks.Givers.VoidGiver.ColoredParts.TouchMe.CFrame
					repeat wait() until workspace.CenterBlocks.Givers.VoidGiver.ColoredParts.TouchMe.Color ~= Color3.fromRGB(4, 175, 236)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.tp.SpawnWalls.CFrame
				end
			end
			if AutoGetGalaxyLuckyBlock then
				local galaxy = {}
				for i,v in pairs(workspace.CenterBlocks.Givers:GetChildren()) do
					if string.find(v.Name,"BlockGiverGalaxy") then
						table.insert(galaxy,v)
					end
				end
				for i,v in pairs(galaxy) do
					if v.ColoredParts.TouchMe.Color == Color3.fromRGB(4, 175, 236) then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.ColoredParts.TouchMe.CFrame
						repeat wait() until v.ColoredParts.TouchMe.Color ~= Color3.fromRGB(4, 175, 236)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.tp.SpawnWalls.CFrame
					end
				end
			end
			if AutoGetRainbowLuckyBlock then
				local rainbow = {}
				for i,v in pairs(workspace.CenterBlocks.Givers:GetChildren()) do
					if string.find(v.Name,"BlockGiverRainbow") then
						table.insert(rainbow,v)
					end
				end
				for i,v in pairs(rainbow) do
					if v.ColoredParts.TouchMe.Color == Color3.fromRGB(4, 175, 236) then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.ColoredParts.TouchMe.CFrame
						repeat wait() until v.ColoredParts.TouchMe.Color ~= Color3.fromRGB(4, 175, 236)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.tp.SpawnWalls.CFrame
					end
				end
			end
		end
	end)
elseif PlaceId == 1215581239 then
	local X = Material.Load({
		Title = "BaconHub",
		Style = 3,
		SizeX = 500,
		SizeY = 350,
		Theme = "Light",
		ColorOverrides = {
			MainFrame = Color3.fromRGB(235, 235, 235)
		}
	})

	local Home = X.New({
		Title = "Home",
		ImageID = 9310172214,
	})

	local Misc = X.New({
		Title = "Misc",
		ImageID = 8099777545,
	})

	local Setting = X.New({
		Title = "Setting",
		ImageID = 6942070576,
	})

	local InfiniteJump = false
	local Fly = false
	local Flying = false

	pcall(function()
		local DataHomeLoaded = LoadData("Home")
		local DataSettingLoaded = LoadData("Setting")
		local DataMicsLoaded = LoadData("Misc")
		if DataHomeLoaded[tostring(PlaceId)] then

		end
		if DataMicsLoaded[tostring(PlaceId)] then
			InfiniteJump = DataMicsLoaded[tostring(PlaceId)].InfiniteJump
			Fly = DataMicsLoaded[tostring(PlaceId)].Fly
		end
		if DataSettingLoaded[tostring(PlaceId)] then

		end
		print("succes!")
	end)

	local MoveTo = Home.Button({
		Text = "Teleport To Red",
		Callback = function()
			for i = 1,7 do
				if workspace.Doomspires.RED:FindFirstChild("Floor"..i):FindFirstChild("FloorBrick") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Doomspires.RED["Floor"..i].FloorBrick.CFrame * CFrame.new(0,3,0)
					break
				end
			end
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Teleport Team Domsprite"
				})
			end
		}
	})

	local MoveTo2 = Home.Button({
		Text = "Teleport To Yellow",
		Callback = function()
			for i = 1,7 do
				if workspace.Doomspires.YELLOW:FindFirstChild("Floor"..i):FindFirstChild("FloorBrick") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Doomspires.YELLOW["Floor"..i].FloorBrick.CFrame * CFrame.new(0,3,0)
					break
				end
			end
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Teleport Team Domsprite"
				})
			end
		}
	})

	local MoveTo3 = Home.Button({
		Text = "Teleport To Green",
		Callback = function()
			for i = 1,7 do
				if workspace.Doomspires.GREEN:FindFirstChild("Floor"..i):FindFirstChild("FloorBrick") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Doomspires.GREEN["Floor"..i].FloorBrick.CFrame * CFrame.new(0,3,0)
					break
				end
			end
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Teleport Team Domsprite"
				})
			end
		}
	})

	local MoveTo4 = Home.Button({
		Text = "Teleport To Blue",
		Callback = function()
			for i = 1,7 do
				if workspace.Doomspires.BLUE["Floor"..i]:FindFirstChild("FloorBrick") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Doomspires.BLUE["Floor"..i].FloorBrick.CFrame * CFrame.new(0,3,0)
					break
				end
			end
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Teleport Team Domsprite"
				})
			end
		}
	})

	local FarmBt = Misc.Toggle({
		Text = "Infinite Jump",
		Callback = function(Value)
			InfiniteJump = Value
			print("InfiniteJump: ".. tostring(InfiniteJump))
		end,
		Enabled = InfiniteJump
	})

	local flymaxspeed = 16/16
	local lp = game:GetService('Players').LocalPlayer
	local mouse = lp:GetMouse()
	function fly(char)
		local canstop = true
		local ctrl = {w=0,a=0,s=0,d=0}
		local lastctrl = {w=0,a=0,s=0,d=0}
		local speed = 0
		flyscript = game:GetService('RunService').Stepped:Connect(function()
			if ctrl.w == 1 or ctrl.a == 1 or ctrl.s == 1 or ctrl.d == 1 then
				speed+=1
				if speed > flymaxspeed then
					speed = flymaxspeed
				end
				wait()
			end
			if not ctrl.w == 1 and not ctrl.a == 1 and not ctrl.s == 1 and not ctrl.d == 1 then
				speed-=1
				if speed < 1 then
					speed = .1
				end
				wait()
			end
			for i,c in pairs(char:GetChildren()) do
				if c:IsA('BasePart') then
					c.Velocity = Vector3.new(0,0,0)
				end
			end
			char:SetPrimaryPartCFrame(CFrame.new(((workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.w-ctrl.s)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.d-ctrl.a,(ctrl.w-ctrl.s)*.2,0).Position) - workspace.CurrentCamera.CoordinateFrame.p))*speed)+char.PrimaryPart.Position)
			char:SetPrimaryPartCFrame(workspace.CurrentCamera.CFrame.Rotation+char.PrimaryPart.Position)
			lastctrl = {w=ctrl.w,a=ctrl.a,s=ctrl.s,d=ctrl.d}
		end)
		keydown = mouse.KeyDown:Connect(function(key)
			if key == 'w' then
				ctrl.w=1
			end
			if key == 'a' then
				ctrl.a=1
			end
			if key == 's' then
				ctrl.s=1
			end
			if key == 'd' then
				ctrl.d=1
			end
		end)
		keyup = mouse.KeyUp:Connect(function(key)
			if key == 'w' then
				ctrl.w=0
			end
			if key == 'a' then
				ctrl.a=0
			end
			if key == 's' then
				ctrl.s=0
			end
			if key == 'd' then
				ctrl.d=0
			end
		end)
	end

	--E to fly
	mouse.KeyDown:Connect(function(key)
		if key == 'e' then
			Flying = not Flying
			wait()
			if Flying and Fly then
				fly(game.Players.LocalPlayer.Character)
			else
				flyscript:Disconnect()
				keydown:Disconnect()
				keyup:Disconnect()
			end
		end
	end)

	local FlyBt = Home.Toggle({
		Text = "Fly [E]",
		Callback = function(Value)
			Fly = Value
		end,
		Enabled = Fly
	})

	local ClickTp = Misc.Button({
		Text = "Click TP",
		Callback = function()
			local mouse = game.Players.LocalPlayer:GetMouse()
			local tool = Instance.new("Tool")
			tool.RequiresHandle = false
			tool.Name = "Click Teleport"
			tool.Activated:connect(function()
				local pos = mouse.Hit+Vector3.new(0,2.5,0)
				pos = CFrame.new(pos.X,pos.Y,pos.Z)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
			end)
			tool.Parent = game.Players.LocalPlayer.Backpack
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "It will give you a tool name 'Click TP' if you equip it and click you will tp to your mouse hit"
				})
			end
		}
	})

	local SaveBt = Misc.Button({
		Text = "Save Misc",
		Callback = function()
			SaveData("Misc",{
				["InfiniteJump"] = InfiniteJump,
				["Fly"] = Fly,
			})
			print("succes!")             
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Save Misc"
				})
			end
		}
	})

	local Db = true
	game:GetService("UserInputService").JumpRequest:connect(function()
		if InfiniteJump and Db then
			Db = false
			game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
			wait(0.1)
			Db = true
		end
	end)
elseif PlaceId == 35397735 then
	loadstring(game:HttpGet("https://pastebin.com/raw/D3qA4Qib"))()
elseif PlaceId == 537413528 then
	local X = Material.Load({
		Title = "BaconHub",
		Style = 3,
		SizeX = 500,
		SizeY = 350,
		Theme = "Light",
		ColorOverrides = {
			MainFrame = Color3.fromRGB(235, 235, 235)
		}
	})

	local Home = X.New({
		Title = "Home",
		ImageID = 9310172214,
	})

	local Misc = X.New({
		Title = "Misc",
		ImageID = 8099777545,
	})

	local Setting = X.New({
		Title = "Setting",
		ImageID = 6942070576,
	})

	local Stages = game:GetService("Workspace").BoatStages.NormalStages
	local client = game:GetService("Players").LocalPlayer
	local RunService = game:GetService("RunService")
	local VirtualInputManager = game:GetService("VirtualInputManager")
	local VirtualUser= game:GetService("VirtualUser")

	local ChangeCharacter, Gold = workspace.ChangeCharacter, workspace.ClaimRiverResultsGold

	local SecondToNextStage = 2

	local Busy = false
	local Busy2 = false
	local GoldFarm = false
	local Autocollectgold = false
	local AtAfk = true

	local succes,why = pcall(function()
		local DataHomeLoaded = LoadData("Home")
		local DataSettingLoaded = LoadData("Setting")
		local DataMicsLoaded = LoadData("Misc")
		if DataHomeLoaded[tostring(PlaceId)] then
			Busy = DataSettingLoaded[tostring(PlaceId)]["Busy"] or false
			Busy2 = DataSettingLoaded[tostring(PlaceId)]["Busy2"] or false
		end
		if DataMicsLoaded[tostring(PlaceId)] then
			AtAfk = DataSettingLoaded[tostring(PlaceId)].AtAfk
		end
		if DataSettingLoaded[tostring(PlaceId)] then
			GoldFarm = DataSettingLoaded[tostring(PlaceId)].GoldFarm
			Autocollectgold = DataSettingLoaded[tostring(PlaceId)].Autocollectgold
			SecondToNextStage = DataSettingLoaded[tostring(PlaceId)].SecondToNextStage
		end
	end)

	if not succes then
		warn(why)
	end

	local fram = Home.Toggle({
		Text = "Auto Farm",
		Callback = function(Value)
			Busy = Value
			print("Busy: ".. tostring(Busy))
		end,
		Enabled = Busy
	})
	local fram2 = Home.Toggle({
		Text = "Auto Farm V2",
		Callback = function(Value)
			Busy2 = Value
			print("Busy2: ".. tostring(Busy2))
		end,
		Enabled = Busy2
	})

	local sussybt = Misc.Button({
		Text = "HairBaconGamming Game Link",
		Callback = function()
			setclipboard("https://web.roblox.com/games/8535692572/Brah-story")
			X.Banner({
				Text = "Copied Link!"
			})
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Please support HairBaconGamming game! :D"
				})
			end
		}
	})

	local SaveBt = Setting.Button({
		Text = "Save Home",
		Callback = function()
			SaveData("Home",{
				["Busy"] = Busy,
				["Busy2"] = Busy2
			})
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Save Home"
				})
			end
		}
	})

	local chartypebt = Misc.Dropdown({
		Text = "Characters",
		Callback = function(Value)
			ChangeCharacter:FireServer(Value)
		end,
		Options = {
			"Penguin",
			"Fox",
			"Chicken",
		},
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Change a charater."
				})
			end
		}
	})

	local AtAfkbt = Misc.Toggle({
		Text = "Anti Afk",
		Callback = function(Value)
			AtAfk = Value
			print("AtAfk: ".. tostring(AtAfk))
		end,
		Enabled = AtAfk
	})

	local sussybt = Misc.Button({
		Text = "Image Loader",
		Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/StenDirt/Trash-Game/main/Script2.lua"))()
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "load the image loader"
				})
			end
		}
	})

	local loadbt = Misc.Button({
		Text = "Auto Build ",
		Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/StenDirt/Trash-Game/main/Script.lua"))()
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "load the auto build"
				})
			end
		}
	})

	local loadedfly = false
	function flysystem()
		if not loadedfly then
			loadedfly = true
			repeat wait() 
			until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
			local mouse = game.Players.LocalPlayer:GetMouse() 
			repeat wait() until mouse
			local plr = game.Players.LocalPlayer 
			local torso = plr.Character.Head 
			local flying = false
			local deb = true 
			local ctrl = {f = 0, b = 0, l = 0, r = 0} 
			local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
			local maxspeed = 400 
			local speed = 5000 

			local function Fly() 
				local bg = Instance.new("BodyGyro", torso) 
				bg.P = 9e4 
				bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
				bg.cframe = torso.CFrame 
				local bv = Instance.new("BodyVelocity", torso) 
				bv.velocity = Vector3.new(0,0.1,0) 
				bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
				repeat wait() 
					plr.Character.Humanoid.PlatformStand = true 
					if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
						speed = speed+.5+(speed/maxspeed) 
						if speed > maxspeed then 
							speed = maxspeed 
						end 
					elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
						speed = speed-1 
						if speed < 0 then 
							speed = 0 
						end 
					end 
					if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
						bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
						lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
					elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
						bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
					else 
						bv.velocity = Vector3.new(0,0.1,0) 
					end 
					bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
				until not flying 
				ctrl = {f = 0, b = 0, l = 0, r = 0} 
				lastctrl = {f = 0, b = 0, l = 0, r = 0} 
				speed = 0 
				bg:Destroy() 
				bv:Destroy() 
				plr.Character.Humanoid.PlatformStand = false 
			end 
			mouse.KeyDown:connect(function(key) 
				if key:lower() == "e" then 
					if flying then flying = false 
					else 
						flying = true 
						Fly() 
					end 
				elseif key:lower() == "w" then 
					ctrl.f = 1 
				elseif key:lower() == "s" then 
					ctrl.b = -1 
				elseif key:lower() == "a" then 
					ctrl.l = -1 
				elseif key:lower() == "d" then 
					ctrl.r = 1 
				end 
			end) 
			mouse.KeyUp:connect(function(key) 
				if key:lower() == "w" then 
					ctrl.f = 0 
				elseif key:lower() == "s" then 
					ctrl.b = 0 
				elseif key:lower() == "a" then 
					ctrl.l = 0 
				elseif key:lower() == "d" then 
					ctrl.r = 0 
				end 
			end)
			Fly()
		end
	end

	local loadbt = Misc.Button({
		Text = "Fly",
		Callback = function()
			flysystem()
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "FLY FLY FLY"
				})
			end
		}
	})

	local SaveBt = Setting.Button({
		Text = "Save Misc",
		Callback = function()
			SaveData("Misc",{
				["AtAfk"] = AtAfk,
			})
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Save Misc"
				})
			end
		}
	})

	local SpeedSlider = Setting.Slider({
		Text = "Second To Next Stage",
		Callback = function(Value)
			SecondToNextStage = Value
		end,
		Min = 0,
		Max = 10,
		Def = SecondToNextStage
	})

	local SaveBt = Setting.Button({
		Text = "Save Setting",
		Callback = function()
			SaveData("Setting",{
				["GoldFarm"] = GoldFarm,
				["Autocollectgold"] = Autocollectgold,
				["SecondToNextStage"] = SecondToNextStage,
			})
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Save Setting"
				})
			end
		}
	})

	local goldfarm = Setting.Toggle({
		Text = "Gold Block Farm",
		Callback = function(Value)
			GoldFarm = Value
			print("GoldFarm: ".. tostring(GoldFarm))
		end,
		Enabled = GoldFarm
	})

	local autocollect = Setting.Toggle({
		Text = "Auto Collect Gold [Turn off gold block farm]",
		Callback = function(Value)
			Autocollectgold = Value
			print("Autocollectgold: ".. tostring(Autocollectgold))
		end,
		Enabled = Autocollectgold
	})

	function Float()
		while task.wait() do
			if Busy or Busy2 then
				spawn(function()
					pcall(function()
						client.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
					end)
				end)
			end
		end
	end

	function AntiAfk()
		client.Idled:connect(function()
			if AtAfk then
				VirtualUser:CaptureController()
				VirtualUser:ClickButton2(Vector2.new())
			end
		end)
	end

	function Farm()
		while wait() do
			if Busy then
				for i = 1, 10 do 
					wait(SecondToNextStage)
					if not GoldFarm then
						if Autocollectgold then
							workspace.ClaimRiverResultsGold:FireServer()
						end
					end
					spawn(function()
						client.Character.HumanoidRootPart.CFrame = Stages["CaveStage"..i].DarknessPart.CFrame
					end)
					if Busy == false then
						break
					end
				end
				if Busy then
					if GoldFarm then
						spawn(function()
							local sus = true
							local connect
							connect	= client.CharacterAdded:Connect(function()
								sus = false
								connect:Disconnect()
							end)
							while wait() and sus do
								for i = 1, 10 do 
									wait(SecondToNextStage)
									spawn(function()
										client.Character.HumanoidRootPart.CFrame = Stages["CaveStage"..10-i].DarknessPart.CFrame
									end)
									if sus == false then
										break
									end
								end
								for i = 1, 10 do 
									wait(SecondToNextStage)
									spawn(function()
										client.Character.HumanoidRootPart.CFrame = Stages["CaveStage"..i].DarknessPart.CFrame
									end)
									if sus == false then
										break
									end
								end
							end
						end)
						spawn(function()
							client.Character.HumanoidRootPart.CFrame = Stages["TheEnd"].GoldenChest.Trigger.CFrame
						end)
						client.CharacterAdded:Wait()
						wait(SecondToNextStage)
						spawn(function()
							client.PlayerGui.RiverResultsGui.Enabled = false
						end)
						workspace.ClaimRiverResultsGold:FireServer()
					else
						client:LoadCharacter()
					end
				else
					workspace.ClaimRiverResultsGold:FireServer()
					if client.Character:FindFirstChild("Humanoid") then
						client.Character:FindFirstChild("Humanoid").Health = 0
					end
				end
			end
		end
	end

	function FarmV2()
		while task.wait() do
			if Busy2 then
				print("Start")
				client.Character.HumanoidRootPart.CFrame *= CFrame.new(0,100,0)
				for i = 1, 10 do 
					repeat task.wait() until client.Character and client.Character:FindFirstChild("HumanoidRootPart")
					local a = game:GetService("TweenService"):Create(client.Character.HumanoidRootPart,TweenInfo.new((Stages["CaveStage"..i].DarknessPart.Position-client.Character.HumanoidRootPart.Position).Magnitude/300,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),{CFrame = Stages["CaveStage"..i].DarknessPart.CFrame})
					a:Play()
					a.Completed:Wait()
					if client.Character:FindFirstChild("Humanoid") and client.Character.Humanoid.Health == 0 then
						client.CharacterAdded:Wait()
						repeat task.wait() until client.Character and client.Character:FindFirstChild("HumanoidRootPart")
						spawn(function()
							client.PlayerGui.RiverResultsGui.Enabled = false
						end)
						workspace.ClaimRiverResultsGold:FireServer()
						client.Character.HumanoidRootPart.CFrame = Stages["CaveStage"..i].DarknessPart.CFrame
					end
					spawn(function()
						firetouchinterest(client.Character.HumanoidRootPart, Stages["CaveStage"..i].DarknessPart, 0)
						firetouchinterest(client.Character.HumanoidRootPart, Stages["CaveStage"..i].DarknessPart, 1)
					end)
					if Busy2 == false then
						break
					end
				end
				if Busy2 then
					spawn(function()
						client.Character.HumanoidRootPart.CFrame = Stages["TheEnd"].GoldenChest.Trigger.CFrame
						spawn(function()
							firetouchinterest(client.Character.HumanoidRootPart, Stages["TheEnd"].GoldenChest.Trigger, 0)
							firetouchinterest(client.Character.HumanoidRootPart, Stages["TheEnd"].GoldenChest.Trigger, 1)
						end)
					end)
					repeat task.wait() until client.Character and client.Character:FindFirstChild("HumanoidRootPart")
					client.Character.HumanoidRootPart.CFrame = Stages["CaveStage1"].DarknessPart.CFrame
					for i = 0, 9 do 
						repeat task.wait() until client.Character and client.Character:FindFirstChild("HumanoidRootPart")
						if client.OtherData["Stage"..i].Value == "" then
							client.Character.HumanoidRootPart.CFrame = Stages["CaveStage"..i+1].DarknessPart.CFrame
							break
						end
					end
					for i = 0, 9 do 
						repeat task.wait() until client.Character and client.Character:FindFirstChild("HumanoidRootPart")
						if client.OtherData["Stage"..i].Value == "" then
							local a = game:GetService("TweenService"):Create(client.Character.HumanoidRootPart,TweenInfo.new((Stages["CaveStage"..i+1].DarknessPart.Position-client.Character.HumanoidRootPart.Position).Magnitude/500,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),{CFrame = Stages["CaveStage"..i+1].DarknessPart.CFrame})
							a:Play()
							a.Completed:Wait()
							if client.Character:FindFirstChild("Humanoid") and client.Character.Humanoid.Health == 0 then
								client.CharacterAdded:Wait()
								repeat task.wait() until client.Character and client.Character:FindFirstChild("HumanoidRootPart")
								spawn(function()
									client.PlayerGui.RiverResultsGui.Enabled = false
								end)
								workspace.ClaimRiverResultsGold:FireServer()
								client.Character.HumanoidRootPart.CFrame = Stages["CaveStage"..i+1].DarknessPart.CFrame
							end
							spawn(function()
								firetouchinterest(client.Character.HumanoidRootPart, Stages["CaveStage"..i+1].DarknessPart, 0)
								firetouchinterest(client.Character.HumanoidRootPart, Stages["CaveStage"..i+1].DarknessPart, 1)
							end)
							if Busy2 == false then
								break
							end
						end
					end
					print("GET GOLD")
					local goldpls = false
					spawn(function()
						while task.wait() and goldpls == false do
							client.Character.HumanoidRootPart.CFrame = Stages["TheEnd"].GoldenChest.Trigger.CFrame
						end
					end)
					client.CharacterAdded:Wait()
					goldpls = true
					repeat task.wait() until client.Character and client.Character:FindFirstChild("HumanoidRootPart")
					spawn(function()
						client.PlayerGui.RiverResultsGui.Enabled = false
					end)
					workspace.ClaimRiverResultsGold:FireServer()
				else
					workspace.ClaimRiverResultsGold:FireServer()
					if client.Character:FindFirstChild("Humanoid") then
						client.Character:FindFirstChild("Humanoid").Health = 0
					end
				end
			end
		end
	end

	spawn(Float) spawn(Farm) spawn(AntiAfk) spawn(FarmV2)
elseif PlaceId == 6447798030 then
	local testing = true
	if testing then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua",true))()
	else
		local X = Material.Load({
			Title = "BaconHub",
			Style = 3,
			SizeX = 500,
			SizeY = 350,
			Theme = "Light",
			ColorOverrides = {
				MainFrame = Color3.fromRGB(235, 235, 235)
			}
		})

		local Home = X.New({
			Title = "Home",
			ImageID = 9310172214,
		})

		local Misc = X.New({
			Title = "Misc",
			ImageID = 8099777545,
		})

		local Setting = X.New({
			Title = "Setting",
			ImageID = 6942070576,
		})

		local AutoPlayer = false
		local vim = game:GetService("VirtualInputManager")
		local rs = game:GetService("RunService")
		local GameGUI = game.Players.LocalPlayer.PlayerGui:WaitForChild("GameUI")
		local ArrowsFRAME = GameGUI:WaitForChild("Arrows")
		local ArrowsKeybind1 = {
			[0] = Enum.KeyCode.A,
			[1] = Enum.KeyCode.S,
			[2] = Enum.KeyCode.W,
			[3] = Enum.KeyCode.D,
		}
		local ArrowsKeybind2 = {
			[0] = Enum.KeyCode.D,
			[1] = Enum.KeyCode.F,
			[2] = Enum.KeyCode.Space,
			[3] = Enum.KeyCode.J,
			[4] = Enum.KeyCode.K,
		}
		local ArrowsKeybind3 = {
			[0] = Enum.KeyCode.S,
			[1] = Enum.KeyCode.D,
			[2] = Enum.KeyCode.F,
			[3] = Enum.KeyCode.J,
			[4] = Enum.KeyCode.K,
			[5] = Enum.KeyCode.L,
		}
		local ArrowsKeybind4 = {
			[0] = Enum.KeyCode.S,
			[1] = Enum.KeyCode.D,
			[2] = Enum.KeyCode.F,
			[3] = Enum.KeyCode.Space,
			[4] = Enum.KeyCode.J,
			[5] = Enum.KeyCode.K,
			[6] = Enum.KeyCode.L,
		}
		local ArrowsKeybind5 = {
			[0] = Enum.KeyCode.A,
			[1] = Enum.KeyCode.S,
			[2] = Enum.KeyCode.D,
			[3] = Enum.KeyCode.F,
			[4] = Enum.KeyCode.J,
			[5] = Enum.KeyCode.K,
			[6] = Enum.KeyCode.L,
			[7] = Enum.KeyCode.Semicolon,
		}
		local ArrowsKeybind5 = {
			[0] = Enum.KeyCode.A,
			[1] = Enum.KeyCode.S,
			[2] = Enum.KeyCode.D,
			[3] = Enum.KeyCode.F,
			[4] = Enum.KeyCode.Space,
			[5] = Enum.KeyCode.J,
			[6] = Enum.KeyCode.K,
			[7] = Enum.KeyCode.L,
			[8] = Enum.KeyCode.Semicolon,
		}
		pcall(function()
			local DataHomeLoaded = LoadData("Home")
			local DataSettingLoaded = LoadData("Setting")
			local DataMicsLoaded = LoadData("Misc")
			if DataHomeLoaded[tostring(PlaceId)] then
				AutoPlayer = DataHomeLoaded[tostring(PlaceId)].AutoPlayer
			end
			if DataMicsLoaded[tostring(PlaceId)] then

			end
			if DataSettingLoaded[tostring(PlaceId)] then

			end
			print("succes!")
		end)

		local ButtonAutoPlayer = Home.Toggle({
			Text = "Auto Player",
			Callback = function(Value)
				AutoPlayer = Value
				print("Auto player: ".. tostring(AutoPlayer))
			end,
			Enabled = AutoPlayer
		})

		local SaveBt = Home.Button({
			Text = "Save Home",
			Callback = function()
				SaveData("Home",{
					["AutoPlayer"] = AutoPlayer,
				})
				print("succes!")
			end,
			Menu = {
				Information = function(self)
					X.Banner({
						Text = "Save Home"
					})
				end
			}
		})

		local playerinminesus = "Left"
		local Player = "Left"
		spawn(function()
			while rs.Heartbeat:Wait() do
				for i,stage in pairs(workspace.Map.Stages:GetChildren()) do
					if stage.Pads:FindFirstChild("11") and stage.Pads:FindFirstChild("21") then
						local range = (stage.Pads["11"].Position-game.Players.LocalPlayer.HumanoidRootPart.Position).Magnitude
						local range2 = (stage.Pads["21"].Position-game.Players.LocalPlayer.HumanoidRootPart.Position).Magnitude
						if range < 0.6 and game.Players.LocalPlayer.HumanoidRootPart.Anchored then
							playerinminesus = "Left"
							break
						end
						if range2 < 0.6 and game.Players.LocalPlayer.HumanoidRootPart.Anchored then
							playerinminesus = "Right"
							break
						end
					end
				end
			end
		end)
		spawn(function()
			while rs.Heartbeat:Wait() do
				if ArrowsFRAME.Visible then
					Player = 1
				else
					Player = 0
				end
			end
		end)

		function hackarrow(v,num,keke)
			while rs.Heartbeat:Wait() and v.Visible do
				if not v.Visible then
					break
				end
				if v:IsA("Frame") and v.Name == num and v.Visible then
					if v.Position.Y <= ArrowsFRAME[playerinminesus].Arrows[num].Receptor.Position.Y then
						vim:SendKeyEvent(1,Enum.KeyCode[keke],0,nil)
						vim:SendKeyEvent(0,Enum.KeyCode[keke],0,nil) 
						break
					end
				end
			end
		end

		function lol(key)
			while rs.Heartbeat:Wait() do
				local keke = key.Value
				local num = key.Name
				if AutoPlayer then
					if Player > 0 then
						if ArrowsFRAME[playerinminesus].Arrows:FindFirstChild(num) then
							for i,v in pairs(ArrowsFRAME[playerinminesus].Arrows[num]:GetChildren()) do
								if v.Name == "Note" then
									if not ArrowsFRAME.Game.Visible then
										break
									end
									local a,b = pcall(function()
										hackarrow(v,num,keke)
									end)
									if not a then
										warn(b)
									end
								end
							end
						end
					end
				end
			end
		end
	end
elseif PlaceId == 6849418972 then
	local kVars = {}
	local mainFrame = Material.Load({
		Title = "BaconHub",
		Style = 3,
		SizeX = 500,
		SizeY = 350,
		Theme = "Light",
		ColorOverrides = {
			MainFrame = Color3.fromRGB(235, 235, 235)
		}
	})

	---------------- Vars ----------------
	kVars.plrName = game.Players.LocalPlayer.Name
	local myToolTable = {}
	local eggsList = {}
	local TeleTable = {}
	TeleTable[1] = {name = "Spawn", cf = game:GetService("Workspace").Map.Spawns.SpawnLocation.CFrame}
	TeleTable[2] = {name = "Egypt", cf = CFrame.new(711, 893, -1163)}
	TeleTable[3] = {name = "Atlantis", cf = CFrame.new(720, 1837, -1182)}
	TeleTable[4] = {name = "Nature", cf = CFrame.new(760, 2683, -1173)}
	TeleTable[5] = {name = "Ninja", cf = CFrame.new(720, 3510, -1182)}
	TeleTable[6] = {name = "Candy", cf = CFrame.new(760, 4112, -1173)}
	TeleTable[7] = {name = "Tropical", cf = CFrame.new(760, 4561, -1173)}
	TeleTable[8] = {name = "Premium Island", cf = CFrame.new(-2419, 459, -1648)}
	TeleTable[9] = {name = "VIP Island", cf = CFrame.new(-2370, 459, -964)}

	---------------- Main Page ----------------
	mainPage = mainFrame.New({
		Title = "Main",
		ImageID = 9310172214,
	})

	---- Auto Swing ----
	mainPage.Toggle({
		Text = "Swing",
		Callback = function(Value)
			kVars.swingBool = Value
			if Value then swingFunc() end
		end,
		Enabled = false
	})
	function swingFunc()
		spawn(function()
			while kVars.swingBool do
				wait()
				while #myToolTable ~= 0 do rawset(myToolTable, #myToolTable, nil) end
				for i,v in pairs(game:GetService("Players").LocalPlayer.Swords:getChildren()) do
					myToolTable[i] = v
				end
				kVars.myTool = myToolTable[#myToolTable].Name
				if kVars.myTool ~= nil then
					game:GetService("ReplicatedStorage").Modules.Events.Sword:FireServer(kVars.myTool)
				end		
			end
		end)
	end

	---- Auto Sell ----
	mainPage.Toggle({
		Text = "Sell",
		Callback = function(Value)
			kVars.sellBool = Value
			if Value then sellFunc() end
		end,
		Enabled = false
	})
	function sellFunc()
		spawn(function()
			while kVars.sellBool do
				wait()
				local sellPart = game:GetService("Workspace").Sells["Sell-Island_4"].Touch
				firetouchinterest(game.Players.LocalPlayer.Character.RightFoot, sellPart, 0)
				wait(.2)
				firetouchinterest(game.Players.LocalPlayer.Character.RightFoot, sellPart, 1)
			end
		end)
	end

	---- Auto Buy Tool ----
	mainPage.Toggle({
		Text = "Buy Tool",
		Callback = function(Value)
			kVars.buySwordBool = Value
			if Value then buySwordFunc() end
		end,
		Enabled = false
	})
	function buySwordFunc()
		spawn(function()
			while kVars.buySwordBool do
				wait()
				game:GetService("ReplicatedStorage").Modules.Events.BuyItem:InvokeServer("Sword", "Sword", "BuyAll")
			end
		end)
	end

	---- Auto Buy Backback ----
	mainPage.Toggle({
		Text = "Buy Backback",
		Callback = function(Value)
			kVars.buyBackpackBool = Value
			if Value then buyBackpackFunc() end
		end,
		Enabled = false
	})
	function buyBackpackFunc()
		spawn(function()
			while kVars.buyBackpackBool do
				wait()
				game:GetService("ReplicatedStorage").Modules.Events.BuyItem:InvokeServer("Backpack", "Backpack", "BuyAll")
			end
		end)
	end

	---- Collect Coins ----
	mainPage.Toggle({
		Text = "Collect Coins",
		Callback = function(Value)
			kVars.collectCoinsBool = Value
			if kVars.claimFlagsBool == false and Value then
				collectCoinsGemsFunc()
			end
		end,
		Enabled = false
	})
	---- Collect Gems ----
	mainPage.Toggle({
		Text = "Collect Gems",
		Callback = function(Value)
			kVars.collectGemsBool = Value
			if kVars.claimFlagsBool == false and Value then
				collectCoinsGemsFunc()
			end
		end,
		Enabled = false
	})
	kVars.noClipie = false
	function collectCoinsGemsFunc()
		spawn(function()
			while kVars.collectCoinsBool or kVars.collectGemsBool do
				wait()
				if kVars.collectCoinsBool or kVars.collectGemsBool or kVars.clamFlagsBool and kVars.noClipie == false then
					kVars.noClipie = true
					for i,v in pairs(game.workspace:getChildren()) do
						if v.Name == "Part" then
							v.CanCollide = false
						end
					end
				elseif kVars.collectCoinsBool == false and kVars.collectGemsBool == false and kVars.clamFlagsBool == false and kVars.noClipie == true then
					kVars.noClipie = false
					for i,v in pairs(game.workspace:getChildren()) do
						if v.Name == "Part" then
							v.CanCollide = true
						end
					end
				end
				if kVars.collectGemsBool then 
					for i,v in pairs(game:GetService("Workspace").Coins.Locations:getChildren()) do
						if kVars.collectGemsBool == false then break end
						if v:FindFirstChild('TouchInterest') and string.match(v.Name, "Gem") then
							repeat
								wait()
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
							until string.match(v.Name, "Spawn") or kVars.collectGemsBool == false
						end
					end
					for i,v in pairs(game:GetService("Workspace").Coins.Spawned:getChildren()) do
						if kVars.collectGemsBool == false then break end
						if v:FindFirstChild('TouchInterest') and string.match(v.Name, "Gem") then
							repeat
								wait()
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
							until string.match(v.Name, "Spawn") or kVars.collectGemsBool == false
						end
					end	
				end
				if kVars.collectCoinsBool then
					for i,v in pairs(game:GetService("Workspace").Coins.Locations:getChildren()) do
						if kVars.collectCoinsBool == false then break end
						if v:FindFirstChild('TouchInterest') and string.match(v.Name, "Coin") then
							repeat
								wait()
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
							until string.match(v.Name, "Spawn") or kVars.collectCoinsBool == false
						end
					end
					for i,v in pairs(game:GetService("Workspace").Coins.Spawned:getChildren()) do
						if kVars.collectCoinsBool == false then break end
						if v:FindFirstChild('TouchInterest') and string.match(v.Name, "Coin") then
							repeat
								wait()
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
							until string.match(v.Name, "Spawn") or kVars.collectCoinsBool == false
						end
					end
				end
			end
		end)
	end

	---- claim Flags ----
	mainPage.Toggle({
		Text = "Claim Flags",
		Callback = function(Value)
			kVars.claimFlagsBool = Value
			if kVars.collectCoinsBool == false and kVars.collectGemsBool == false and value then
				clamFlagsFunc()
			end
		end,
		Enabled = false
	})
	function clamFlagsFunc()
		spawn(function()
			while kVars.claimFlagsBool do
				wait()
				for i,v in pairs(game:GetService("Workspace").Flags:getChildren()) do
					if kVars.claimFlagsBool == false then break end
					if v.Name == "Flag" and v:IsA('Model') and v.Config.Owner.Value ~= kVars.plrName then
						--local nx, ny, nz, r00, r01, r02, r10, r11, r12, r20, r21, r22 = v.Zone.Touch.CFrame:components()
						repeat
							wait()
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Zone.Touch.CFrame + CFrame.new(3,-8,0)
						until v.Config.Owner.Value == kVars.plrName or kVars.claimFlagsBool == false
						wait(5)
					end
				end
			end
		end)
	end

	---- Collect Chests ----
	mainPage.Button({
		Text = "Chests",
		Callback = function()
			local startingCFrame = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame
			for i,v in pairs(game:GetService("Workspace").CollectableChests:getChildren()) do
				if v:FindFirstChild('Touch') and game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then
					wait(.1)
					game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = v.Touch.CFrame
				end
			end
			game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = startingCFrame
		end,
		Menu = {
			Information = function(self)
				mainFrame.Banner({
					Text = ""
				})
			end
		}
	})

	---- Unlock Areas ----
	mainPage.Button({
		Text = "Unlock Areas",
		Callback = function()
			for i,v in pairs(game:GetService("Players").LocalPlayer.Zones:getChildren()) do
				v.Value = true
			end
		end,
		Menu = {
			Information = function(self)
				mainFrame.Banner({
					Text = ""
				})
			end
		}
	})

	---- Speed/Jumps Max ----
	mainPage.Button({
		Text = "Speed, Jumps Max",
		Callback = function()
			local jumps = { "Jump2", "Jump3", "Jump4", "Jump5", "Jump6", "Jump7", "Jump8", "Jump9", "Jump10" }
			local speed = { "Speed1", "Speed2", "Speed3" }
			for i,v in pairs(jumps) do
				if not game:GetService("Players").LocalPlayer.Skills:FindFirstChild(v) then
					local strValue = Instance.new("StringValue")
					strValue.Parent = game:GetService("Players").LocalPlayer.Skills
					strValue.Name = v
					strValue.Value = v
				end
			end
			for i,v in pairs(speed) do
				if not game:GetService("Players").LocalPlayer.Skills:FindFirstChild(v) then
					local strValue = Instance.new("StringValue")
					strValue.Parent = game:GetService("Players").LocalPlayer.Skills
					strValue.Name = v
					strValue.Value = v
				end
			end
		end,
		Menu = {
			Information = function(self)
				mainFrame.Banner({
					Text = "This will max skills"
				})
			end
		}
	})

	---------------- Eggs Page ----------------
	---- Set Eggs Page ----

	local eggsPage = mainFrame.New({
		Title = "Eggs",
		ImageID = 8099777545,
	})

	---- Selection Egg ----
	for i,v in pairs(game:GetService("ReplicatedStorage").Extra.Eggs:getChildren()) do
		table.insert(eggsList, tostring(v.Name))
	end
	table.sort(eggsList)
	eggsPage.Dropdown({
		Text = "Open Egg",
		Callback = function(Value)
			kVars.eggSelected = Value
		end,
		Options = eggsList,
		Menu = {
			Information = function(self)
				eggsPage.Banner({
					Text = "Select an egg to auto open."
				})
			end
		}
	})

	---- Open Eggs ----
	eggsPage.Toggle({
		Text = "Open Egg",
		Callback = function(Value)
			kVars.openEggBool = Value
			if Value then openEggFunc() end
		end,
		Enabled = false
	})
	function openEggFunc()
		spawn(function()
			while kVars.openEggBool do
				wait()
				if kVars.eggSelected ~= nil then
					game:GetService("ReplicatedStorage").Modules.Events.EggBuy:InvokeServer(kVars.eggSelected, "Buy1")
				else
					print("error - line 315 - eggSelected = nil")
				end
			end
		end)
	end

	---- CombinePets ----
	eggsPage.Toggle({
		Text = "Pet Combine",
		Callback = function(Value)
			kVars.petCombineBool = Value
			if Value then petCombineFunc() end
		end,
		Enabled = false
	})
	function petCombineFunc()
		spawn(function()
			while kVars.petCombineBool do
				wait()
				for i,v in pairs(game:GetService("Players").LocalPlayer.Pets.OwnedPets:GetChildren()) do
					if kVars.petCombineBool == false then break end
					if v:FindFirstChild('PetName') then
						game:GetService("ReplicatedStorage").Modules.Events.PetHandler:InvokeServer("CombinePet", v.PetName.Value)
					end
				end
			end
		end)
	end

	---- delete egg dropdown ----
	local allPetNamesList = {}

	for i,v in pairs(game:GetService("ReplicatedStorage").Pets:GetChildren()) do
		table.insert(allPetNamesList, tostring(v.Name))
	end
	table.sort(allPetNamesList)
	table.insert(allPetNamesList,1,"None")

	---- del pet dropdown 1 ----

	eggsPage.Dropdown({
		Text = "Delete Pet",
		Callback = function(Value)
			kVars.delPetName1 = Value
		end,
		Options = allPetNamesList,
		Menu = {
			Information = function(self)
				eggsPage.Banner({
					Text = "Select Pet to delete."
				})
			end
		}
	})

	---- del pet dropdown 2 ----

	eggsPage.Dropdown({
		Text = "Delete Pet",
		Callback = function(Value)
			kVars.delPetName2 = Value
		end,
		Options = allPetNamesList,
		Menu = {
			Information = function(self)
				eggsPage.Banner({
					Text = "Select Pet to delete."
				})
			end
		}
	})

	---- del pet dropdown 3 ----

	eggsPage.Dropdown({
		Text = "Delete Pet",
		Callback = function(Value)
			kVars.delPetName3 = Value
		end,
		Options = allPetNamesList,
		Menu = {
			Information = function(self)
				eggsPage.Banner({
					Text = "Select Pet to delete."
				})
			end
		}
	})

	---- del pet dropdown 4 ----

	eggsPage.Dropdown({
		Text = "Delete Pet",
		Callback = function(Value)
			kVars.delPetName4 = Value
		end,
		Options = allPetNamesList,
		Menu = {
			Information = function(self)
				eggsPage.Banner({
					Text = "Select Pet to delete."
				})
			end
		}
	})

	---- del pet dropdown 5

	eggsPage.Dropdown({
		Text = "Delete Pet",
		Callback = function(Value)
			kVars.delPetName5 = Value
		end,
		Options = allPetNamesList,
		Menu = {
			Information = function(self)
				eggsPage.Banner({
					Text = "Select Pet to delete."
				})
			end
		}
	})

	---- del pet toggle ----
	eggsPage.Toggle({
		Text = "Delete Pets",
		Callback = function(Value)
			kVars.delPetBool = Value
			if Value then
				delPetFunc()
			end
		end,
		Enabled = false
	})
	function delPetFunc()
		spawn(function()
			while kVars.delPetBool do
				wait()
				for i,v in pairs(game:GetService("Players").LocalPlayer.Pets.OwnedPets:GetChildren()) do
					local petNameNew = tostring(v.PetName.Value)
					local isEquip = v.IsEquip.Value
					if petNameNew == kVars.delPetName1 or petNameNew == kVars.delPetName2 or petNameNew == kVars.delPetName3 or petNameNew == kVars.delPetName4 or petNameNew == kVars.delPetName5 then
						if isEquip == false then
							local args = {
								[1] = "Delete",
								[2] = {
									["PetId"] = v.PetID.Value,
									["PetName"] = petNameNew
								}
							}
							game:GetService("ReplicatedStorage").Modules.Events.PetHandler:InvokeServer(unpack(args))
						end
					end
				end
			end
		end)
	end


	---------------- Teleports ----------------
	---- Set Teleport Page ----
	teleportPage = mainFrame.New({
		Title = "Teleports",
		ImageID = 6942070576,
	})

	for i,v in pairs(TeleTable) do
		teleportPage.Button({
			Text = v['name'],
			Callback = function()
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v['cf']
			end,
			Menu = {
				Information = function(self)
					mainFrame.Banner({
						Text = "Teleport to " .. v['name']
					})
				end
			}
		})
	end


	local antiAFK = game:GetService('Players').LocalPlayer.Idled:connect(function()
		game:GetService('VirtualUser'):CaptureController()
		game:GetService('VirtualUser'):ClickButton2(Vector2.new())
	end)


	kVars.closeing = game:GetService("CoreGui").ChildRemoved:Connect(function(child)
		if child.Name == "Happy Simulator 2" then
			table.clear(kVars)
			antiAFK:Disconnect()
			kVars.closeing:Disconnect()
			script:Destroy()
		end
	end)
elseif PlaceId == 7564960115 then
	local X = Material.Load({
		Title = "BaconHub",
		Style = 3,
		SizeX = 500,
		SizeY = 350,
		Theme = "Light",
		ColorOverrides = {
			MainFrame = Color3.fromRGB(235, 235, 235)
		}
	})

	local Home = X.New({
		Title = "Home",
		ImageID = 9310172214,
	})

	local Misc = X.New({
		Title = "Misc",
		ImageID = 8099777545,
	})

	local Setting = X.New({
		Title = "Setting",
		ImageID = 6942070576,
	})

	local AutoBattle = true
	local AutoAttack = true

	local AutoBattleBt = Home.Toggle({
		Text = "Auto Battle",
		Callback = function(Value)
			AutoBattle = Value
			print("AutoBattle: ".. tostring(AutoBattle))
		end,
		Enabled = AutoBattle
	})

	local AutoBattleBt = Home.Toggle({
		Text = "Auto Attack",
		Callback = function(Value)
			AutoAttack = Value
			print("AutoAttack: ".. tostring(AutoAttack))
		end,
		Enabled = AutoAttack
	})

	local RunService = game:GetService("RunService")
	local Base = workspace.Plots
	for i,v in pairs(Base:GetChildren()) do
		if v.Owner.Value == game.Players.LocalPlayer then
			Base = v
		end
	end

	spawn(function()
		while RunService.Heartbeat:Wait() do
			if AutoBattle then
				game.ReplicatedStorage.Communication.StartBattle:FireServer()
			end
			if AutoAttack then
				local ClickAttack = game.Players.LocalPlayer.PlayerGui:FindFirstChild("Clicker")
				if ClickAttack and ClickAttack.Andornee then
					firesignal(ClickAttack.ImageButton.MouseButton1Click)
				end
			end
		end
	end)
elseif PlaceId == 2768379856 then
	local X = Material.Load({
		Title = "BaconHub",
		Style = 3,
		SizeX = 500,
		SizeY = 350,
		Theme = "Light",
		ColorOverrides = {
			MainFrame = Color3.fromRGB(235, 235, 235)
		}
	})

	local Home = X.New({
		Title = "Home",
		ImageID = 9310172214,
	})

	local Misc = X.New({
		Title = "Misc",
		ImageID = 8099777545,
	})

	local Setting = X.New({
		Title = "Setting",
		ImageID = 6942070576,
	})

	local esp1 = false
	local ESP1 = Home.Toggle({
		Text = "ESP Pallet",
		Callback = function(Value)
			esp1 = Value
			print("esp1: ".. tostring(esp1))
		end,
		Enabled = esp1
	})
	local esp2 = false
	local ESP2 = Home.Toggle({
		Text = "ESP Foods",
		Callback = function(Value)
			esp2 = Value
			print("esp2: ".. tostring(esp2))
		end,
		Enabled = esp2
	})

	local folder = Instance.new("Folder",workspace)
	folder.Name = "Esp1"
	spawn(function()
		game:GetService("RunService").Heartbeat:Connect(function()
			if esp1 then
				for i,v in pairs(workspace.GameObjects.Physical.Map.Ground:GetChildren()) do
					if v:FindFirstChild("Items") then
						for i,e in pairs(v.Items:GetChildren()) do
							if e.Name == "Pallet" and not e:FindFirstChild("ESP") then
								local a = Instance.new("ObjectValue",e)
								a.Name = "ESP"
								spawn(function()
									repeat wait() until esp1 == false
									a:Destroy()
								end)
								local BillboardGui = Instance.new("BillboardGui")
								local TextLabel = Instance.new("TextLabel")

								BillboardGui.Active = true
								BillboardGui.AlwaysOnTop = true
								BillboardGui.ClipsDescendants = true
								BillboardGui.LightInfluence = 1
								BillboardGui.Parent = folder
								BillboardGui.Adornee = e
								BillboardGui.Size = UDim2.new(0, 75, 0, 25)
								BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

								TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
								TextLabel.BackgroundTransparency = 1
								TextLabel.Font = Enum.Font.FredokaOne
								TextLabel.Parent = BillboardGui
								TextLabel.Size = UDim2.new(1, 0, 1, 0)
								TextLabel.Text = '<stroke color="#000000" joins="miter" thickness="4" transparency="0">Pallet<br/>0</stroke>'
								TextLabel.TextColor3 = Color3.new(1, 1, 1)
								TextLabel.TextScaled = true
								TextLabel.TextSize = 14
								TextLabel.TextWrapped = true
								TextLabel.RichText = true
								coroutine.wrap(function()
									game:GetService("RunService").Heartbeat:Connect(function()
										TextLabel.Text = '<stroke color="#000000" joins="miter" thickness="4" transparency="0">Pallet<br/>'.. math.floor((e.WorldPivot.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude) .. '</stroke>'
									end)
								end)
							end
						end
					end
				end
			else
				folder:ClearAllChildren()
			end
		end)
	end)
elseif PlaceId == 3835061676 then
	local X = Material.Load({
		Title = "BaconHub",
		Style = 3,
		SizeX = 500,
		SizeY = 350,
		Theme = "Light",
		ColorOverrides = {
			MainFrame = Color3.fromRGB(235, 235, 235)
		}
	})

	local Home = X.New({
		Title = "Home",
		ImageID = 9310172214,
	})

	local Misc = X.New({
		Title = "Misc",
		ImageID = 8099777545,
	})

	local Setting = X.New({
		Title = "Setting",
		ImageID = 6942070576,
	})

	local farm = false
	local farms = Home.Toggle({
		Text = "Auto Farm Strength",
		Callback = function(Value)
			farm = Value
			print("farm: ".. tostring(farm))
		end,
		Enabled = farm
	})
	local farm2 = false
	local farm2s = Home.Toggle({
		Text = "Auto Farm Speed",
		Callback = function(Value)
			farm2 = Value
			print("farm2: ".. tostring(farm2))
		end,
		Enabled = farm2
	})
	local farm3 = false
	local farm3s = Home.Toggle({
		Text = "Auto Farm Players",
		Callback = function(Value)
			farm3 = Value
			print("farm2: ".. tostring(farm3))
		end,
		Enabled = farm3
	})
	local farm4 = false
	local farm4s = Home.Toggle({
		Text = "Auto Farm Boss",
		Callback = function(Value)
			farm4 = Value
			print("farm4: ".. tostring(farm4))
		end,
		Enabled = farm4
	})
	local auto = false
	local autos = Home.Toggle({
		Text = "Auto Rebirth",
		Callback = function(Value)
			auto = Value
			print("auto: ".. tostring(auto))
		end,
		Enabled = auto
	})
	local auto2 = false
	local auto2s = Home.Toggle({
		Text = "Auto Gain Quest",
		Callback = function(Value)
			auto2 = Value
			print("auto2: ".. tostring(auto2))
		end,
		Enabled = auto2
	})
	local auto3 = false
	local auto3s = Home.Toggle({
		Text = "Auto Hatch Egg",
		Callback = function(Value)
			auto3 = Value
			print("auto3: ".. tostring(auto3))
		end,
		Enabled = auto3
	})

	local egg = "Egg1"
	local map = "Spawn"
	local chose = Setting.Dropdown({
		Text = "Eggs",
		Callback = function(Value)
			if Value == "[Spawn] Egg1" then
				egg = "Egg1"
				map = "Spawn"
			elseif Value == "[The Beach] Egg2" then
				egg = "Egg2"
				map = "The Beach"
			elseif Value == "[The Track] Egg3" then
				egg = "Egg3"
				map = "The Track"
			elseif Value == "[UnderworldSpawn] Egg4" then
				egg = "Egg4"
				map = "UnderworldSpawn"
			elseif Value == "[SpaceSpawn] Egg5" then
				egg = "Egg5"
				map = "SpaceSpawn"
			elseif Value == "[CandylandSpawn] Egg6" then
				egg = "Egg6"
				map = "CandylandSpawn"
			elseif Value == "[NorthPoleSpawn] Egg7" then
				egg = "Egg7"
				map = "NorthPoleSpawn"
			elseif Value == "[JungleSpawn] Egg8" then
				egg = "Egg8"
				map = "JungleSpawn"
			elseif Value == "[SavannahSpawn] Egg9" then
				egg = "Egg9"
				map = "SavannahSpawn"
			end
			print(egg,map)
		end,
		Options = {
			"[Spawn] Egg1",
			"[The Beach] Egg2",
			"[The Track] Egg3",
			"[UnderworldSpawn] Egg4",
			"[SpaceSpawn] Egg5",
			"[CandylandSpawn] Egg6",
			"[NorthPoleSpawn] Egg7",
			"[JungleSpawn] Egg8",
			"[SavannahSpawn] Egg9",
		},
		Menu = {
			Information = function(self)
				X.Banner({
					Text = ""
				})
			end
		}
	})
	local weapon = "Punch"
	local chose = Setting.Dropdown({
		Text = "Weapons",
		Callback = function(Value)
			weapon = Value
		end,
		Options = {
			"Punch",
			"Smash",
		},
		Menu = {
			Information = function(self)
				X.Banner({
					Text = ""
				})
			end
		}
	})
	local tabel = {"All"}
	local target = "All"
	for i,v in pairs(game.Players:GetPlayers()) do
		if v ~= game.Players.LocalPlayer then
			table.insert(tabel,v.Name)
		end
	end
	local chose2 = Setting.Dropdown({
		Text = "Target",
		Callback = function(Value)
			weapon = Value
		end,
		Options = tabel,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = ""
				})
			end
		}
	})
	local boss = "Starter Map"
	local chose3 = Setting.Dropdown({
		Text = "Boss",
		Callback = function(Value)
			boss = Value
		end,
		Options = {
			"Starter Map",
			"Underworld"
		},
		Menu = {
			Information = function(self)
				X.Banner({
					Text = ""
				})
			end
		}
	})
	local A = Setting.Button({
		Text = "Reset Target",
		Callback = function()
			local tabelreseted = {"All"}
			for i,v in pairs(game.Players:GetPlayers()) do
				if v ~= game.Players.LocalPlayer then
					table.insert(tabelreseted,v.Name)
				end
			end
			chose2:SetOptions(tabelreseted)
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = ""
				})
			end
		}
	})
	while wait() do
		if farm then
			local A_1 = "Prowler Sleds"
			game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EquipmentHandler.Use:FireServer(A_1)
			local A_1 = "Chestpresses"
			game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EquipmentHandler.Use:FireServer(A_1)
			local A_1 = "Weights"
			game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EquipmentHandler.Use:FireServer(A_1)
			local A_1 = "Benchpresses"
			game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EquipmentHandler.Use:FireServer(A_1)
			local A_1 = "Deadlift Weights"
			game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EquipmentHandler.Use:FireServer(A_1)
			local A_1 = "Punching Bags"
			game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EquipmentHandler.Use:FireServer(A_1)
			local A_1 = "Treadmills"
			game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EquipmentHandler.Use:FireServer(A_1)
		end
		if farm2 then
			local A_1 = "Bikes"
			game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EquipmentHandler.Use:FireServer(A_1)
			local A_1 = "Treadmills"
			game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EquipmentHandler.Use:FireServer(A_1)
		end
		if farm3 then
			if target == "All" then
				for i,v in pairs(game.Players:GetPlayers()) do
					if v ~= game.Players.LocalPlayer then
						print("punch player: ".. v.Name)
						local A_1 = weapon
						local A_2 = v
						local Event = game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EquipmentHandler.Use
						Event:FireServer(A_1, A_2)
					end
				end
			elseif game.Players:FindFirstChild(target) then
				local A_1 = weapon
				local A_2 = game.Players[target]
				local Event = game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EquipmentHandler.Use
				Event:FireServer(A_1, A_2)
			end
		end
		if farm4 then
			if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
				local bossnpc
				if boss == "Starter Map" then
					if game.Players.LocalPlayer.Map.Value ~= "Starter Map" then
						firesignal(game.Players.LocalPlayer.PlayerGui.MainGui.Hud.Spawn.MouseButton1Click)
					else
						bossnpc = workspace.Maps["Starter Map"].Boss:FindFirstChild("Npc")
					end
				elseif boss == "Underworld" then
					if game.Players.LocalPlayer.Map.Value ~= "Underworld" then
						firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace.Maps["Starter Map"].Portals.Underworld,0)
						wait(1)
						firesignal(game.Players.LocalPlayer.PlayerGui.WarningGui.Warning.Background.Prompt.Yes.MouseButton1Click)
						wait(1)
						firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace.Maps["Starter Map"].Portals.Underworld,1)
					else
						bossnpc = workspace.Maps["Underworld"].Boss:FindFirstChild("Npc")
					end
				end
				if bossnpc and bossnpc:FindFirstChild("HumanoidRootPart") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = bossnpc.HumanoidRootPart.CFrame
					if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
						game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
					else
						for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
							if v.Name == weapon and v:FindFirstChild("Controller") then
								v.attackTime.Value = 0.2
								firesignal(game.Players.LocalPlayer.PlayerGui.MainGui.Hud.Hotbar[weapon].MouseButton1Click)
								break
							end
						end
					end            
				end
			end
		end
		if auto then
			game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClientHandler.Rebirth:FireServer()
		end
		if auto2 then
			local A_1 = "GainStrength"
			game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.QuestService.Claim:FireServer(A_1)
			local A_1 = "GainSpeed"
			game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.QuestService.Claim:FireServer(A_1)
			local A_1 = "GainKillPlayers"
			game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.QuestService.Claim:FireServer(A_1)
		end
		if auto3 then
			print(map,egg)
			game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.PetHandler.BuyEgg:InvokeServer(map, egg)
			wait(1)
		end
	end
elseif PlaceId == 6312903733 then
	local Hub = Material.Load({
		Title = "BaconHub",
		Style = 3,
		SizeX = 500,
		SizeY = 350,
		Theme = "Light",
		ColorOverrides = {
			MainFrame = Color3.fromRGB(235, 235, 235)
		}
	})

	local Home = Hub.New({
		Title = "Home",
		ImageID = 9310172214,
	})

	local Misc = Hub.New({
		Title = "Misc",
		ImageID = 8099777545,
	})

	local Setting = Hub.New({
		Title = "Setting",
		ImageID = 6942070576,
	})

	local KillAura = false
	local AutoGetCircuit = false
	local AutoPressButton = false
	local AutoSolvePuzzleBox = false

	local ButtonKillAura = Home.Toggle({
		Text = "Kill Aura (Require sword)",
		Callback = function(Value)
			KillAura = Value
			print("KillAura: ".. tostring(KillAura))
		end,
		Enabled = KillAura
	})

	local ButtonAutoGetCircuit = Home.Toggle({
		Text = "Auto Get Circuit",
		Callback = function(Value)
			AutoGetCircuit = Value
			print("AutoGetCircuit: ".. tostring(AutoGetCircuit))
		end,
		Enabled = AutoGetCircuit
	})

	local ButtonAutoPressButton = Home.Toggle({
		Text = "Auto Press Button",
		Callback = function(Value)
			AutoPressButton = Value
			print("AutoPressButton: ".. tostring(AutoPressButton))
		end,
		Enabled = AutoPressButton
	})

	local ButtonAutoSolvePuzzleBox = Home.Toggle({
		Text = "Auto Solve Puzzle Box",
		Callback = function(Value)
			AutoSolvePuzzleBox = Value
			print("AutoSolvePuzzleBox: ".. tostring(AutoSolvePuzzleBox))
		end,
		Enabled = AutoSolvePuzzleBox
	})

	local ButtonSaveHome = Home.Button({
		Text = "Save Home",
		Callback = function()
			SaveData("Home",{
				["KillAura"] = KillAura,
				["AutoGetCircuit"] = AutoGetCircuit,
				["AutoPressButton"] = AutoPressButton,
				["AutoSolvePuzzleBox"] = AutoSolvePuzzleBox,
			})
			Hub.Banner({
				Text = "Data Saved!"
			})
			print("succes!")
		end,
		Menu = {
			Information = function(self)
				Home.Banner({
					Text = "Save Home"
				})
			end
		}
	})

	local DataHomeLoaded = LoadData("Home")
	local DataSettingLoaded = LoadData("Setting")
	local DataMicsLoaded = LoadData("Misc")
	if DataHomeLoaded and DataHomeLoaded[tostring(PlaceId)] then
		KillAura = DataSettingLoaded[tostring(PlaceId)].KillAura
		AutoGetCircuit = DataSettingLoaded[tostring(PlaceId)].AutoGetCircuit
		AutoPressButton = DataSettingLoaded[tostring(PlaceId)].AutoPressButton
		AutoSolvePuzzleBox = DataSettingLoaded[tostring(PlaceId)].AutoSolvePuzzleBox
	else
		warn("Data nil")
	end
	if DataMicsLoaded and DataMicsLoaded[tostring(PlaceId)] then

	else
		warn("Data nil")
	end
	if DataSettingLoaded and DataSettingLoaded[tostring(PlaceId)] then

	else
		warn("Data nil")
	end

	game:GetService("RunService").Stepped:Connect(function()
		if KillAura then
			setsimulationradius(math.huge,math.huge)
			spawn(function()
				for i,v in pairs(game.Workspace:GetDescendants()) do
					if v:IsA("Humanoid") and (v.Parent:FindFirstChildOfClass("BasePart")or v.Parent:FindFirstChild("Head")) and v.Parent.Name ~= game.Players.LocalPlayer.Name and v.Parent.Name ~= "Anti Droid" and game.Players:GetPlayerFromCharacter(v.Parent) == nil then
						v.Health = 0
						local part = (v.Parent:FindFirstChildOfClass("BasePart")or v.Parent:FindFirstChild("Head"))
						game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(part.Position) * CFrame.new(0,8,0)
						if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
							firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle, part, 0)
							firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle, part, 1)
						end
					end
				end
			end)
		end
		if AutoGetCircuit then
			for i = 1, 2 do
				spawn(function()
					for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
						if v.Name == "Circuit" then
							firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0) --0 is touch
							firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1) -- 1 is untouch
						end
					end
				end)
			end
		end
		if AutoPressButton then
			for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
				if v:IsA("ClickDetector") and (v.Parent.Name == "Button" or v.Parent.Parent.Name == "Button" or v.Parent.Parent.Parent.Name ~= "Enemies") then
					fireclickdetector(v)
				end
			end
		end
		if AutoSolvePuzzleBox then
			spawn(function()
				for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
					if v.Name:find("PuzzleBox") then
						local slipt = v.Name:split(" ")
						local number = slipt[2]
						local box = v.Frame
						local target
						for i,v in pairs(v.Parent:GetChildren()) do
							if v.Name:find("PressurePlate") and v:FindFirstChild("Activator") then
								local slipt = v.Name:split(" ")
								local number = slipt[2]
								target = v.Activator
							end
						end

						if box and target then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(box.Position)
							firetouchinterest(box, target, 0)
							box.CFrame = target.CFrame
						end
					end
				end
			end)
		end
	end)
elseif PlaceId == 8737602449 then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/HairBaconGamming/Pls-Donate-Robux-Jump/main/Main.lua"))()
elseif PlaceId == 10425505725 then
	function alphabetize(t)
		local leng=math.huge -- If you need to, increase this to the longest name of all the ones you're comparing
		local function h(n)
			return(n..string.rep(' ',leng-#n)):gsub('.',function(c)return c:byte()end)
		end
		table.sort(t,function(a,b)
			return h(a)<h(b) --a.Name/b.Name if needed
		end)
		return t
	end

	function AlphabeticalOrder(Directory) 
		local alphabeticalTable = {}
		for _,strin in pairs(alphabetize(Directory)) do --you need to 
			table.insert(alphabeticalTable,strin)
		end
		return alphabeticalTable
	end

	function AlphabeticalOrderParent(Parent)
		local alphabeticalTable = {}
		for _,child in pairs(Parent:GetChildren()) do
			table.insert(alphabeticalTable,child.Name)
		end
		local InsertedTable = alphabetize(alphabeticalTable)
		return InsertedTable
	end

	local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/HairBaconGamming/Gamming-Material-HUB/main/Main.lua"))()

	local Main = Material:Load({
		Title = game.Name,
		SmothDrag = false,
		Key = "RightControl" or Enum.KeyCode.RightControl,
	})

	local Temp = Main:New({
		Title = "Home",
		Image = "",
	})

	local autopet = false
	local autoequip = false
	local autodelete = false
	local pet = "Normal"
	local common = false
	local uncommon = false
	local rare = false
	local epic = false
	local lengendary = false
	local mythical = false
	local typehatch = "x1"

	local DataHomeLoaded = LoadData("Home")
	local DataSettingLoaded = LoadData("Setting")
	local DataMicsLoaded = LoadData("Misc")
	if DataHomeLoaded and DataHomeLoaded[tostring(PlaceId)] then
		autopet = DataSettingLoaded[tostring(PlaceId)].autopet
		autoequip = DataSettingLoaded[tostring(PlaceId)].autoequip
		autodelete = DataSettingLoaded[tostring(PlaceId)].autodelete
		pet = DataSettingLoaded[tostring(PlaceId)].pet
		common = DataSettingLoaded[tostring(PlaceId)].common
		uncommon = DataSettingLoaded[tostring(PlaceId)].uncommon
		rare = DataSettingLoaded[tostring(PlaceId)].rare
		epic = DataSettingLoaded[tostring(PlaceId)].epic
		lengendary = DataSettingLoaded[tostring(PlaceId)].lengendary
		mythical = DataSettingLoaded[tostring(PlaceId)].mythical
		typehatch = DataSettingLoaded[tostring(PlaceId)].typehatch
	else
		warn("Data nil")
	end
	if DataMicsLoaded and DataMicsLoaded[tostring(PlaceId)] then

	else
		warn("Data nil")
	end
	if DataSettingLoaded and DataSettingLoaded[tostring(PlaceId)] then

	else
		warn("Data nil")
	end

	local Toggle = Temp:Toggle({
		Title = "Auto Egg",
		Callback = function(Value)
			autopet = Value
		end,
		Enabled = autopet
	})
	local Toggle = Temp:Toggle({
		Title = "Auto Equip",
		Callback = function(Value)
			autoequip = Value
		end,
		Enabled = autoequip
	})
	local Toggle = Temp:Toggle({
		Title = "Auto Delete",
		Callback = function(Value)
			autodelete = Value
		end,
		Enabled = autodelete
	})

	local Dropdown = Temp:Dropdown({
		Title = "Egg",
		Callback = function(Value)
			pet = Value
		end,
		Table = AlphabeticalOrderParent(workspace.PetStands),
		AutoTextChose = true, -- example: 'numbers:1' >> 'numbers'
	})

	local Dropdown = Temp:Dropdown({
		Title = "Type Hatch",
		Callback = function(Value)
			typehatch = Value
		end,
		Table = {"x1","x3"},
		AutoTextChose = true, -- example: 'numbers:1' >> 'numbers'
	})

	local Toggle = Temp:Toggle({
		Title = "Auto Delete Common",
		Callback = function(Value)
			common = Value
		end,
		Enabled = common
	})

	local Toggle = Temp:Toggle({
		Title = "Auto Delete UnCommon",
		Callback = function(Value)
			uncommon = Value
		end,
		Enabled = uncommon
	})

	local Toggle = Temp:Toggle({
		Title = "Auto Delete Rare",
		Callback = function(Value)
			rare = Value
		end,
		Enabled = rare
	})

	local Toggle = Temp:Toggle({
		Title = "Auto Delete Epic",
		Callback = function(Value)
			epic = Value
		end,
		Enabled = epic
	})

	local Toggle = Temp:Toggle({
		Title = "Auto Delete Lengendary",
		Callback = function(Value)
			lengendary = Value
		end,
		Enabled = lengendary
	})

	local Toggle = Temp:Toggle({
		Title = "Auto Delete Mythical",
		Callback = function(Value)
			mythical = Value
		end,
		Enabled = mythical
	})

	local ButtonSaveHome = Temp:Button({
		Title = "Save Home",
		Callback = function()
			SaveData("Home",{
				["autopet"] = autopet,
				["autoequip"] = autoequip,
				["autodelete"] = autodelete,
				["pet"] = pet,
				["common"] = common,
				["uncommon"] = uncommon,
				["rare"] = rare,
				["epic"] = epic,
				["lengendary"] = lengendary,
				["mythical"] = mythical,
				["typehatch"] = typehatch,
			})
			print("succes!")
		end,
	})

	local Player = game.Players.LocalPlayer
	local Pets = Player:WaitForChild("Pets")

	Pets.ChildAdded:Connect(function(child)
		if autoequip then
			print("Equipped ".. child.Name)
			game.ReplicatedStorage.Events.Equipped:FireServer(child,true)
			wait(.1)
		end
		if autodelete then
			if child.Value.PrimaryPart.Configuration.Rare.Value == "Common" then
				if common then
					game.ReplicatedStorage.Events.Equipped:FireServer(child,false)
					wait(.1)
					game.ReplicatedStorage.Events.Delete:FireServer(child)
					print("Deleted ".. child.Name)
				end
			elseif child.Value.PrimaryPart.Configuration.Rare.Value == "UnCommon" then
				if uncommon then
					game.ReplicatedStorage.Events.Equipped:FireServer(child,false)
					wait(.1)
					game.ReplicatedStorage.Events.Delete:FireServer(child)
					print("Deleted ".. child.Name)
				end
			elseif child.Value.PrimaryPart.Configuration.Rare.Value == "Rare" then
				if rare then
					game.ReplicatedStorage.Events.Equipped:FireServer(child,false)
					wait(.1)
					game.ReplicatedStorage.Events.Delete:FireServer(child)
					print("Deleted ".. child.Name)
				end
			elseif child.Value.PrimaryPart.Configuration.Rare.Value == "Epic" then
				if epic then
					game.ReplicatedStorage.Events.Equipped:FireServer(child,false)
					wait(.1)
					game.ReplicatedStorage.Events.Delete:FireServer(child)
					print("Deleted ".. child.Name)
				end
			elseif child.Value.PrimaryPart.Configuration.Rare.Value == "Lengendary" then
				if lengendary then
					game.ReplicatedStorage.Events.Equipped:FireServer(child,false)
					wait(.1)
					game.ReplicatedStorage.Events.Delete:FireServer(child)
					print("Deleted ".. child.Name)
				end
			elseif child.Value.PrimaryPart.Configuration.Rare.Value == "Mythical" then
				if mythical then
					game.ReplicatedStorage.Events.Equipped:FireServer(child,false)
					wait(.1)
					game.ReplicatedStorage.Events.Delete:FireServer(child)
					print("Deleted ".. child.Name)
				end
			end
		end
	end)

	game.Players.LocalPlayer.PlayerGui.HatchGui.Changed:Connect(function()
		game.Players.LocalPlayer.PlayerGui.HatchGui.Enabled = false
	end)

	local bb=game:service'VirtualUser'
	game:service'Players'.LocalPlayer.Idled:connect(function()
		bb:CaptureController()
		bb:ClickButton2(Vector2.new())
	end)

	while task.wait() do
		game.Players.LocalPlayer.PlayerGui.HatchGui.Enabled = false
		for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
			if v:IsA("ScreenGui") and v.Name ~= "HatchGui" and v.Name ~= "Notification" then
				v.Enabled = true
			end
		end
		if autopet then
			game.ReplicatedStorage.Events.Hatch:FireServer(pet,typehatch)
		end
	end
else
	warn("Bacon Hub doesnt support this game...")
	local Screen = Instance.new("ScreenGui",game.CoreGui)
	Screen.ResetOnSpawn = false
	Screen.Name = "#$RRF(T(@$##92efrgh9237344273tduig64rtwuiegd648uwfyg83tf68437gtr684t389og7frg54gft8ow7gft87tfr834gft4t34ty9y8t7yt3t35#$@RwFG#$Re@F#T#^$R3TT@#rHR!6UWR4YHEFGb#!1#T#"
	local TweenService = game:GetService("TweenService")
	local Frame2 = Instance.new("Frame",Screen)
	Frame2.Size = UDim2.new(0,0,0.05,0)
	Frame2.BorderSizePixel = 0
	Frame2.BackgroundColor3 = Color3.new(0.705882, 0.705882, 0.705882)
	local Frame = Instance.new("Frame",Screen)
	Frame.Size = UDim2.new(0,0,0.05,0)
	Frame.BorderSizePixel = 0
	Frame.BackgroundColor3 = Color3.new(0.831373, 0.831373, 0.831373)
	local TextLabel = Instance.new("TextLabel",Screen)
	TextLabel.Text = "Bacon Hub doesnt support this game... but... >:)"
	TextLabel.Size = UDim2.new(0,0,0.05,0)
	TextLabel.Font = Enum.Font.SourceSansSemibold
	TextLabel.TextColor3 = Color3.new(0.121569, 0.121569, 0.121569)
	TextLabel.BackgroundColor3 = Color3.new(0.921569, 0.921569, 0.921569)
	TextLabel.TextScaled = true
	TextLabel.BorderSizePixel = 0
	TextLabel.TextTransparency = 1
	TextLabel:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,1)
	Frame:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,0.6)
	Frame2:TweenSize(UDim2.new(1,0,0.05,0),nil,nil,0.3)
	TweenService:Create(TextLabel,TweenInfo.new(1.5),{TextTransparency = 0}):Play()
	wait(3)
	TweenService:Create(TextLabel,TweenInfo.new(1),{TextTransparency = 1}):Play()
	wait(1.2)
	Frame.Size = UDim2.new(1,0,0.05,0)
	Frame2.Size = UDim2.new(1,0,0.05,0)
	TextLabel:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.3)
	Frame:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.6)
	Frame2:TweenSize(UDim2.new(0,0,0.05,0),nil,nil,0.9)
	game.Debris:AddItem(Screen,2)
	wait(1)
	local X = Material.Load({
		Title = "BaconHub",
		Style = 3,
		SizeX = 500,
		SizeY = 350,
		Theme = "Light",
		ColorOverrides = {
			MainFrame = Color3.fromRGB(235, 235, 235)
		}
	})

	local Home = X.New({
		Title = "Home"
	})

	local InfiniteJump = false
	local Fly = false
	local Flying = false

	local FarmBt = Home.Toggle({
		Text = "Infinite Jump",
		Callback = function(Value)
			InfiniteJump = Value
			print("InfiniteJump: ".. tostring(InfiniteJump))
		end,
		Enabled = InfiniteJump
	})

	local flymaxspeed = 16/16
	local lp = game:GetService('Players').LocalPlayer
	local mouse = lp:GetMouse()
	function fly(char)
		local canstop = true
		local ctrl = {w=0,a=0,s=0,d=0}
		local lastctrl = {w=0,a=0,s=0,d=0}
		local speed = 0
		flyscript = game:GetService('RunService').Stepped:Connect(function()
			if ctrl.w == 1 or ctrl.a == 1 or ctrl.s == 1 or ctrl.d == 1 then
				speed+=1
				if speed > flymaxspeed then
					speed = flymaxspeed
				end
				wait()
			end
			if not ctrl.w == 1 and not ctrl.a == 1 and not ctrl.s == 1 and not ctrl.d == 1 then
				speed-=1
				if speed < 1 then
					speed = .01
				end
				wait()
			end
			for i,c in pairs(char:GetChildren()) do
				if c:IsA('BasePart') then
					c.Velocity = Vector3.new(0,0,0)
				end
			end
			char:SetPrimaryPartCFrame(CFrame.new(((workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.w-ctrl.s)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.d-ctrl.a,(ctrl.w-ctrl.s)*.2,0).Position) - workspace.CurrentCamera.CoordinateFrame.p))*speed)+char.PrimaryPart.Position)
			char:SetPrimaryPartCFrame(workspace.CurrentCamera.CFrame.Rotation+char.PrimaryPart.Position)
			lastctrl = {w=ctrl.w,a=ctrl.a,s=ctrl.s,d=ctrl.d}
		end)
		keydown = mouse.KeyDown:Connect(function(key)
			if key == 'w' then
				ctrl.w=1
			end
			if key == 'a' then
				ctrl.a=1
			end
			if key == 's' then
				ctrl.s=1
			end
			if key == 'd' then
				ctrl.d=1
			end
		end)
		keyup = mouse.KeyUp:Connect(function(key)
			if key == 'w' then
				ctrl.w=0
			end
			if key == 'a' then
				ctrl.a=0
			end
			if key == 's' then
				ctrl.s=0
			end
			if key == 'd' then
				ctrl.d=0
			end
		end)
	end

	--E to fly
	mouse.KeyDown:Connect(function(key)
		if key == 'e' then
			Flying = not Flying
			wait()
			if Flying and Fly then
				fly(game.Players.LocalPlayer.Character)
			else
				flyscript:Disconnect()
				keydown:Disconnect()
				keyup:Disconnect()
			end
		end
	end)

	local FlyBt = Home.Toggle({
		Text = "Fly [E]",
		Callback = function(Value)
			Fly = Value
		end,
		Enabled = Fly
	})
	local abt = Home.Button({
		Text = "Animation GUIs",
		Callback = function()
			loadstring(game:HttpGet("https://pastebin.com/raw/h4CbmhTt"))()
			loadstring(game:HttpGet("https://pastebin.com/raw/Rx4Qqicd"))()
			loadstring(game:HttpGet("https://pastebin.com/raw/EQE58hq3"))()
			print("succes!")             
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Load the FE animation guis"
				})
			end
		}
	})
	local abt2 = Home.Button({
		Text = "Infinite Yield",
		Callback = function()
			loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
			print("succes!")             
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Load the admin FE infinite yield"
				})
			end
		}
	})
	local abt3 = Home.Button({
		Text = "CMD-X",
		Callback = function()
			loadstring(game:HttpGet('https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source'))()
			print("succes!")             
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Load the admin FE CMD-X"
				})
			end
		}
	})
	local abt4 = Home.Button({
		Text = "Shattervast",
		Callback = function()
			loadstring(game:HttpGet('https://pastebin.com/raw/iL4NRDux'))()
			print("succes!")             
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Load the admin FE Shattervast"
				})
			end
		}
	})
	local abt5 = Home.Button({
		Text = "Fates Admin",
		Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
			print("succes!")             
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Load the admin FE Fates"
				})
			end
		}
	})
	local abt6 = Home.Button({
		Text = "Reviz Admin",
		Callback = function()
			loadstring(game:HttpGet(('https://pastebin.com/raw/pyzjWNhk'),true))()
			print("succes!")             
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Load the admin FE Reviz"
				})
			end
		}
	})

	local abt7 = Home.Button({
		Text = "Music GUI",
		Callback = function()
			loadstring(game:HttpGet(('https://pastebin.com/raw/zv94NGMc'),true))()
			print("succes!")             
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Load the music gui"
				})
			end
		}
	})
	local abt7 = Home.Button({
		Text = "CoCo Hub",
		Callback = function()
			loadstring(game:HttpGet(('https://gitlab.com/cococc/cocohub/-/raw/master/CocoLoader'),true))()
			print("succes!")             
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Load the Coco Hub"
				})
			end
		}
	})
	local abt8 = Home.Button({
		Text = "Dex",
		Callback = function()
			loadstring(game:GetObjects("rbxassetid://418957341")[1].Source)()
			print("Succes!")
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Load the Dex"
				})
			end
		}
	})
	local abt9 = Home.Button({
		Text = "HairBaconGamming Old Hub (Heck Hub)",
		Callback = function()
			loadstring(game:HttpGetAsync("https://pastebin.com/raw/MD8CcD8G"))()
			print("succes!")             
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Load the my old Hub"
				})
			end
		}
	})
	local abt10 = Home.Button({
		Text = "HairBaconGamming Animbot/ESP/SELECT",
		Callback = function()
			loadstring(game:HttpGetAsync("https://pastebin.com/raw/Rj5mtM5Z"))()
			print("succes!")             
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Load the Animbot/ESP/SELECT make by HairBaconGamming"
				})
			end
		}
	})
	local abt11 = Home.Button({
		Text = "Waypoint GUI",
		Callback = function()
			loadstring(game:HttpGetAsync("https://pastebin.com/raw/dgMYDRCy"))()
			print("succes!")             
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Load the Waypoint GUI make by HairBaconGamming"
				})
			end
		}
	})
	local abt12 = Home.Button({
		Text = "Save and load your clone script roblox pastebin",
		Callback = function()
			loadstring(game:HttpGetAsync("https://pastebin.com/raw/ZLzKMdb0"))()
			print("succes!")             
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Load the Save and load your clone script roblox pastebin make by HairBaconGamming"
				})
			end
		}
	})

	local Scrypt = "" 
	local Amogus = Home.TextField({
		Text = "Write Your Script Here!",
		Callback = function(Value)
			Scrypt = Value
		end,
		Menu = {
			LoadstringUrl = function(self)
				setclipboard("loadstring(game:HttpGet('URL_Script_Here'))()")
				self.SetText("Copied Text Please Click Me And Paste!")
			end,
			BaconHub = function(self)
				self.SetText('loadstring(game:HttpGet("https://raw.githubusercontent.com/HairBaconGamming/BaconHub/main/Main"))()')
			end,
			ClickMePls = function(self)
				self.SetText("You look like the AmongUs")
			end
		}
	})

	local abt8 = Home.Button({
		Text = "EXECUTE",
		Callback = function()
			loadstring(Scrypt)()
		end,
		Menu = {
			Information = function(self)
				X.Banner({
					Text = "Load the script"
				})
			end
		}
	})

	local Db = true
	game:GetService("UserInputService").JumpRequest:connect(function()
		if InfiniteJump and Db then
			Db = false
			game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
			wait(0)
			Db = true
		end
	end)
end