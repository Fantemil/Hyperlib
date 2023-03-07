local Item = "Any Item Name" -- (Must be in the persons store)

local BuyNPC = workspace.NPCs.Manni.Manni -- NPC at Starter Island (Redwood, Redlake what ever its called)

local args = {
    [1] = BuyNPC,
    [2] = "{\"Level\":1,\"Name\":\""..Item.."\",\"Amount\":1}",
    [3] = "",
    [4] = -1000000
}

game:GetService("ReplicatedStorage").RS.Remotes.Misc.BuyItem:InvokeServer(unpack(args))