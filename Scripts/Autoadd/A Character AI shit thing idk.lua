--[[
	DISCLAIMER:
    not by me of course
    ignore the rest
	I am not affiliated with Character.AI or anything like that. 
	It’s just a project I did for fun. 
	I only use the API that I created using Web Scraping, 
	which is a technique to extract data from websites. 
	Therefore, this script is not endorsed or supported by the Character.AI team.

	Official Character.AI site: https://beta.character.ai/
]]

getfenv().YourToken = '';
getfenv().WaitAnswer = true;

--[[
	IMPORTANT:

	- If "YourToken" isn't set, the script logs in as a guest.

	    - Why you should get a token:
          - Guest can only send like 5 messages to a Character.
          - Guests cannot search for characters.
	
	    - With Character.AI, you can send as many messages as you want for free. 
        - The token is valid forever, so you only need to get it once.

	- Setting "WaitAnswer" to true makes the script wait for the bot's 
	  response before generating another one. This can help prevent flooding 
	  the chat with messages, but it also means the script won't be able 
	  to read incoming messages while waiting for a response.

    - Setting "WaitAnswer" to false makes the script respond quickly 
	  without waiting for the bot's response. This can be useful for 
	  certain scenarios, but it may flood the chat with messages.
]]

--[[
	to obtain your Character.AI token, 
	you can find a series of steps at the following 
	link: https://github.com/ElWapoteDev/CharacterAI-Luau#how-to-get-my-characterai-token



	If you are a developer or have knowledge in Luau,
	you can check out the GitHub repository of the module for Character.AI 
	to create your own implementations for Roblox. 
	Here is the link to the repository on GitHub: https://github.com/ElWapoteDev/CharacterAI-Luau
]]

loadstring(game:HttpGet('https://raw.githubusercontent.com/ElWapoteDev/CharacterAI-Luau/main/Examples/CharHub.lua', true))();