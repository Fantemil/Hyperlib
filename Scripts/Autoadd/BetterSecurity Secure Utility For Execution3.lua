-- // Variables

blockrequests = true -- blocks http requests, discord webhooks and invite requests
blockkicks = true -- blocks player kicks and game shutdowns
blockfilecreation = false -- blocks files being made (not recommended)
blockpartcreation = true -- blocks mass amount of part creation (not recommended)
blockpartcreationrulelimit = 1 -- set the rule limit for part creation if enabled
antifirechat = true -- prevents scripts from saying things you didnt say
anonymity = true -- keps your player information secure


-- // BetterSecurity (Open-Source)
loadstring(game:HttpGet("https://raw.githubusercontent.com/sy-nn/synergy/additional/bettersecurity",true))()