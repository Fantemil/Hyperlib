--// config
local ENABLED = true;
local CLOSEST_PART = true;
local FOV_ENABLED = true;
local FOV_RADIUS = 200;
local FOV_COLOR = Color3.new(1, 1, 1);

--// services
local players = game:GetService("Players");
local workspace = game:GetService("Workspace");
local user_input_service = game:GetService("UserInputService");
local run_service = game:GetService("RunService");

--// instanes
local local_player = players.LocalPlayer;
local camera = workspace.CurrentCamera;
local bot_path = workspace.CurrentBots;


--// vars
local mouse = local_player:GetMouse();

--// script table
local script = {
    functions = {},
    locals = {
        is_targetting = false,
        target_position = nil,
        target = nil,
    },
    drawings = {}
}

--// functions
script.functions.drawing_new = function(type: string, properties: any): any --// i believe you can put the return type to DrawingObject, havent tried tho
    local drawing_object = Drawing.new(type);

    for property, value in pairs(properties) do
        drawing_object[property] = value;
    end;

    return drawing_object;
end;

script.functions.new_connection = function(type: RBXScriptSignal, func: any): RBXScriptConnection
    return type:Connect(func);
end;

script.functions.world_to_screen = function(position: Vector3): any
    local viewport_position, on_screen = camera:WorldToViewportPoint(position);

    return {position = Vector2.new(viewport_position.X, viewport_position.Y), on_screen = on_screen};
end;


--// combat functions
script.functions.get_closest_bot = function(): Model
    local radius = FOV_ENABLED and FOV_RADIUS or math.huge;
    local mouse_position = user_input_service:GetMouseLocation();
    local closest_bot;

    for _, bot in bot_path:GetChildren() do
        local position = bot.HumanoidRootPart.Position;
        local viewport_position = script.functions.world_to_screen(position);

        if (not (viewport_position.on_screen)) then continue end; --// onscreen check

        local distance = (mouse_position - viewport_position.position).Magnitude;

        if (distance <= radius) then
            radius = distance;
            closest_bot = bot;
        end;
    end;

    return closest_bot;
end;

script.functions.get_closest_body_part = function(character: Model): BasePart
    local mouse_position = user_input_service:GetMouseLocation();
    local radius = math.huge;
    local closest_part;

    for _, part in character:GetChildren() do
        if not (part:IsA("BasePart")) then continue end;

        local viewport_position = script.functions.world_to_screen(part.Position);

        if (not (viewport_position.on_screen)) then continue end; --// on screen check

        local distance = (mouse_position - viewport_position.position).Magnitude;

        if (distance <= radius) then
            radius = distance;
            closest_part = part;
        end;
    end;
    
    return closest_part;
end;

script.functions.get_target_position = function(): CFrame
    local cframe = CLOSEST_PART and script.functions.get_closest_body_part(script.locals.target).CFrame or script.locals.target.HumanoidRootPart.CFrame;
    return cframe;
end;

--// drawing objects
script.drawings["field_of_view"] = script.functions.drawing_new("Circle", {
    Visible = false,
    Radius = FOV_RADIUS,
    Color = FOV_COLOR
});

--// connections
script.functions.new_connection(run_service.RenderStepped, function()
    if (ENABLED) then
        local new_target = script.functions.get_closest_bot();

        script.locals.is_targetting = new_target and true or false;
        script.locals.target = script.locals.is_targetting and new_target or nil
    end;
    
    if (ENABLED and (script.locals.is_targetting and script.locals.target)) then
        script.locals.target_position = script.functions.get_target_position();
    end;

    if (ENABLED and FOV_ENABLED) then
        script.drawings["field_of_view"].Visible = true;
        script.drawings["field_of_view"].Color = FOV_COLOR
        script.drawings["field_of_view"].Position = user_input_service:GetMouseLocation();
    else
        script.drawings["field_of_view"].Visible = false;
    end;
end);

--// main hook
local __index; __index = hookmetamethod(game, "__index", function(self, index)
	if (not checkcaller() and self == mouse and index == "Hit" and (ENABLED and (script.locals.is_targetting and script.locals.target)) and script.locals.target:FindFirstChildWhichIsA("Humanoid") and script.locals.target.Humanoid.Health > 0) then
		return script.locals.target_position;
	end;
	return __index(self, index);
end);