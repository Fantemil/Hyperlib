local correctKey = "Key" -- Change to your desired key

rconsoletitle("Key Authentication System")
rconsoleclear()

rconsoleinfo("*************************************************************************\n")
rconsoleinfo("DISCLAIMER: This console script is provided as an example\n")
rconsoleinfo("*************************************************************************\n")

rconsoleinfo("Welcome to the Key Authentication System!\n")
rconsoleinfo("---------------------------------------------------\n")
rconsoleinfo("To get your authentication key, please join our Discord server.\n")
rconsoleinfo("You can find the link to our server in the game's description or on our game's website.\n")
rconsoleinfo("---------------------------------------------------\n")

local keyAccepted = false
while not keyAccepted do
    rconsoleprint("Please enter your key: ")

    -- Get the user's key input
    local userInput = rconsoleinput()

    if userInput == correctKey then
        rconsoleinfo("Key Accepted! Loading the Infinite Yield Script...\n")
        keyAccepted = true
        
        -- Load the Infinite Yield Script (or any other desired script)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))() -- Change URL if different
    else
        rconsolewarn("Incorrect Key. Please verify your key or join our Discord for assistance.\n")
    end
end
