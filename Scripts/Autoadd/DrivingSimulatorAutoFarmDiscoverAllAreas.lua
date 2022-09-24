shared.config = {
   host = '', -- the name of the primary account you will use to autofarm
   race = '', -- the name of the race you want to participate in
}

-- here is a list of races: https://gist.githubusercontent.com/wally-rblx/f8678afce0ef5f2d0945b4648e438ab8/raw/93452a9c99dc2b4ea5f228acb3ae40248f65eee3/races.txt
-- sorted by highest multiplier
-- copy the name of the race which is between the quotes

-- you need to use multiple accounts for this to work :)
loadstring(game:HttpGet('https://raw.githubusercontent.com/wally-rblx/roblox-scripts/main/driving-simulator/autofarm.lua'))()