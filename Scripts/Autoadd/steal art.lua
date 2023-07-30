local Target = 'name'; -- name (NOT DisplayName) of the target i.e. my_original_user
local Canvas = 1; -- which easel you intend to copy (1, 2, 3, etc.)
local TryCloneTextures = false; -- true/false whether you'd like to TRY and copy textures (except idk what I'm doing so it looks shit)
local CopyCloneToClipboard = false; -- clone canvas then copy in form of JSON table for redrawing later

local Players     = game:GetService('Players');
local Plots       = game:GetService('Workspace').Plots;
local HttpService = game:GetService('HttpService');

local SquareSize = 7.231;
local LowestX, LowestY = 1.231, 3.231;

local UI = Players.LocalPlayer.PlayerGui.MainGui.PaintFrame.GridHolder.Grid;

local function CloneGrid(GridObject, Texture)
	if not Texture then
	    for _, GridPart in ipairs(GridObject:GetChildren()) do
	        if (GridPart:IsA('GuiObject')) then
	            local AbsolutePosition = GridPart.AbsolutePosition;
	            local Ax, Ay = AbsolutePosition.X, AbsolutePosition.Y;
	            local AbsoluteSize = GridPart.AbsoluteSize;
	          	local Asx, Asy = math.round(AbsoluteSize.X * 1000) / 1000, math.round(AbsoluteSize.Y * 1000) / 1000;
	          	local Rcx, Rcy = (Asx / SquareSize) - 1, (Asy / SquareSize) - 1;
	            Ax = math.round(Ax * 1000) / 1000;
	            Ay = math.round(Ay * 1000) / 1000;
	           	local Column = math.round((Ax - LowestX) / SquareSize);
	          	local Row    = math.round((Ay - LowestY) / SquareSize);
	          	local CellNumber = math.floor((Row * 32) + Column + 1);
	        	UI:FindFirstChild(CellNumber).BackgroundColor3 = GridPart['BackgroundColor3'];
	        	if (Rcx > 0) and (Rcy > 0) then
	        		local NewRow, NewColumn = Row, Column;
	        		for rX = 1, Rcx do
	        			NewColumn = Column + rX;
	        			for rY = 1, Rcy do
	        				NewRow = Row + rY;
	        				local NewCell = math.floor((NewRow * 32) + NewColumn + 1);
	        				UI:FindFirstChild(NewCell).BackgroundColor3 = GridPart['BackgroundColor3'];
	        			end
	        		end
	        	end
	        	if (Rcx > 0) then
	        		for rX = 1, Rcx do
	        			local NewColumn = Column + rX;
	        			local NewCell = math.floor((Row * 32) + NewColumn + 1);
	        			UI:FindFirstChild(NewCell).BackgroundColor3 = GridPart['BackgroundColor3'];
	        		end
	        	end
	        	if (Rcy > 0) then
	        		for rY = 1, Rcy do
	        			local NewRow = Row + rY;
	        			local NewCell = math.floor((NewRow * 32) + Column + 1);
	        			UI:FindFirstChild(NewCell).BackgroundColor3 = GridPart['BackgroundColor3'];
	        		end
	        	end
	        end;
	    end;
    else
    	for _, GridPart in ipairs(GridObject:GetChildren()) do
	        if (GridPart:IsA('GuiObject')) then
	            local AbsolutePosition = GridPart.AbsolutePosition;
	            local Ax, Ay = AbsolutePosition.X, AbsolutePosition.Y;
	            local AbsoluteSize = GridPart.AbsoluteSize;
	          	local Asx, Asy = math.round(AbsoluteSize.X * 1000) / 1000, math.round(AbsoluteSize.Y * 1000) / 1000;
	          	local Rcx, Rcy = (Asx / SquareSize) - 1, (Asy / SquareSize) - 1;
	            Ax = math.round(Ax * 1000) / 1000;
	            Ay = math.round(Ay * 1000) / 1000;
	           	local Column = math.round((Ax - LowestX) / SquareSize);
	          	local Row    = math.round((Ay - LowestY) / SquareSize);
	          	local CellNumber = math.floor((Row * 32) + Column + 1);
	          	local TextureCopy = GridPart:Clone()
	          	TextureCopy.Size = UDim2.fromScale(1, 1);
	        	TextureCopy.Parent = UI:FindFirstChild(CellNumber);
	        end;
	    end;
    end;
end

local function ClonePlayerCanvas(Player, CanvasNumber)
	local Easel       = Plots[Player].Easels[tostring(CanvasNumber)].Canvas.SurfaceGui
    local ArtGrid     = Easel.Grid;
    local ArtTextures = Easel.TexturesFrame;
    
    CloneGrid(ArtGrid);
    if (TryCloneTextures) then
    	CloneGrid(ArtTextures, true);
    end
end;

local function ClonePlayerCanvasWithBytes(Player, CanvasNumber)
	ClonePlayerCanvas(Target, Canvas);
	local Bytes = {};
	for _, GridPart in ipairs(UI:GetChildren()) do
		if (GridPart:IsA('GuiObject')) then
			local Colour = GridPart.BackgroundColor3;
			Bytes[GridPart.Name] = {
				R = math.floor(Colour.R * 255),
				G = math.floor(Colour.G * 255),
				B = math.floor(Colour.B * 255)
			};
		end
	end
	setclipboard(HttpService:JSONEncode(Bytes));
end

if (CopyCloneToClipboard) then
	ClonePlayerCanvasWithBytes(Target, Canvas);
else
	ClonePlayerCanvas(Target, Canvas);
end