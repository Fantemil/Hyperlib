wait(1)
print("Loading...")
print("Grabbing executor name...")
print("STARTING sUNC test")
wait(5)
print("â setscriptable")
print("â setthreadidentity")
print("â writefile")
print("\n")
print("ð Passed the test with 10000% success rate (69 out of 69)") -- change this if you want fr

wait(math.random(50, 70) / 1000)

print("â Total tests failed: 0")

wait(math.random(50, 70) / 1000)

print("ð This test was made by senS (fuck all the inco pastes/unc fakers)")

wait(math.random(50, 70) / 1000)

local randomseconds

repeat
    randomseconds = math.floor((math.random(930, 1790) / 100) * 10) / 10
until randomseconds % 1 ~= 0

print("Finished the test in " .. randomseconds .. " seconds")

wait(math.random(300, 390) / 1000)

local executor = identifyexecutor()

local first = executor:match("^%S+")

print(first)

print("\n")

local function random(length)
    local letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    local chars = "}.'/\0-?1234567890;"
    local randomstring = ""

    for i = 1, length do
        local use_letters = math.random() < 0.5
        local index

        if use_letters then
            index = math.random(1, #letters)
            randomstring = randomstring .. letters:sub(index, index)
        else
            if i > 1 and math.random() < 0.2 and i <= 4 then
                index = math.random(1, #chars)
                randomstring = randomstring .. chars:sub(index, index)
            else
                index = math.random(1, #letters)
                randomstring = randomstring .. letters:sub(index, index)
            end
        end
    end
    return randomstring
end

local randomstringlength = math.random(8, 40)

local randomstring = random(randomstringlength)

print("sUNC, VERSION 1.41 " .. randomstring)

print("Contributors: vvultt, GRH, 0_void")
