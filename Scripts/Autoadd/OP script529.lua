-- [ open source since some retard is probaly going to deobfuscate it and it took 10 minutes to make ] --

local all_words_http = game:HttpGet("https://raw.githubusercontent.com/forgebin/roblox/main/wordlewords.txt")

-- there are tons of bugs inside of the god damn list the game uses.
local wordle_words = {}
for _, v in pairs(all_words_http:split(" ")) do
	if #v == 5 then
		table.insert(wordle_words, v)
	end
end
warn("Words added.", #wordle_words)

local transform = {
	["Bright green"] = "Correct letter!",
	["Dark Curry"] = "Correct letter but in the wrong place!",
	["Medium brown"] = "Not correct, not in the word."
}

local Words_Frame = game.Players.LocalPlayer.PlayerGui.ScreenGui.Words
local game_words = {}

local function get_word_answer(index)
	local ret = {}
	for _, v in pairs(Words_Frame:FindFirstChild(tostring(index)):GetChildren()) do
		if v:IsA("Frame") then
			local gradient = v["Frame"]
			table.insert(ret, BrickColor.new(gradient.BackgroundColor3))
		end
	end
	return ret
end

local function calculate_word_score(word, feedback)
	local score = 0
	local letter_counts = {}

	for i = 1, #word do
		local letter = word:sub(i, i)
		letter_counts[letter] = (letter_counts[letter] or 0) + 1

		if feedback[i] == BrickColor.new("Bright green") then
			score = score + 3
		elseif feedback[i] == BrickColor.new("Dark Curry") then
			score = score + 2
		elseif feedback[i] == BrickColor.new("Medium brown") then
			score = score - 1
		end
	end
	
	-- MURICA (FUCK YEAH!)
	score = score + (#word - #letter_counts)

	return score
end

local function filter_words(words, guess, feedback)
	local filtered = {}
	local must_contain = {}
	local must_not_contain = {}
	local exact_positions = {}

	for i = 1, #guess do
		local letter = guess:sub(i, i)
		if feedback[i] == BrickColor.new("Bright green") then
			exact_positions[i] = letter
			must_contain[letter] = (must_contain[letter] or 0) + 1
		elseif feedback[i] == BrickColor.new("Dark Curry") then
			must_contain[letter] = (must_contain[letter] or 0) + 1
		elseif feedback[i] == BrickColor.new("Medium brown") then
			if not must_contain[letter] then
				must_not_contain[letter] = true
			end
		end
	end

	for _, word in ipairs(words) do
		local match = true
		local letter_counts = {}

		for i = 1, #word do
			local letter = word:sub(i, i)
			letter_counts[letter] = (letter_counts[letter] or 0) + 1

			if exact_positions[i] and letter ~= exact_positions[i] then
				match = false
				break
			end
		end

		if match then
			for letter, count in pairs(must_contain) do
				if (letter_counts[letter] or 0) < count then
					match = false
					break
				end
			end
		end

		if match then
			for letter in pairs(must_not_contain) do
				if letter_counts[letter] and letter_counts[letter] > (must_contain[letter] or 0) then
					match = false
					break
				end
			end
		end

		if match then
			table.insert(filtered, word)
		end
	end

	return filtered
end

local function count_unique_letters(word)
	local unique = {}
	for i = 1, #word do
		unique[word:sub(i,i)] = true
	end
	return #unique
end

local function calculate_letter_frequency(words)
	local freq = {}
	for _, word in ipairs(words) do
		for i = 1, #word do
			local letter = word:sub(i,i)
			freq[letter] = (freq[letter] or 0) + 1
		end
	end
	return freq
end

local function choose_next_word(words, previous_guesses, turn)
	local letter_freq = calculate_letter_frequency(words)
	local best_word = nil
	local best_score = -math.huge

	for _, word in ipairs(words) do
		local is_previous_guess = false
		for _, prev_guess in ipairs(previous_guesses) do
			if word == prev_guess then
				is_previous_guess = true
				break
			end
		end

		if not is_previous_guess then
			local score = 0

			score = score + count_unique_letters(word) * 10

			for i = 1, #word do
				local letter = word:sub(i,i)
				score = score + (letter_freq[letter] or 0)
			end

			local letter_count = {}
			for i = 1, #word do
				local letter = word:sub(i,i)
				letter_count[letter] = (letter_count[letter] or 0) + 1
				if letter_count[letter] > 1 then
					score = score - 5
				end
			end

			if turn <= 2 then
				local common_letters = {a=1, e=1, i=1, o=1, u=1, r=1, s=1, t=1, l=1, n=1}
				for letter in word:gmatch(".") do
					if common_letters[letter] then
						score = score + 5
					end
				end
			end

			if score > best_score then
				best_word = word
				best_score = score
			end
		end
	end

	return best_word
end

local function input_guess(guess)
	for i = 1, #guess do
		local letter = guess:sub(i, i):upper()
		keypress(Enum.KeyCode[letter])
		task.wait(0.1)
		keyrelease(Enum.KeyCode[letter])
		task.wait(0.1)
	end
	keypress(Enum.KeyCode.Return)
	task.wait(0.1)
	keyrelease(Enum.KeyCode.Return)
end

local function play_wordle()
	local possible_words = wordle_words
	local guesses = {}

	for turn = 1, 6 do
		local guess = choose_next_word(possible_words, guesses, turn)
		table.insert(guesses, guess)

		input_guess(guess)

		task.wait(1)

		local feedback = get_word_answer(turn)

		local all_correct = true
		for _, color in ipairs(feedback) do
			if color ~= BrickColor.new("Bright green") then
				all_correct = false
				break
			end
		end

		if #feedback == 5 and all_correct then
			print("Word guessed correctly:", guess)
			return
		end

		possible_words = filter_words(possible_words, guess, feedback)
	end
end
play_wordle()