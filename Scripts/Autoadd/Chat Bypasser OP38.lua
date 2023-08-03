local NotificationBindable = Instance.new("BindableFunction")
                NotificationBindable.OnInvoke = callback
                --
                game.StarterGui:SetCore("SendNotification",  {
                 Title = "USE AN ALT";
                 Text = "You are gonna get banned after a while";
                 Icon = "";
                 Duration = 5;
                 Callback = NotificationBindable;
                })
            


-- you can only use the words that are listed under here

local Bypasses = {
    ["ass"] = "as{{aieixzvzx:s}}",
    ["cumming"] = "cu{{aieixzvzx:mming}}",
    ["i love dick"] = "i love {{aieixzvzx:dick}}",
    ["dick sucker"] = "di{{aieixzvzx:ck sucker}}",
    ["asshole"] = "as{{aieixzvzx:shole}}",
    ["bitch"] = "bit{{aieixzvzx:ch}}",
    ["cock"] = "co{{aieixzvzx:ck}}",
    ["cunt"] = "cu{{aieixzvzx:nt}}",
    ["dick"] = "di{{zczxczvz:ck}}",
    ["dyke"] = "dy{{aieixzvzx:ke}}",
    ["faggot"] = "fa{{aieixzvzx:ggot}}",
    ["fuck"] = "fu{{aieixzvzx:ck}}",
    ["gaylord"] = "gayl{{aieixzvzx:ord}}",
    ["cum"] = "cu{{aieixzvzx:m}}",
    ["sex"] = "se{{aieixzvzx:x}}",
    ["hitler"] = "hit{{aieixzvzx:ler}}",
    ["cum"] = "cu{{aieixzvzx:m}}",
    ["kike"] = "ki{{aieixzvzx:ke}}",
    ["motherfucker"] = "motherf{{aieixzvzx:ucker}}",
    ["nigga"] = "ni{{aieixzvzx:gga}}",
    ["nigger"] = "ni{{aieixzvzx:gger}}",
    ["piss"] = "p{{aieixzvzx:iss}}",
    ["penis"] = "pe{{aieixzvzx:nis}}",
    ["pussy"] = "pu{{aieixzvzx:ssy}}",
    ["shit"] = "sh{{aieixzvzx:it}}",
    ["slut"] = "sl{{aieixzvzx:ut}}",
    ["whore"] = "who{{aieixzvzx:re}}",
    ["discord"] = "disco{{aieixzvzx:rd}}",
    ["kys"] = "k{{aieixzvzx:ys}}",
    ["slave"] = "sla{{aieixzvzx:ve}}",
    ["niggers"] = "ni{{aieixzvzx:ggers}}",
    ["kill"] = "ki{{aieixzvzx:ll}}",
    ["date"] = "da{{aieixzvzx:te}}",
    ["raped"] = "ra{{aieixzvzx:ped}}",
    ["rape"] = "ra{{aieixzvzx:pe}}",
    ["hentai"] = "hen{{aieixzvzx:tai}}",
    ["pornhub"] = "po{{aieixzvzx:rnhub}}",
    ["childporn"] = "childpo{{aieixzvzx:rn}}",
    ["xvideos"] = "xvi{{aieixzvzx:deos}}",
    ["fucking"] = "fuc{{aieixzvzx:king}}",
    ["tits"] = "ti{{aieixzvzx:ts}}",
    ["discord.com"] = "disco{{aieixzvzx:rd.com}}"


}

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remote = ReplicatedStorage:FindFirstChild("SayMessageRequest", true)

local ChatBypass; ChatBypass = hookmetamethod(Remote, "__namecall", function(self, ...)
    local Method = getnamecallmethod()
    local Arguments = {...}
    
    if self == Remote and Method == "FireServer" then
        local Message = Arguments[1]
        local Split = Message:split(" ")
        local FinalMessage = ""

        for _, x in next, Split do
            for _, Bypass in next, Bypasses do
                if x:lower() == _ then
                    if x:upper() ~= x then
                        Message = Message:gsub(x, Bypass)
                        FinalMessage = Message .. " fn"
                    else
                        Message = Message:gsub(x, Bypass):upper()
                        FinalMessage = Message:gsub(x, Bypass):upper() .. " fn"
                    end
                end
            end
        end
        
        if FinalMessage ~= "" then
            Arguments[1] = FinalMessage
        end
        
        return ChatBypass(self, unpack(Arguments))
    end
    
    return ChatBypass(self, ...)
end)