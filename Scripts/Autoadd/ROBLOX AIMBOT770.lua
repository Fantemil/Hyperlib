-- ---------------------------------------- --
--	ENVISION AIMBOT
--
--	By			EnvisionExploits
--	Contributors	Rylen
--
--	Version		VER-2, 1-05
--	Last edited	9/26/23 9:11 PM
--	Last added	mouse emulation, key for aimbot use, new save configs & rework, renamed config "General_AddGuiForConfig" to "General_AddGuiForConfigs"
-- ---------------------------------------- --

--! TO USE AIMBOT HOLD THE RIGHT MOUSE BUTTON (AIM BUTTON / MOUSE BUTTON 2)

_VERSION, _CONFIG = "VER-2, 1-05", {};

_CONFIG.General_AddGuiForConfigs = true; -- not added yet
_CONFIG.General_SaveConfig = false;
_CONFIG.General_SaveConfig_FileName = "universal"; -- [characters \ / : * ? " < > | . will be replaced with an underscore ( _ )] (idea: you could use game.PlaceId to make game specific configs)
_CONFIG.General_LoadConfigFromFileName = false;

_CONFIG.Keybind_Aimbot = Enum.KeyCode.F;
_CONFIG.Keybind_UseAimbot = Enum.UserInputType.MouseButton2; -- can use Enum.KeyCode or Enum.UserInputType.MouseButton2
_CONFIG.Keybind_Tags = Enum.KeyCode.G;
_CONFIG.Keybind_Highlights = Enum.KeyCode.T;
_CONFIG.Keybind_Tracers = Enum.KeyCode.X;
_CONFIG.Keybind_BoundingBox = Enum.KeyCode.V;
_CONFIG.Keybind_Uninject = Enum.KeyCode.B;

_CONFIG.General_Aimbot_Toggled = true;
_CONFIG.General_Aimbot_TargetPart = "Head";
_CONFIG.General_Aimbot_FreeForAll = true;
_CONFIG.General_Aimbot_TargetPartHitChance = 100;
_CONFIG.General_Aimbot_TargetPartHitChance_RefreshChancesTime = 1; -- seconds
_CONFIG.General_Aimbot_TargetPartHitChance_WhenUnlucky_AimToLimbs = false;
_CONFIG.General_Aimbot_TargetPartHitChance_WhenUnlucky_AimToAnOffset = true;
_CONFIG.General_Aimbot_PredictPlayers = true;
_CONFIG.General_Aimbot_PredictPlayers_DiffuseFactor = 280;
_CONFIG.General_Aimbot_PredictPlayers_InvolveDistanceInEquation = true;
_CONFIG.General_Aimbot_CheckIfTargetIsBehindWalls = false; -- recommended if triggerbot is enabled
_CONFIG.General_Aimbot_UseMouseHitForLockingOnPlayers = false; -- false: otherwise it will get the closest person to mouse 2d position
_CONFIG.General_Aimbot_AimToClosestPlayer = false;
_CONFIG.General_Aimbot_CheckForFirstPerson = true;
_CONFIG.General_Aimbot_AimToAnotherPlayerAfterTargetIsEliminated = true;
_CONFIG.General_Aimbot_Smoothness = 0;
_CONFIG.General_Aimbot_UseMouseEmulation = false; -- moves your mouse instead of your 3d camera. (your mouse needs to be allowed to move (not locked like in an fps game))
-- to make MouseEmulation functional, these configs need to be set: General_Aimbot_CheckForFirstPerson = false & Keybind_UseAimbot = (an Enum.KeyCode)

_CONFIG.General_Aimbot_TriggerBot = false;
_CONFIG.General_Aimbot_TriggerBot_ClicksPerSecond = 10;

_CONFIG.Miscellaneous_AllowModificationsBasedOnGame = true; -- mostly just visual changes. (working on mm2) (nothing has been added for this config yet)

_CONFIG.Visuals_Color_Rainbow = true;
_CONFIG.Visuals_Color_Rainbow_Speed = 30;
_CONFIG.Visuals_Color_Main = Color3.fromRGB(156, 156, 255);
_CONFIG.Visuals_Color_Main_OverrideTeamColors = false;

_CONFIG.Visuals_Tags_Toggled = true;
_CONFIG.Visuals_Tags_ShowHealth = false;
_CONFIG.Visuals_Tags_ShowDistance = true;
_CONFIG.Visuals_Tags_UseDisplayName = true;

_CONFIG.Visuals_Highlights_Toggled = false;

_CONFIG.Visuals_Tracers_Toggled = true;
_CONFIG.Visuals_Tracers_FadeColorBasedOnDistance = true;
_CONFIG.Visuals_Tracers_FakeCircle_PositionX = "middle"; -- left, middle, right
_CONFIG.Visuals_Tracers_FakeCircle_PositionY = "bottom"; -- top, middle, bottom 
_CONFIG.Visuals_Tracers_FakeCircle_Radius = 30;

_CONFIG.Visuals_BoundingBox_Toggled = true;
_CONFIG.Visuals_BoundingBox_Color_MakeRainbow = false;
_CONFIG.Visuals_BoundingBox_Color = Color3.fromRGB(255, 255, 255);
_CONFIG.Visuals_BoundingBox_Color_UseTeamColor = true;
_CONFIG.Visuals_BoundingBox_Color_TargetPart = _CONFIG.Visuals_Color_Main;
_CONFIG.Visuals_BoundingBox_ChangeModesBasedOnDistanceWithPlayer = false;
_CONFIG.Visuals_BoundingBox_Mode = "box"; -- 3d, 2d, box
_CONFIG.Visuals_BoundingBox_Mode_2d_Design = 1; -- 1: normal, 2: skeleton
_CONFIG.Visuals_BoundingBox_Mode_Box_Design = 2; -- 1: box, 2: scifi-1, 3: scifi-2
_CONFIG.Visuals_BoundingBox_Mode_Box_HealthBar_Showing = true;
_CONFIG.Visuals_BoundingBox_Mode_Box_HealthBar_Position = "right"; -- left, right, top, bottom
_CONFIG.Visuals_BoundingBox_Mode_Box_HealthBar_MakeProgressBar = true;
_CONFIG.Visuals_BoundingBox_Mode_Box_HealthBar_AddBackground = true;
_CONFIG.Visuals_BoundingBox_PredictionCircle_Showing = true;
_CONFIG.Visuals_BoundingBox_PredictionCircle_Color = Color3.fromRGB(255, 255, 0);

loadstring(game:HttpGet("https://raw.githubusercontent.com/Rylvns/EnvisionExploits/master/general-scripts/Aimbot/source.lua"))();