-- ReSub Compression

local Map = {}
-- Important Numbers
local CurrentIndex = 0

-- Main Code

local function Compress(Content)
	local Output = {}
	local Variables = {}
	local ContentLength = #Content
	local Prefix = [[]];
	
	local function Legalize(Text)
		for _, Char in next, {"$", "%", "^", "&", "*", "(", ")", "-", "+", "?", ".", "[", "]"} do
			Text = string.gsub(Text, "%" .. Char, "%%" .. Char)
		end
		
		return Text;
	end
	
	local function Normalize(Text)
		return string.gsub(Text, "%%", "")
	end

	local function Replace(longestSubstring)
		local count = 0
		local UpdatedContent = Content

		for _ in string.gmatch(UpdatedContent, longestSubstring) do
			count = count + 1
		end

		if count > 1 then
			UpdatedContent = string.gsub(UpdatedContent, longestSubstring, "b" .. CurrentIndex)
			table.insert(Variables, {CurrentIndex, Normalize(longestSubstring)})
			CurrentIndex = CurrentIndex + 1
		end

		return UpdatedContent
	end

	for length = ContentLength, 1, -1 do
		for start = 1, ContentLength - length + 1 do
			local substring = string.sub(Content, start, start + length - 1)
			local LegalSubstring = Legalize(substring);

			local count = 0
			for _ in string.gmatch(Content, LegalSubstring) do
				count = count + 1
			end

			if count > 1 and #substring > (CurrentIndex + 1) then
				Content = Replace(LegalSubstring)
			end
		end
	end
	
	table.sort(Variables, function(a, b)
		return a[1] < b[1] -- Makes it so the b%d indexing is ascending not descending or random
	end)
	
	for _, Info in next, Variables do
		Prefix ..= "b" .. tostring(Info[1]) .. "=" .. Info[2] .. ";\n"
	end

	
	return "--p" .. Prefix .. "\n--P\n" .. Content;
end

local function Decompress(Content)
	local Variables = {};
	-- Match the variables
	
	local LastSub = [[]];
	local ContentV2 = Content;
	
	for i = 1, #Content do
		local Part = string.sub(Content, i, i)
		if Part == ";" then
			local v1, v2 = string.match(LastSub, "b(%d+)=(.+)")
			
			if v1 and v2 then
				table.insert(Variables, {v1, v2})
				LastSub = [[]];
			end
		else
			LastSub = LastSub .. Part;
		end
	end
	
	for _, Info in next, Variables do
		ContentV2 = string.gsub(ContentV2, "b(%d+)", function(Index)
			for _, Info2 in next, Variables do
				if Info2[1] == Index then
					return Info2[2]
				end
			end
		end)
	end
	
	ContentV2 = string.gsub(ContentV2, "(.+)=(.+);\n?", function(a, b)
	 local A = string.gsub(a, "\n", "")
	 local B = string.gsub(b, "\n", "")
	 
	 A = string.split(A, ";")[1]
	 
	 local C = string.split(A, "=")
	 
	 if C[1] == C[2] then
	  return "";
	 end
	end)
	
	ContentV2 = string.gsub(ContentV2, "--p.+--P\n", "")
	
	return ContentV2;
end

return {
	Compress = Compress,
	Decompress = Decompress
};