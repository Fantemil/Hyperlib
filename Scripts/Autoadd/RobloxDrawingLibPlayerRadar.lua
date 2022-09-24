_G.RadarSettings = {
    -- Radar settings
    RADAR_LINES = true; -- Displays distance rings
    SMOOTH_ROT = true; -- Rotates the radar smoothly
    RADAR_SCALE = 1; -- Controls how "zoomed in" the radar display is 
    RADAR_RADIUS = 100; -- The size of the radar itself
    RADAR_LINE_DISTANCE = 50; -- The distance between each line
    
    -- Marker settings
    DISPLAY_TEAM_COLORS = true; -- Sets each player's marker's color to their team color
    DISPLAY_OFFSCREEN = true; -- Leaves offscreen markers visible
    DISPLAY_TEAMMATES = true; -- Shows your teammates' markers
    OFFSCREEN_TRANSPARENCY = 0.4; -- Transparency of offscreen markers
    USE_QUADS = true; -- Makes radar markers quads instead of circles
    MARKER_SCALEMIN = 0.85; -- Minimium scale radar markers can be
    MARKER_SCALEMAX = 1.75; -- Maximum scale radar markers can be 

    -- Theme
    RADAR_THEME = {
        Outline = Color3.fromRGB(6, 6, 6);
        Background = Color3.fromRGB(25, 25, 30);
        DragHandle = Color3.fromRGB(51, 51, 255);
        
        Cardinal_Lines = Color3.fromRGB(100, 100, 155); -- Color of the horizontal and vertical lines
        Distance_Lines = Color3.fromRGB(64, 64, 69); -- Color of the distance rings
        
        Generic_Marker = Color3.fromRGB(255, 0, 107); -- Color of a player marker without a team
        Local_Marker = Color3.fromRGB(16, 235, 255); -- Color of your marker, regardless of team
    };
}

loadstring(game:HttpGet('https://raw.githubusercontent.com/topitbopit/stuff/main/PlayerRadar/source.lua'))()