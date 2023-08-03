_G.BountyFarm = true
_G.ConfigSettings = {
    Webhook = "https://discord.com/api/webhooks/0000000000000000000/XXXXXXXXXXXXXXXXXX"; -- Discord Webhook
    Delay = 10; -- Webhook Send Delay
    Time = 1000; -- Before Hop
    MeleeUse = true;
    SwordUse = false;
    FruitUse = false;
    GunUse = false;
}
loadstring(game:HttpGet("https://luable.netlify.app/AlchemyHub/Luncher.script"))()