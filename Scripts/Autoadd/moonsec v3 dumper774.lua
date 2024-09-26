local old = unpack
local old_append = appendfile 

local output = "yes.txt"

local Credits = "\n"..[[

          _____                   _______                   _____           _______                   _____                    _____                    _____          
         /\    \                 /::\    \                 /\    \         /::\    \                 /\    \                  /\    \                  /\    \         
        /::\    \               /::::\    \               /::\____\       /::::\    \               /::\    \                /::\    \                /::\____\        
       /::::\    \             /::::::\    \             /:::/    /      /::::::\    \             /::::\    \              /::::\    \              /:::/    /        
      /::::::\    \           /::::::::\    \           /:::/    /      /::::::::\    \           /::::::\    \            /::::::\    \            /:::/    /         
     /:::/\:::\    \         /:::/~~\:::\    \         /:::/    /      /:::/~~\:::\    \         /:::/\:::\    \          /:::/\:::\    \          /:::/    /          
    /:::/__\:::\    \       /:::/    \:::\    \       /:::/    /      /:::/    \:::\    \       /:::/  \:::\    \        /:::/__\:::\    \        /:::/____/           
    \:::\   \:::\    \     /:::/    / \:::\    \     /:::/    /      /:::/    / \:::\    \     /:::/    \:::\    \      /::::\   \:::\    \       |::|    |            
  ___\:::\   \:::\    \   /:::/____/   \:::\____\   /:::/    /      /:::/____/   \:::\____\   /:::/    / \:::\    \    /::::::\   \:::\    \      |::|    |     _____  
 /\   \:::\   \:::\    \ |:::|    |     |:::|    | /:::/    /      |:::|    |     |:::|    | /:::/    /   \:::\ ___\  /:::/\:::\   \:::\    \     |::|    |    /\    \ 
/::\   \:::\   \:::\____\|:::|____|     |:::|    |/:::/____/       |:::|____|     |:::|    |/:::/____/     \:::|    |/:::/__\:::\   \:::\____\    |::|    |   /::\____\
\:::\   \:::\   \::/    / \:::\    \   /:::/    / \:::\    \        \:::\    \   /:::/    / \:::\    \     /:::|____|\:::\   \:::\   \::/    /    |::|    |  /:::/    /
 \:::\   \:::\   \/____/   \:::\    \ /:::/    /   \:::\    \        \:::\    \ /:::/    /   \:::\    \   /:::/    /  \:::\   \:::\   \/____/     |::|    | /:::/    / 
  \:::\   \:::\    \        \:::\    /:::/    /     \:::\    \        \:::\    /:::/    /     \:::\    \ /:::/    /    \:::\   \:::\    \         |::|____|/:::/    /  
   \:::\   \:::\____\        \:::\__/:::/    /       \:::\    \        \:::\__/:::/    /       \:::\    /:::/    /      \:::\   \:::\____\        |:::::::::::/    /   
    \:::\  /:::/    /         \::::::::/    /         \:::\    \        \::::::::/    /         \:::\  /:::/    /        \:::\   \::/    /        \::::::::::/____/    
     \:::\/:::/    /           \::::::/    /           \:::\    \        \::::::/    /           \:::\/:::/    /          \:::\   \/____/          ~~~~~~~~~~          
      \::::::/    /             \::::/    /             \:::\    \        \::::/    /             \::::::/    /            \:::\    \                                  
       \::::/    /               \::/____/               \:::\____\        \::/____/               \::::/    /              \:::\____\                                 
        \::/    /                 ~~                      \::/    /         ~~                      \::/____/                \::/    /                                 
         \/____/                                           \/____/                                   ~~                       \/____/                                  
                                                                                                                                           
                                                                    Moonsec V3 Dumper made by Solodev
]]
         


local function appendfile(filename,content)
    if not isfile(filename) then 
        writefile(filename,string.format("%s\n %s",Credits,content))
    end 

    return old_append(filename,content)
end 

local function format(tab)
    local result = "{"
    for index, value in pairs(tab) do
        if type(value) == "table" then
            result = result .. format(value)
        else
            result = result .. string.format("\n'Index: %s' | 'Value: %s', ", tostring(index), tostring(value))
        end
    end
    result = result:sub(1, -3) .. "\n},\n" 
    return result
end

local function foreach(tab)
    if type(tab) == "table" then 
        for index, value in pairs(tab) do 
            if type(value) == "table" then
                appendfile(output, format(value) .. "\n")
            else
                appendfile(output, string.format("{Index: %s | Value: %s\n", tostring(index), tostring(value)))
            end
        end
    end 
end 

function unpack(...)
    if type(old(...)) == "table" then 
        foreach(old(...))
    end 
    return old(...)
end 


--[[ Script ]]-- 

--> Put your obfuscated script here 
--> Using tbo as an example : It will freeze your game for a bit and then create a file named after your output
--> then it will basically just put all the stuff in there, just wait for it to be done

--> either loadstring or just the pasted script here 
--> btw dont use tbo its skidded lmao (this is only used for a example)

loadstring(game:HttpGet("https://raw.githubusercontent.com/cool5013/TBO/refs/heads/main/paid"))()