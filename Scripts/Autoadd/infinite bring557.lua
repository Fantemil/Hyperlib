local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
local TABLE_TableIndirection = {};
bit32 = {};
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\255\134\139", "\126\177\163\187\69\134\219\167")] = 32;
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\19\136\122", "\156\67\173\74\165")] = (5 - 3) ^ TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\26\242\25", "\38\84\215\41\118\220\70")];
bit32.bnot = function(x)
	x = x % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\96\83\114", "\158\48\118\66\114")];
	return (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\155\97\64", "\155\203\68\112\86\19\197")] - 1) - x;
end;
bit32.band = function(x, y)
	if (y == (729 - 474)) then
		return x % (493 - 237);
	end
	if (y == (168811 - 103276)) then
		return x % (66155 - (555 + 64));
	end
	if (y == 4294967295) then
		return x % (4294968227 - (857 + 74));
	end
	x, y = x % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\118\152\102", "\152\38\189\86\156\32\24\133")], y % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\204\18\247", "\38\156\55\199")];
	TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\186\56\44", "\35\200\29\28\72\115\20\154")] = 0;
	TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\9\250\129", "\84\121\223\177\191\237\76")] = 1;
	for i = 569 - (367 + 201), TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\149\19\153", "\161\219\54\169\192\90\48\80")] do
		local a, b = x % (929 - (214 + 713)), y % 2;
		x, y = math.floor(x / 2), math.floor(y / 2);
		if ((a + b) == 2) then
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\91\7\80", "\69\41\34\96")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\174\134\135", "\75\220\163\183\106\98")] + TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\18\255\219", "\185\98\218\235\87")];
		end
		TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\219\121\119", "\202\171\92\71\134\190")] = (1 + 1) * TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\57\132\124", "\232\73\161\76")];
	end
	return TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\169\156\18", "\126\219\185\34\61")];
end;
bit32.bor = function(x, y)
	if (y == 255) then
		return (x - (x % (41 + 215))) + 255;
	end
	if (y == (66412 - (282 + 595))) then
		return (x - (x % 65536)) + 65535;
	end
	if (y == 4294967295) then
		return 4294968932 - (1523 + 114);
	end
	x, y = x % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\60\139\14", "\135\108\174\62\18\30\23\147")], y % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\134\172\122", "\167\214\137\74\171\120\206\83")];
	TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\153\181\98", "\199\235\144\82\61\152")] = 0;
	TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\23\83\233", "\75\103\118\217")] = 1 + 0;
	for i = 1 - 0, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\233\17\32", "\126\167\52\16\116\217")] do
		local a, b = x % (1067 - (68 + 997)), y % 2;
		x, y = math.floor(x / (1272 - (226 + 1044))), math.floor(y / 2);
		if ((a + b) >= 1) then
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\218\107\112", "\156\168\78\64\224\212\121")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\21\171\245", "\174\103\142\197")] + TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\70\109\15", "\152\54\72\63\88\69\62")];
		end
		TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\196\129\190", "\60\180\164\142")] = (8 - 6) * TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\72\27\85", "\114\56\62\101\73\71\141")];
	end
	return TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\170\172\139", "\164\216\137\187")];
end;
bit32.bxor = function(x, y)
	x, y = x % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\226\163\97", "\107\178\134\81\210\198\158")], y % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\8\75\210", "\202\88\110\226\166")];
	TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\209\74\210", "\170\163\111\226\151")] = 0;
	TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\1\117\226", "\73\113\80\210\88\46\87")] = 118 - (32 + 85);
	for i = 1 + 0, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\105\157", "\135\225\76\173\114")] do
		local a, b = x % (1 + 1), y % (959 - (892 + 65));
		x, y = math.floor(x / (4 - 2)), math.floor(y / 2);
		if ((a + b) == 1) then
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\8\168\232", "\199\122\141\216\208\204\221")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\191\152\64", "\150\205\189\112\144\24")] + TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\53\193\239", "\112\69\228\223\44\100\232\113")];
		end
		TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\196\90\87", "\230\180\127\103\179\214\28")] = (3 - 1) * TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\156\64\15", "\128\236\101\63\38\132\33")];
	end
	return TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\190\236\65", "\175\204\201\113\36\214\139")];
end;
bit32.lshift = function(x, s_amount)
	if (math.abs(s_amount) >= TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\105\137\101", "\100\39\172\85\188")]) then
		return 0;
	end
	x = x % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\157\61\233", "\83\205\24\217\224")];
	if (s_amount < (0 - 0)) then
		return math.floor(x * ((352 - (87 + 263)) ^ s_amount));
	else
		return (x * ((182 - (67 + 113)) ^ s_amount)) % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\214\128\157", "\93\134\165\173")];
	end
end;
bit32.rshift = function(x, s_amount)
	if (math.abs(s_amount) >= TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\144\183\145", "\30\222\146\161\162\90\174\210")]) then
		return 0 + 0;
	end
	x = x % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\213\11\32", "\106\133\46\16")];
	if (s_amount > 0) then
		return math.floor(x * ((4 - 2) ^ -s_amount));
	else
		return (x * ((2 + 0) ^ -s_amount)) % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\104\101\35", "\32\56\64\19\156\58")];
	end
end;
bit32.arshift = function(x, s_amount)
	if (math.abs(s_amount) >= TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\116\141\181", "\224\58\168\133\54\58\146")]) then
		return 0 - 0;
	end
	x = x % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\105\19\27", "\107\57\54\43\157\21\230\231")];
	if (s_amount > 0) then
		TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\218\143\21\176\233", "\175\187\235\113\149\217\188")] = 952 - (802 + 150);
		if (x >= (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\234\209", "\24\92\207\225\44\131\25")] / (5 - 3))) then
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\74\215\188\9\75", "\29\43\179\216\44\123")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\141\156\112", "\44\221\185\64")] - (2 ^ (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\47\162\24", "\19\97\135\40\63")] - s_amount));
		end
		return math.floor(x * ((3 - 1) ^ -s_amount)) + TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\88\55\126\127", "\81\206\60\83\91\79")];
	else
		return (x * ((2 + 0) ^ -s_amount)) % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\126\238\128", "\196\46\203\176\18\79\163\45")];
	end
end;
bit32 = {};
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\174\114\59\78", "\143\216\66\30\126\68\155")] = 32;
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\188\153\72\155", "\129\202\168\109\171\165\195\183")] = 2 ^ TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\52\8\114\136", "\134\66\56\87\184\190\116")];
bit32.bnot = function(v16)
	v16 = v16 % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\42\96\76\235", "\85\92\81\105\219\121\139\65")];
	return (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\235\226\21\21", "\191\157\211\48\37\28")] - 1) - v16;
end;
bit32.band = function(v17, v18)
	if (v18 == 255) then
		return v17 % (1253 - (915 + 82));
	end
	if (v18 == 65535) then
		return v17 % 65536;
	end
	if (v18 == (4294967295 - 0)) then
		return v17 % 4294967296;
	end
	v17, v18 = v17 % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\201\78\177\76", "\90\191\127\148\124")], v18 % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\110\214\107\71", "\119\24\231\78")];
	TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\148\124\252\15\140", "\113\226\77\197\42\188\32")] = 0 + 0;
	TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\44\68\164\240\106", "\213\90\118\148")] = 1;
	for v36 = 1 - 0, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\77\126\241\6", "\45\59\78\212\54")] do
		local v37, v38 = v17 % 2, v18 % 2;
		v17, v18 = math.floor(v17 / (1189 - (1069 + 118))), math.floor(v18 / (4 - 2));
		if ((v37 + v38) == (3 - 1)) then
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\6\7\218\206\214", "\144\112\54\227\235\230\78\205")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\165\121\86\185\128", "\59\211\72\111\156\176")] + TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\88\213\179\104\30", "\77\46\231\131")];
		end
		TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\172\6\230\5\234", "\32\218\52\214")] = (1 + 1) * TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\88\69\97\237\161", "\58\46\119\81\200\145\208\37")];
	end
	return TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\61\221\105\233\249", "\86\75\236\80\204\201\221")];
end;
bit32.bor = function(v21, v22)
	if (v22 == 255) then
		return (v21 - (v21 % (454 - 198))) + 255;
	end
	if (v22 == 65535) then
		return (v21 - (v21 % 65536)) + 65011 + 524;
	end
	if (v22 == 4294967295) then
		return 4294968086 - (368 + 423);
	end
	v21, v22 = v21 % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\100\16\50\213", "\235\18\33\23\229\158")], v22 % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\70\235\132\235", "\219\48\218\161")];
	TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\242\35\47\12\139", "\128\132\17\28\41\187\47")] = 0 - 0;
	TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\23\96\82\127\13", "\61\97\82\102\90")] = 19 - (10 + 8);
	for v39 = 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\186\126\238\27", "\105\204\78\203\43\167\55\126")] do
		local v40, v41 = v21 % (7 - 5), v22 % (444 - (416 + 26));
		v21, v22 = math.floor(v21 / 2), math.floor(v22 / (6 - 4));
		if ((v40 + v41) >= (1 + 0)) then
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\179\248\112\91\67", "\49\197\202\67\126\115\100\167")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\33\9\140\108\208", "\62\87\59\191\73\224\54")] + TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\241\80\174\140\183", "\169\135\98\154")];
		end
		TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\221\37\112\17\173", "\168\171\23\68\52\157\83")] = 2 * TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\226\35\161\232\117", "\231\148\17\149\205\69\77")];
	end
	return TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\150\245\148\190\7", "\159\224\199\167\155\55")];
end;
bit32.bxor = function(v25, v26)
	v25, v26 = v25 % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\225\162\121\130", "\178\151\147\92")], v26 % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\154\172\9\98", "\26\236\157\44\82\114\44")];
	TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\60\124\130\30\122", "\59\74\78\181")] = 0;
	TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\51\131\2\31\227", "\211\69\177\58\58")] = 1;
	for v42 = 1 - 0, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\161\181\60\165", "\171\215\133\25\149\137")] do
		local v43, v44 = v25 % (440 - (145 + 293)), v26 % 2;
		v25, v26 = math.floor(v25 / 2), math.floor(v26 / (432 - (44 + 386)));
		if ((v43 + v44) == 1) then
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\247\154\101\191\191", "\34\129\168\82\154\143\80\156")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\147\224\100\78\24", "\233\229\210\83\107\40\46")] + TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\215\16\106\147\85", "\101\161\34\82\182")];
		end
		TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\254\95\1\187\139", "\78\136\109\57\158\187\130\226")] = 2 * TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\40\109\161\180\110", "\145\94\95\153")];
	end
	return TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\235\159\67\144\30", "\215\157\173\116\181\46")];
end;
bit32.lshift = function(v29, v30)
	if (math.abs(v30) >= TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\35\228\206\162", "\186\85\212\235\146")]) then
		return 1486 - (998 + 488);
	end
	v29 = v29 % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\212\208\83\174", "\56\162\225\118\158\89\142")];
	if (v30 < (0 + 0)) then
		return math.floor(v29 * (2 ^ v30));
	else
		return (v29 * ((2 + 0) ^ v30)) % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\74\84\133\255", "\184\60\101\160\207\66")];
	end
end;
bit32.rshift = function(v31, v32)
	if (math.abs(v32) >= TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\39\210\57\236", "\220\81\226\28")]) then
		return 0;
	end
	v31 = v31 % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\5\132\199\171", "\167\115\181\226\155\138")];
	if (v32 > (772 - (201 + 571))) then
		return math.floor(v31 * ((1140 - (116 + 1022)) ^ -v32));
	else
		return (v31 * (2 ^ -v32)) % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\244\115\162\12", "\166\130\66\135\60\27\17")];
	end
end;
bit32.arshift = function(v33, v34)
	if (math.abs(v34) >= TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\82\26\139\37", "\80\36\42\174\21")]) then
		return 0 - 0;
	end
	v33 = v33 % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\88\65\114\42", "\26\46\112\87")];
	if (v34 > 0) then
		TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\119\254\49\239", "\212\217\67\203\20\223\223\37")] = 0;
		if (v33 >= (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\172\220\237\130", "\178\218\237\200")] / (2 + 0))) then
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\160\225\179\149\230", "\176\214\213\134")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\226\252\243\132", "\57\148\205\214\180\200\54")] - (2 ^ (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\4\173\112\100", "\22\114\157\85\84")] - v34));
		end
		return math.floor(v33 * ((7 - 5) ^ -v34)) + TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\210\159\70\129\13", "\200\164\171\115\164\61\150")];
	else
		return (v33 * ((7 - 5) ^ -v34)) % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\168\165\70\21", "\227\222\148\99\37")];
	end
end;
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\37\11\23\166", "\153\83\50\50\150")] = game[LUAOBFUSACTOR_DECRYPT_STR_0("\109\122\114\5\118\185\94", "\45\61\22\19\124\19\203")][LUAOBFUSACTOR_DECRYPT_STR_0("\237\29\14\244\14\64\181\192\11\8\231", "\217\161\114\109\149\98\16")];
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\4\113\104\57\236", "\20\114\64\88\28\220")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\39\88\151\228", "\221\81\97\178\212\152\176")]:GetMouse();
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\219\182\76\190\74", "\122\173\135\125\155")] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\206\15\181", "\168\228\161\96\217\95\81"));
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\205\128\127\25\127", "\55\187\177\78\60\79")][LUAOBFUSACTOR_DECRYPT_STR_0("\3\207\82\238", "\224\77\174\63\139\38\175")] = LUAOBFUSACTOR_DECRYPT_STR_0("\141\79\94\39\138\72\76\43\196\85\72", "\78\228\33\56");
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\216\47\227\70\213", "\229\174\30\210\99")][LUAOBFUSACTOR_DECRYPT_STR_0("\41\232\151\68\228\47\60\8\197\135\95\233\49\60", "\89\123\141\230\49\141\93")] = false;
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\229\32\167\73\64", "\42\147\17\150\108\112")][LUAOBFUSACTOR_DECRYPT_STR_0("\63\167\63\122\233\252", "\136\111\198\77\31\135")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\20\80\226\6", "\201\98\105\199\54\221\132\119")][LUAOBFUSACTOR_DECRYPT_STR_0("\155\13\128\42\18\52\175\178", "\204\217\108\227\65\98\85")];
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\72\146\164\160\124", "\160\62\163\149\133\76")][LUAOBFUSACTOR_DECRYPT_STR_0("\247\163\25\38\213\215\180\8\43", "\163\182\192\109\79")]:Connect(function()
	TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\34\117\85\133\165", "\149\84\70\96\160")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\46\87\93\168\104", "\141\88\102\109")][LUAOBFUSACTOR_DECRYPT_STR_0("\135\82\216\119\31\41", "\161\211\51\170\16\122\93\53")];
	if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\237\253\231\109\171", "\72\155\206\210")]:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\100\123\71\11\3\71\104\64", "\83\38\26\52\110")) or TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\78\68\114\3\8", "\38\56\119\71")]:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\195\238\74\194", "\54\147\143\56\182\69")) or TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\192\210\170\12\143", "\191\182\225\159\41")]:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\6\23\59\93\187\134\208\63", "\162\75\114\72\53\235\231")) or TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\154\111\17\167\3", "\98\236\92\36\130\51")]:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\135\22\30\180\64\186\130\53\160\30\9\138\68\186\161", "\80\196\121\108\218\37\200\213")) or TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\22\32\87\58\27", "\234\96\19\98\31\43\110")]:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\50\13\71\212\191\66\138\20\11", "\235\102\127\50\167\204\18")) or TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\70\242\160\102\20", "\78\48\193\149\67\36")]:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\7\27\132\31\68\0\31\146\12", "\33\80\126\224\120")) or (4593 <= (3531 - (814 + 45)))) then
		if not TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\250\251\86\129\12", "\60\140\200\99\164")][LUAOBFUSACTOR_DECRYPT_STR_0("\166\250\7\46\173\149\241\0", "\194\231\148\100\70")] then
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\80\24\151\230\166", "\168\38\44\161\195\150")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\150\165\199\38", "\118\224\156\226\22\80\136\214")][LUAOBFUSACTOR_DECRYPT_STR_0("\97\230\88\146\67\237\77\133\80", "\224\34\142\57")];
			if (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\200\243\147\152\35", "\110\190\199\165\189\19\145\61")] or (1168 > 3156)) then
				TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\204\191\32\173\219", "\167\186\139\23\136\235")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\225\222\72\74", "\109\122\213\232")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\198\226\175\49\224\248\171\52\220\248\173\36\222\246\176\36", "\80\142\151\194"));
				if TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\21\146\32\9\83", "\44\99\166\23")] then
					TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\106\164\124\115\99", "\196\28\151\73\86\83")][LUAOBFUSACTOR_DECRYPT_STR_0("\208\37\59\17\143\93", "\22\147\99\73\112\226\56\120")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\174\33\181\176\221", "\237\216\21\130\149")][LUAOBFUSACTOR_DECRYPT_STR_0("\161\104\77\94\189\204", "\62\226\46\63\63\208\169")] * CFrame.new(0 - 0, 1 + 2, 0 + 0);
				end
			end
		end
	end
end);