-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a Frame to hold the quiz
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.5, 0, 0.5, 0)
frame.Position = UDim2.new(0.25, 0, 0.25, 0)
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame.Parent = screenGui

-- Create the close button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 50, 0, 50)
closeButton.Position = UDim2.new(1, -50, 0, 0)
closeButton.Text = "X"
closeButton.TextScaled = true
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Parent = frame

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Create a TextLabel for the question number
local questionNumberLabel = Instance.new("TextLabel")
questionNumberLabel.Size = UDim2.new(1, 0, 0.1, 0)
questionNumberLabel.Position = UDim2.new(0, 0, 0, 0)
questionNumberLabel.TextScaled = true
questionNumberLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
questionNumberLabel.Parent = frame

-- Create a TextLabel for the question
local questionLabel = Instance.new("TextLabel")
questionLabel.Size = UDim2.new(1, 0, 0.3, 0)
questionLabel.Position = UDim2.new(0, 0, 0.1, 0)
questionLabel.TextScaled = true
questionLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
questionLabel.Parent = frame

-- Create a TextLabel for the timer
local timerLabel = Instance.new("TextLabel")
timerLabel.Size = UDim2.new(1, 0, 0.1, 0)
timerLabel.Position = UDim2.new(0, 0, 0.4, 0)
timerLabel.TextScaled = true
timerLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
timerLabel.Parent = frame

-- Create a TextLabel for the score
local scoreLabel = Instance.new("TextLabel")
scoreLabel.Size = UDim2.new(1, 0, 0.1, 0)
scoreLabel.Position = UDim2.new(0, 0, 0.5, 0)
scoreLabel.TextScaled = true
scoreLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
scoreLabel.Parent = frame

-- Function to create a new button
local function createButton(text, position)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.8, 0, 0.1, 0)
    button.Position = position
    button.Text = text
    button.TextScaled = true
    button.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
    button.Parent = frame
    return button
end

-- Quiz data
local quizzes = {
    {question = "What is the capital of France?", answers = {"Paris", "London", "Berlin", "Madrid"}, correctAnswer = "Paris"},
    {question = "What is 2 + 2?", answers = {"3", "4", "5", "6"}, correctAnswer = "4"},
    {question = "What color is the sky?", answers = {"Blue", "Red", "Green", "Yellow"}, correctAnswer = "Blue"},
    {question = "What is the largest planet?", answers = {"Earth", "Mars", "Jupiter", "Saturn"}, correctAnswer = "Jupiter"},
    {question = "How many continents are there?", answers = {"5", "6", "7", "8"}, correctAnswer = "7"},
    {question = "What is the capital of Japan?", answers = {"Beijing", "Tokyo", "Seoul", "Bangkok"}, correctAnswer = "Tokyo"},
    {question = "Which ocean is the largest?", answers = {"Atlantic", "Indian", "Pacific", "Arctic"}, correctAnswer = "Pacific"},
    {question = "What is H2O?", answers = {"Oxygen", "Hydrogen", "Water", "Carbon Dioxide"}, correctAnswer = "Water"},
    {question = "What is the speed of light?", answers = {"300,000 km/s", "150,000 km/s", "450,000 km/s", "600,000 km/s"}, correctAnswer = "300,000 km/s"},
    {question = "Which country is known as the Land of the Rising Sun?", answers = {"China", "South Korea", "Japan", "Thailand"}, correctAnswer = "Japan"},
}

-- Initialize variables
local currentQuestionIndex = 1
local score = 0
local timeLimit = 30 -- seconds per question
local timer = timeLimit

-- Rainbow effect variables
local isRainbow = false
local colors = {Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 127, 0), Color3.fromRGB(255, 255, 0), Color3.fromRGB(0, 255, 0), Color3.fromRGB(0, 0, 255), Color3.fromRGB(75, 0, 130), Color3.fromRGB(148, 0, 211)}
local colorIndex = 1

-- Function to display a question
local function displayQuestion()
    if currentQuestionIndex > #quizzes then
        questionLabel.Text = "Quiz Complete! Your score: " .. score .. "/" .. #quizzes
        questionNumberLabel.Text = ""
        scoreLabel.Text = ""
        timerLabel.Text = ""
        wait(3)
        screenGui:Destroy()
        return
    end

    local quiz = quizzes[currentQuestionIndex]

    questionNumberLabel.Text = "Question " .. currentQuestionIndex .. " of " .. #quizzes
    questionLabel.Text = quiz.question
    scoreLabel.Text = "Score: " .. score
    timer = timeLimit

    -- Remove old answer buttons
    for _, button in pairs(frame:GetChildren()) do
        if button:IsA("TextButton") and button ~= closeButton then
            button:Destroy()
        end
    end

    -- Create new answer buttons
    for i, answer in ipairs(quiz.answers) do
        local button = createButton(answer, UDim2.new(0.1, 0, 0.6 + (i-1) * 0.1, 0))
        button.MouseButton1Click:Connect(function()
            if button.Text == quiz.correctAnswer then
                score = score + 1
                questionLabel.Text = "Correct!"
                questionLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
                isRainbow = true
            else
                questionLabel.Text = "Incorrect!"
                questionLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
                isRainbow = false
            end
            currentQuestionIndex = currentQuestionIndex + 1
            wait(2)
            displayQuestion()
        end)
    end
end

-- Function to update the timer
local function updateTimer()
    while currentQuestionIndex <= #quizzes do
        if timer > 0 then
            timer = timer - 1
            timerLabel.Text = "Time left: " .. timer .. "s"
        else
            questionLabel.Text = "Time's up!"
            questionLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
            isRainbow = false
            currentQuestionIndex = currentQuestionIndex + 1
            wait(2)
            displayQuestion()
        end
        wait(1)
    end
end

-- Function to handle the rainbow effect
local function rainbowEffect()
    while true do
        if isRainbow then
            frame.BackgroundColor3 = colors[colorIndex]
            colorIndex = (colorIndex % #colors) + 1
        else
            frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        end
        wait(0.1)
    end
end

-- Start the quiz
displayQuestion()
spawn(updateTimer)
spawn(rainbowEffect)