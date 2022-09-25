 getgenv().settings = {
    ['ON'] = true;
    ['REBIRTH AMOUNT'] = 5;
    ['CODE'] = 'GET AUTOFARMED CUNT';
    ['MONSTER TYPE'] = 'Bear'
}
while getgenv().settings['ON'] == true do
wait();
game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("SpawnMonster", getgenv().settings['MONSTER TYPE'], getgenv().settings['CODE'])
for i = 0 , 100 ,1 do
game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer("MonsterTakeDamage", getgenv().settings['MONSTER TYPE'], getgenv().settings['CODE'])
wait();
end;
game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("RebirthPlayer", getgenv().settings['REBIRTH AMOUNT'], UDim2.new({0, 1141}, {0, 296}), false)
end;