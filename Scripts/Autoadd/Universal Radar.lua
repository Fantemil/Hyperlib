--- Drawing Player Radar
--- Made by topit

_G.RadarSettings = {
    --- Radar settings
    RADAR_LINES = true; -- Displays distance rings + cardinal lines 
    RADAR_LINE_DISTANCE = 50; -- The distance between each distance ring
    RADAR_SCALE = 1; -- Controls how "zoomed in" the radar display is 
    RADAR_RADIUS = 125; -- The size of the radar itself
    RADAR_ROTATION = true; -- Toggles radar rotation. Looks kinda trippy when disabled
    SMOOTH_ROT = true; -- Toggles smooth radar rotation
    SMOOTH_ROT_AMNT = 30; -- Lower number is smoother, higher number is snappier 
    CARDINAL_DISPLAY = true; -- Displays the four cardinal directions (north east south west) around the radar
    
    --- Marker settings
    DISPLAY_OFFSCREEN = true; -- Displays offscreen / off-radar markers
    DISPLAY_TEAMMATES = true; -- Displays markers that belong to your teammates
    DISPLAY_TEAM_COLORS = true; -- Displays your teammates markers with either a custom color (change Team_Marker) or with that teams TeamColor (enable USE_TEAM_COLORS) 
    DISPLAY_FRIEND_COLORS = true; -- Displays your friends markers with a custom color (Friend_Marker). This takes priority over DISPLAY_TEAM_COLORS and DISPLAY_RGB
    DISPLAY_RGB_COLORS = false; -- Displays each marker with an RGB cycle. Takes priority over DISPLAY_TEAM_COLORS, but not DISPLAY_FRIEND_COLORS
    MARKER_SCALE_BASE = 1.25; -- Base scale that gets applied to markers
    MARKER_SCALE_MAX = 1.25; -- The largest scale that a marker can be
    MARKER_SCALE_MIN = 0.75; -- The smallest scale that a marker can be
    MARKER_FALLOFF = true; -- Affects the markers' scale depending on how far away the player is - bypasses SCALE_MIN and SCALE_MAX
    MARKER_FALLOFF_AMNT = 125; -- How close someone has to be for falloff to start affecting them 
    OFFSCREEN_TRANSPARENCY = 0.3; -- Transparency of offscreen markers
    USE_FALLBACK = false; -- Enables an emergency "fallback mode" for StreamingEnabled games
    USE_QUADS = true; -- Displays radar markers as arrows instead of dots 
    USE_TEAM_COLORS = false; -- Uses a team's TeamColor for marker colors
    VISIBLITY_CHECK = false; -- Makes markers that are not visible slightly transparent 
    
    --- Theme
    RADAR_THEME = {
        Outline = Color3.fromRGB(35, 35, 45); -- Radar outline
        Background = Color3.fromRGB(25, 25, 35); -- Radar background
        DragHandle = Color3.fromRGB(50, 50, 255); -- Drag handle 
        
        Cardinal_Lines = Color3.fromRGB(110, 110, 120); -- Color of the horizontal and vertical lines
        Distance_Lines = Color3.fromRGB(65, 65, 75); -- Color of the distance rings
        
        Generic_Marker = Color3.fromRGB(255, 25, 115); -- Color of a player marker without a team
        Local_Marker = Color3.fromRGB(115, 25, 255); -- Color of your marker, regardless of team
        Team_Marker = Color3.fromRGB(25, 115, 255); -- Color of your teammates markers. Used when DISPLAY_TEAM_COLORS is disabled
        Friend_Marker = Color3.fromRGB(25, 255, 115); -- Color of your friends markers. Used when DISPLAY_FRIEND_COLORS is enabled 
    };
}

loadstring(game:HttpGet('https://raw.githubusercontent.com/topitbopit/stuff/main/PlayerRadar/source.lua'))()