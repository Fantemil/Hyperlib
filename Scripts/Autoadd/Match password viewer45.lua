local lobbyList = game:GetService('Players').LocalPlayer.PlayerGui.joinMatch.popUp.scrollFrame

for i,v in pairs(lobbyList:GetChildren()) do
   if v.Name == 'MatchItem' and v.MatchItem.lockIcon.Visible then
       v.MatchItem.ownerName.Text = v.MatchItem.ownerName.Text .. ' (' .. v.MatchItem.password.Value .. ')'
   end
end

lobbyList.ChildAdded:Connect(function(v)
   if v.Name == 'MatchItem' and v.MatchItem.lockIcon.Visible then
       v.MatchItem.ownerName.Text = v.MatchItem.ownerName.Text .. ' (' .. v.MatchItem.password.Value .. ')'
   end
end)