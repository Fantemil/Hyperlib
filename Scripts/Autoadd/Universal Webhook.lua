local OSTime = os.time();
local Time = os.date('!*t', OSTime);
local Avatar = 'https://cdn.discordapp.com/embed/avatars/4.png';
local Content = 'discord webhooks thru synapse';
local Embed = {
    title = 'cool';
    color = '99999';
    footer = { text = game.JobId };
    author = {
        name = 'ROBLOX';
        url = 'https://www.roblox.com/';
    };
    fields = {
        {
            name = 'gay man';
            value = '123';
        }
    };
    timestamp = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec);
};
(syn and syn.request or http_request) {
    Url = 'webhook url';
    Method = 'POST';
    Headers = {
        ['Content-Type'] = 'application/json';
    };
    Body = game:GetService'HttpService':JSONEncode( { content = Content; embeds = { Embed } } );
};