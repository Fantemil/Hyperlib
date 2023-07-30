local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SayMessageRequest = ReplicatedStorage:FindFirstChild("SayMessageRequest", true)
if SayMessageRequest then

local okPressed = false
local cancelPressed = false
local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer.PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 210, 0, 210)
frame.Position = UDim2.new(0.5, -300, 0.5, -350)
frame.Parent = gui

local squareSize = 30
local squares = {}

for i = 1, 7 do
    squares[i] = {}

    for j = 1, 7 do
        local square = Instance.new("TextButton")
        square.Size = UDim2.new(0, squareSize, 0, squareSize)
        square.Position = UDim2.new(0, (j - 1) * squareSize, 0, (i - 1) * squareSize)
        square.BackgroundColor3 = Color3.new(1, 1, 1)
        square.Text = ""
        square.Parent = frame

        square.MouseButton1Down:Connect(function()
            if square.BackgroundColor3 == Color3.new(1, 1, 1) then
                square.BackgroundColor3 = Color3.new(0, 0, 0)
            else
                square.BackgroundColor3 = Color3.new(1, 1, 1)
            end
        end)

        squares[i][j] = square
    end
end

local printButton = Instance.new("TextButton")
printButton.Size = UDim2.new(0, 210, 0, 30)
printButton.Position = UDim2.new(0.5, -300, 0.86, -370)
printButton.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
printButton.TextColor3 = Color3.new(0, 0, 0)
printButton.Text = "Draw to chat!"
printButton.TextScaled = true
printButton.Parent = gui

printButton.MouseButton1Down:Connect(function()

    for i = 1, 7 do
        local row = ""

        for j = 1, 7 do
            if squares[i][j].BackgroundColor3 == Color3.new(1, 1, 1) then
                row = row .. "⚪"
            else
                row = row .. "⚫"
            end
        end

        if SayMessageRequest then
        	SayMessageRequest:FireServer(row, "All")
    	end
    end
end)

local filereadButton = Instance.new("TextButton")
filereadButton.Size = UDim2.new(0, 210, 0, 30)
filereadButton.Position = UDim2.new(0.5, -300, 0.93, -370)
filereadButton.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
filereadButton.TextColor3 = Color3.new(0, 0, 0)
filereadButton.Text = "Import from file"
filereadButton.TextScaled = true
filereadButton.Parent = gui

local filewriteButton = Instance.new("TextButton")
filewriteButton.Size = UDim2.new(0, 210, 0, 30)
filewriteButton.Position = UDim2.new(0.5, -300, 1, -370)
filewriteButton.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
filewriteButton.TextColor3 = Color3.new(0, 0, 0)
filewriteButton.Text = "Export to file"
filewriteButton.TextScaled = true
filewriteButton.Parent = gui

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0, 210, 0, 30)
textBox.Position = UDim2.new(0.5, -300, 0.93, -370)
textBox.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
textBox.TextColor3 = Color3.new(0, 0, 0)
textBox.Text = "File name"
textBox.Visible = false
textBox.TextScaled = true
textBox.Parent = gui

local okButton = Instance.new("TextButton")
okButton.Size = UDim2.new(0, 105, 0, 30)
okButton.Position = UDim2.new(0.5, -300, 1, -370)
okButton.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
okButton.TextColor3 = Color3.new(0, 0, 0)
okButton.Text = "OK"
okButton.Visible = false
okButton.TextScaled = true
okButton.Parent = gui

local cancelButton = Instance.new("TextButton")
cancelButton.Size = UDim2.new(0, 105, 0, 30)
cancelButton.Position = UDim2.new(0.58, -300, 1, -370)
cancelButton.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
cancelButton.TextColor3 = Color3.new(0, 0, 0)
cancelButton.Text = "Cancel"
cancelButton.Visible = false
cancelButton.TextScaled = true
cancelButton.Parent = gui

okButton.MouseButton1Down:Connect(function()
    okPressed = true
end)

cancelButton.MouseButton1Down:Connect(function()
    cancelPressed = true
end)

filereadButton.MouseButton1Down:Connect(function()
    while true do
    filewriteButton.Visible = false
    textBox.Visible = true
    okButton.Visible = true
    cancelButton.Visible = true
    while okPressed == false do
        if cancelPressed == true then
            break
        end
        wait(0)
    end
    okPressed = false
    if cancelPressed == false then
        local file
	    local fileName
        local name = textBox.Text
		if name:sub(-3) == '.cd' then
			pcall(function() file = readfile(name) end)
			fileName = name
		else
			pcall(function() file = readfile(name..'.cd') end)
			fileName = name..'.cd'
		end
		if file then
            if string.len(file) ~= 49 then
                textBox.Text = 'This file is corrupted'
            else
                err = false
                for i = 1, 49 do
                    local char = string.sub(file, i, i)
                    if char ~= "0" and char ~= "1" then
                        textBox.Text = 'This file is corrupted'
                        err = true
                        break
                    end
                end
                if err == false then
                    lol = 1
                    for i = 1, 7 do
                        for j = 1, 7 do
                            if string.sub(file, lol, lol) == '0' then
                                squares[i][j].BackgroundColor3 = Color3.new(0, 0, 0)
                            else
                                squares[i][j].BackgroundColor3 = Color3.new(1, 1, 1)
                            end
                            lol = lol + 1
                        end
                end
                    cancelPressed = false
                    textBox.Visible = false
                    okButton.Visible = false
                    cancelButton.Visible = false
                    filewriteButton.Visible = true
                    break
                end
        end
		else
			textBox.Text = 'Cannot locate file "'..fileName..'". Is the file in the correct folder?'
		end
        else
            cancelPressed = false
            textBox.Visible = false
            okButton.Visible = false
            cancelButton.Visible = false
            filewriteButton.Visible = true
            break
        end
	end
end)

filewriteButton.MouseButton1Down:Connect(function()
    data = ''
    filereadButton.Visible = false
    filewriteButton.Visible = false
    textBox.Visible = true
    okButton.Visible = true
    cancelButton.Visible = true
    while okPressed == false do
        if cancelPressed == true then
            break
        end
        wait(0)
    end
    okPressed = false
    if cancelPressed == false then
    local fileName
    local name = textBox.Text
    if name:sub(-3) == '.cd' then
        fileName = name
    else
        fileName = name..'.cd'
    end

    for i = 1, 7 do
        for j = 1, 7 do
            if squares[i][j].BackgroundColor3 == Color3.new(0, 0, 0) then
                data = data..'0'
            else
                data = data..'1'
            end
        end
    end

    writefile(fileName, data)
    end
    cancelPressed = false
    textBox.Visible = false
    okButton.Visible = false
    cancelButton.Visible = false
    filereadButton.Visible = true
    filewriteButton.Visible = true
end)

local letters = {
    ["a"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛⬛⬛⬛⬛",
    },
    ["b"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴⬛⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛⬛⬛",
    },
    ["c"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛⬛⬛",
    },
    ["d"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴⬛⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴⬛⬛",
        "⬛⬛⬛⬛⬛",
    },
    ["e"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛⬛⬛",
    },
    ["f"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴⬛⬛⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["g"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["h"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["i"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛🔴⬛⬛",
        "⬛⬛🔴⬛⬛",
        "⬛⬛🔴⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["j"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛🔴⬛",
        "⬛⬛⬛🔴⬛",
        "⬛⬛⬛🔴⬛",
        "⬛🔴🔴⬛⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["k"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴⬛⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["l"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["m"] = {
        "⬛⬛⬛⬛⬛",
        "🔴⬛⬛⬛🔴",
        "🔴🔴⬛🔴🔴",
        "🔴⬛🔴⬛🔴",
        "🔴⬛⬛⬛🔴",
        "🔴⬛⬛⬛🔴",
        "⬛⬛⬛⬛⬛", 
    },
    ["n"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["o"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["p"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴⬛⬛⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["q"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛🔴⬛",
        "⬛⬛⬛⬛⬛",
    },
    ["r"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴🔴⬛⬛",
        "⬛🔴⬛🔴⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["s"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛⬛⬛",
        "⬛⬛🔴⬛⬛",
        "⬛⬛⬛🔴⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["t"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛🔴⬛⬛",
        "⬛⬛🔴⬛⬛",
        "⬛⬛🔴⬛⬛",
        "⬛⬛🔴⬛⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["u"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["v"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛⬛🔴⬛⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["w"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛⬛⬛⬛⬛",
        "⬛⬛⬛⬛⬛",
    },
    ["x"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛⬛🔴⬛⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛⬛⬛⬛⬛",
    },
    ["y"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛⬛🔴⬛⬛",
        "⬛⬛🔴⬛⬛",
        "⬛⬛🔴⬛⬛",
        "⬛⬛⬛⬛⬛",
    },
    ["z"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛🔴⬛",
        "⬛⬛🔴⬛⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛⬛⬛",
    },
    [" "] = {
        "⬛⬛⬛⬛⬛",
        "⬛⬛⬛⬛⬛",
        "⬛⬛⬛⬛⬛",
        "⬛⬛⬛⬛⬛",
        "⬛⬛⬛⬛⬛",
        "⬛⬛⬛⬛⬛",
        "⬛⬛⬛⬛⬛",
    }
}

local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(1, -220, 0, 20)
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame.BorderSizePixel = 0
frame.Parent = gui

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(1, 0, 0.5, 0)
textBox.Position = UDim2.new(0, 0, 0, 0)
textBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textBox.BorderSizePixel = 0
textBox.TextColor3 = Color3.fromRGB(0, 0, 0)
textBox.Text = "Just write..."
textBox.Parent = frame

local button = Instance.new("TextButton")
button.Size = UDim2.new(1, 0, 0.5, 0)
button.Position = UDim2.new(0, 0, 0.5, 0)
button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button.BorderSizePixel = 0
button.TextColor3 = Color3.fromRGB(0, 0, 0)
button.Text = "DRAW to chat"
button.Parent = frame

local function printTextBoxContents()
	local message = textBox.Text
	local final = {"","","","","","",""}
	for i = 1, #message do
	    local l = message:sub(i,i)
	    for x, line in pairs(letters[string.lower(l)]) do
	        final[x] = final[x] .. line
	    end
	end
	for _, v in pairs(final) do
	    game:GetService("ReplicatedStorage")["DefaultChatSystemChatEvents"].SayMessageRequest:FireServer(v, "All")
	end
end

button.MouseButton1Click:Connect(printTextBoxContents)
else
	print("Oops, chat isn't working classic or normally")
end