--[[Made by ThroughTheFireAndFlames#9925 |

         Anti Report [Universal]

--]]------------------------------------

getgenv().ForbiddenWords = {"hack","exploit","script","report","cheat","executor","skid","owner","creator","admin","staff","anti","mod"} -- Listens to these keywords no matter if they are capital letters or not

getgenv().Reaction = function() -- Serverhopper: Was not made by me but used rightfully as a open source tool for everyone to look at.
        local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService");
        local OtherServers = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"));
        function joinNew()
                if not isfile("servers.sss") then
                        writefile("servers.sss", HttpService:JSONEncode({}));
                end
                local dontJoin = readfile("servers.sss");
                dontJoin = HttpService:JSONDecode(dontJoin);
                for Index, Server in next, OtherServers['data'] do
                        if (Server ~= game.JobId) then
                                local j = true;
                                for a, c in pairs(dontJoin) do
                                        if (c == Server.id) then
                                                j = false;
                                        end
                                end
                                if j then
                                        table.insert(dontJoin, Server['id']);
                                        writefile("servers.sss", HttpService:JSONEncode(dontJoin));
                                        wait();
                                        return Server['id'];
                                end
                        end
                end
        end
        local server = joinNew();
        if not server then
                writefile("servers.sss", HttpService:JSONEncode({}));
                local server = joinNew();
                TPService:TeleportToPlaceInstance(game.PlaceId, server);
        else
                TPService:TeleportToPlaceInstance(game.PlaceId, server);
        end
end;

loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/AntiReport/main/Universal"))();