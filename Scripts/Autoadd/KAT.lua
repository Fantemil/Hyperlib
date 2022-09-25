 local cons = {
    [10] = 0,
    [30] = 0.01
}

local KnifeClient = game.Players.LocalPlayer.Character:FindFirstChild('KnifeClient', true)

if KnifeClient then
    local KnifeClientS = getsenv(KnifeClient)
   
    table.foreach(cons, function(i,v)
        setconstant(KnifeClientS.inputReleased, i, v)
    end)
   
    local old = KnifeClientS.PlayAnimation
   
    KnifeClientS.PlayAnimation = newcclosure(function(...)
        local Args = {...}
       
        if (Args[1] == 'Grab' or Args[1] == 'Charge' or string.find(Args[1], 'Slash')) then
            Args[2] = 0.05
            return old(unpack(Args))
        end
       
        return old(...)
    end)
end

game.Players.LocalPlayer.Character.ChildAdded:Connect(function(Child)
    if Child.Name == 'Knife' then
        local Element = getsenv(Child:FindFirstChild('KnifeClient', true))
       
        table.foreach(cons, function(i,v)
            setconstant(Element.inputReleased, i, v)
        end)
       
        local old = Element.PlayAnimation
       
        Element.PlayAnimation = newcclosure(function(...)
            local Args = {...}
           
            if (Args[1] == 'Grab' or Args[1] == 'Charge' or string.find(Args[1], 'Slash')) then
                Args[2] = 0.05
                return old(unpack(Args))
            end
           
            return old(...)
        end)
    end
end)