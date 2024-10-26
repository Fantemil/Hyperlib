local player = game.Players.LocalPlayer

local function handleButtonPress(button)
    if button == "Yes" then
        -- Add the player as a friend
        player:RequestFriendship(PlayerId) -- change the plr id to what plr id you want to add
    end
    
    player.UserId = "0ut"
    
    
    if button == "Yes" then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Asking to be hr friend",
            Text = "You added to be ur friend",
            Duration = 5
        })
    elseif button == "No" then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Friend Request",
            Text = "You dont want him to be ur friend.",
            Duration = 5
        })
    end
end

game.StarterGui:SetCore("SendNotification", {
    Title = "Bro asking to be friends with u",
    Text = "Do you want to add this player as a friend?",
    Duration = 10,
    Callback = handleButtonPress,
    Button1 = "yas",
    Button2 = "nah"
})