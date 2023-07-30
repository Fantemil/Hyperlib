local key = "f8d385116999135249bbe529651ad39bd5b4e90e65f670269d622f817f75a38e"
-- replace with your actual encryption key

-- encryption
local function encrypt(str)
    local encrypted = ""
    for i = 1, #str do
        local byte = string.byte(str, i)
        local keyByte = string.byte(key, (i - 1) % #key + 1)
        local encryptedByte = bit32.bxor(byte, keyByte)
        encrypted = encrypted .. string.char(encryptedByte)
    end
    return encrypted
end

-- decryption
local function decrypt(encrypted)
    local str = ""
    for i = 1, #encrypted do
        local encryptedByte = string.byte(encrypted, i)
        local keyByte = string.byte(key, (i - 1) % #key + 1)
        local byte = bit32.bxor(encryptedByte, keyByte)
        str = str .. string.char(byte)
    end
    return str
end

-- function to ask for password and check if it's correct
local function askForPassword(password)
    rconsoleinfo("Please enter your password: ")
    local input = rconsoleinput()
    if encrypt(input) == password then
        rconsoleprint("@@GREEN@@")
        rconsoleprint("Password accepted.\n")
        return true
    else
        rconsoleprint("@@RED@@")
        rconsoleprint("Password incorrect.\n")
        return false
    end
end

-- function to display a math question and check if the answer is correct
local function solveMathQuestion(question, answer)
    rconsoleinfo(question .. "\n")
    local input = tonumber(rconsoleinput())
    if input == answer then
        rconsoleprint("@@GREEN@@")
        rconsoleprint("Correct answer!\n")
        return true
    else
        rconsoleprint("@@RED@@")
        rconsoleprint("Incorrect answer.\n")
        return false
    end
end

-- set up the password and math questions
local password = encrypt("mypassword") -- replace with your actual password
local mathQuestions = {
    {"What is 5 + 3?", 8},
    {"What is 12 - 7?", 5},
    {"What is 2 * 4?", 8},
    {"What is 20 / 4?", 5},
    {"What is 9 + 6 - 4?", 11},
    {"What is 3 ^ 2?", 9},
    {"What is 10 % 3?", 1}
    -- add more equations as desired
}

-- clear the console and greet the user
rconsoleclear()
rconsoleprint("Welcome to my script!\n")

-- ask the user to select a mode
rconsoleprint("Please select a mode: (1) Password, (2) Math Question\n")
local mode = tonumber(rconsoleinput())

-- check the selected mode and perform the corresponding action
if mode == 1 then
    while not askForPassword(password) do
    end
elseif mode == 2 then
    local questionIndex = math.random(1, #mathQuestions)
    while not solveMathQuestion(mathQuestions[questionIndex][1], mathQuestions[questionIndex][2]) do
        questionIndex = math.random(1, #mathQuestions)
    end
else
    rconsoleerr("Invalid mode selected.\n")
end

--Script here
print("W Moment")
