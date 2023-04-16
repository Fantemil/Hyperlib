local Details = {
    Description = "i found evil pootis at 3 am",
    Title = "welcome to los pollos hermanos",
    Reason =  "you have 3 seconds"
}

local LocalPlayer = game.Players.LocalPlayer;
local GUI = LocalPlayer.PlayerGui.MainUI
local TweenService = game:GetService("TweenService");
local AchievementsHolder = GUI.AchievementsHolder.Achievement:Clone();
AchievementsHolder.Size = UDim2.new(0, 0, 0, 0);
AchievementsHolder.Frame.Position = UDim2.new(1.1, 0, 0, 0);
AchievementsHolder.Name = "LiveAchievement";
AchievementsHolder.Visible = true;
AchievementsHolder.Parent = GUI.AchievementsHolder;
AchievementsHolder.Frame.Details.Desc.Text = Details.Description
AchievementsHolder.Frame.Details.Title.Text = Details.Title
AchievementsHolder.Frame.Details.Reason.Text = Details.Reason
AchievementsHolder.Sound:Play();
AchievementsHolder:TweenSize(UDim2.new(1, 0, 0.2, 0), "In", "Quad", 0.8, true);
wait(0.8);
AchievementsHolder.Frame:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5, true);
TweenService:Create(AchievementsHolder.Frame.Glow, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
    ImageTransparency = 1
  }):Play();
  wait(8);
AchievementsHolder.Frame:TweenPosition(UDim2.new(1.1, 0, 0, 0), "In", "Quad", 0.5, true);
wait(0.5);
AchievementsHolder:TweenSize(UDim2.new(1, 0, -0.1, 0), "InOut", "Quad", 0.5, true);
wait(0.5);
AchievementsHolder:Destroy();