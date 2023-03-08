local player = game.Players.LocalPlayer;
local char = player.Character;
local bonus = game:GetService("Workspace").Obby.RewardPart;
local wind = game:GetService("Workspace").Obby.Windmill.BlowFunction.TouchPart;
local foot = char.LeftFoot;
local my_tycoon = nil;

getgenv().start = false; --enables me to quick restart while developing
while wait(1) and getgenv().running == true do
end
getgenv().start = true;
if(getgenv().start ~= true) then
    return;
end

while wait(0.1) and my_tycoon == nil and getgenv().start == true do
    for _,tycoon in pairs(game:GetService("Workspace").Tycoons:GetChildren()) do
        if(tycoon:FindFirstChild("Owner").Value == player.Name) then
            my_tycoon = tycoon;        
        end
    end
end

local last_vals = {};
local cow_scale = function(num,str)
    if(last_vals[str] == nil) then last_vals[str] = num; end
    last_vals[str] = num;
    if(last_vals[str] > num) then return false end
    return num > math.max(player.leaderstats.Cows.Value*20,100);
end
local buy_dictionary = {
        upgrade = {
            button = my_tycoon.Buttons.Upgrade,
            condition = function() return true; end
        },
        cow6 = {
            button = my_tycoon.Buttons.Cow6,
            condition = function() return true; end
        },
        cow = {
            button = my_tycoon.Buttons.Cow,
            condition = function() return true; end
        },
        process10 = {
            button = my_tycoon.Buttons.Processor10,
            condition = function()
                return cow_scale(tonumber(my_tycoon.Processor.Main.BillboardGui.Title.Text),'process10');
            end
        },
        process = {
            button = my_tycoon.Buttons.ProcessorTick,
            condition = function()
                return cow_scale(tonumber(my_tycoon.Processor.Main.BillboardGui.Title.Text),'process');
            end
        },
        sell10 = {
            button = my_tycoon.Buttons.Sell10,
            condition = function()
                return cow_scale(tonumber(my_tycoon.Tank.Main.BillboardGui.Title.Text),'sell10');
            end
        },
        sell = {
            button = my_tycoon.Buttons.SellTick,
            condition = function()
                return cow_scale(tonumber(my_tycoon.Tank.Main.BillboardGui.Title.Text),'sell');
            end
        },
};

local buy_items = {
    --buy_dictionary.upgrade,
    buy_dictionary.cow6,
    buy_dictionary.cow,
    buy_dictionary.upgrade,
    buy_dictionary.process10,
    buy_dictionary.process,
    buy_dictionary.sell10,
    buy_dictionary.sell,
}

local processor = my_tycoon.Buttons.Process;

local collect = function()
    for _,drop in pairs(my_tycoon.Drops:GetChildren()) do
        local part = drop:FindFirstChild("HitBox");
        if(part == nil) then
            part = drop:FindFirstChildOfClass("Part");
        end
        if(part) then
            part.CFrame = char.HumanoidRootPart.CFrame;
        end
    end

end

local buy_time = 0;
local try_buy = function()
    if(buy_time > os.time()) then return; end
    buy_time = os.time() + (#buy_items*3);
    for _,item in pairs(buy_items) do
        if(item.condition()) then
            firetouchinterest(foot,item.button,0);
            wait(0.5);
            firetouchinterest(foot,item.button,1);
            wait(0.5);
            --Not ideal to call in the middle of a totally seperate function, but I don't want to not collect the whole time this is running
            collect();
        end
    end
end

local process = function()
    firetouchinterest(foot,processor,0);
    wait(.5);
    firetouchinterest(foot,processor,1);
    wait(.5);
end
local obby_time = 0;

local do_obby = function()
    if(obby_time  > os.time()) then return; end
    local oldCFrame = char.HumanoidRootPart.CFrame;
    obby_time = os.time() + 95;
    firetouchinterest(foot,wind,0);
    wait(.1);
    firetouchinterest(foot,wind,1);
    wait(.1);
    firetouchinterest(foot,bonus,0);
    wait(.1);
    firetouchinterest(foot,bonus,1);
    wait(1.5);
    char.HumanoidRootPart.CFrame = oldCFrame;
end


while wait(1) and getgenv().start do
--I was spawning, but I think the touchinterests were interfering with each other
    if(getgenv().running ~= true) then
        spawn(function()
            getgenv().running = true;
            collect();
            process();
            try_buy();
            do_obby();
            getgenv().running = false;
        end);
    end
end