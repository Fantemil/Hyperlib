local SikusLib = loadstring(game:HttpGet("http://sikuscripts.lol/library.lua"))()


--Creating a window
local window = SikusLib:CreateWindow({
    Title = "Cool New Script !"; -- windows name 
    Font = nil;-- font keep as nil if u want to use default font
    DiscordInvite = ""; -- DiscordInvite
})

--creating a tab
local tab = window:CreateTab({
    Title = "Cool Tab";
    Font = nil;
})
--creating a section
local sec = tab:CreateSection({
    Title = "Cool SECTION!!";
    Font = nil;
})

--creating a button

local button = sec:CreateButton({
    Title = "COOL BUTTON";
    Info = 'PRINTS COOl222';
    Font = nil;
    Callback = function()
       -- print("COOL222")    
    end
})

--creating a Toggle


local Toggle = sec:CreateToggle({
    Title = "COOL TOGGLE";
    Info = 'PRINTS THE STATE';
    Font = nil;
    Callback = function(State)
       -- print(State)    
    end
})
--creating a dropdown 
local Dropdown = sec:CreateDropdown({
    Title = "cool dropdown!";
    Info = "cool dropdown ig";
    Font = nil;
    Options = {"ees","2","3","D","R","X","T","YU","POR"};
    SelectedOption = "ees";
    Callback = function(option)
       -- print(option)
    end
    
})

--creating a slider
local slider = sec:CreateSlider({
    Title = "Cool Slider";
    Info = "A walkspeed slider!";
    Font = nil;
    Max = 10;
    Current = 9;
    Min = 0;
    Callback = function(value)
        --print(value)
    end
})

--creating a text textbox

local textbox = sec:CreateTextBox({
    Title = "Cool textboxname";
    Info = "A cool text input!";
    Font = nil;
    PlaceHolderText = "PlaceHolderText";
    Text = "hi cutey";
    Callback = function(text)
     --   print(text)
    end
})
--refresh a dropdown
Dropdown:Refresh(<table>)