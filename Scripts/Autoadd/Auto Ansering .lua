local anslist={"portuguese","killer whale","lamborghini","microwave","wisdom teeth","master bedroom","reindeer","microphones","red cabbage","strawberry ice cream","colour pencils","vitamin delicious","deppresion","leopard","tortoise","vanilla ice cream","american football","watermelon","kilometers","apeirophobia","december","mount everest","anaconda","Tyrannosaurus rex","pepperoni","international space station","wheelchair","handsaw","cinderella", "water hose","wario","wardrobe","atlantic ocean","sweatshirt","stopping time","nothing","captain america","united arab emirates","Brazil Nuts","mozarella cheese","tasnima","belgium","headhones","rectangle","neptune","bride","chicken","xylophone","Pixie cut","indigo","monopoly","treadmill","emerald ore","blackboard","wagyu a5"}
while wait(0.5) do
for ia=1,20 do
for i=1,#anslist do
game:GetService("ReplicatedStorage").ReplicaRemoteEvents.Replica_ReplicaSignal:FireServer(ia,"Answer",anslist[i])
end
end
end