local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==81) then v19=v0(v3(v30,1,1));return "";else local v87=v2(v0(v30,16));if v19 then local v97=v5(v87,v19);v19=nil;return v97;else return v87;end end end);local function v20(v31,v32,v33) if v33 then local v88=(v31/(2^(v32-1)))%(2^(((v33-1) -(v32-1)) + 1)) ;return v88-(v88%1) ;else local v89=2^(v32-1) ;return (((v31%(v89 + v89))>=v89) and 1) or 0 ;end end local function v21() local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22() local v35,v36=v1(v16,v18,v18 + 2 );v18=v18 + 2 ;return (v36 * 256) + v35 ;end local function v23() local v37,v38,v39,v40=v1(v16,v18,v18 + 3 );v18=v18 + 4 ;return (v40 * 16777216) + (v39 * 65536) + (v38 * 256) + v37 ;end local function v24() local v41=v23();local v42=v23();local v43=1;local v44=(v20(v42,1,20) * (2^32)) + v41 ;local v45=v20(v42,21,31);local v46=((v20(v42,32)==1) and  -1) or 1 ;if (v45==0) then if (v44==0) then return v46 * 0 ;else v45=1;v43=0;end elseif (v45==2047) then return ((v44==0) and (v46 * (1/0))) or (v46 * NaN) ;end return v8(v46,v45-1023 ) * (v43 + (v44/(2^52))) ;end local function v25(v47) local v48;if  not v47 then v47=v23();if (v47==0) then return "";end end v48=v3(v16,v18,(v18 + v47) -1 );v18=v18 + v47 ;local v49={};for v63=1, #v48 do v49[v63]=v2(v1(v3(v48,v63,v63)));end return v6(v49);end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v50={};local v51={};local v52={};local v53={v50,v51,nil,v52};local v54=v23();local v55={};for v65=1,v54 do local v66=v21();local v67;if (v66==1) then v67=v21()~=0 ;elseif (v66==2) then v67=v24();elseif (v66==3) then v67=v25();end v55[v65]=v67;end v53[3]=v21();for v69=1,v23() do local v70=v21();if (v20(v70,1,1)==0) then local v93=v20(v70,2,3);local v94=v20(v70,4,6);local v95={v22(),v22(),nil,nil};if (v93==0) then v95[3]=v22();v95[4]=v22();elseif (v93==1) then v95[3]=v23();elseif (v93==2) then v95[3]=v23() -(2^16) ;elseif (v93==3) then v95[3]=v23() -(2^16) ;v95[4]=v22();end if (v20(v94,1,1)==1) then v95[2]=v55[v95[2]];end if (v20(v94,2,2)==1) then v95[3]=v55[v95[3]];end if (v20(v94,3,3)==1) then v95[4]=v55[v95[4]];end v50[v69]=v95;end end for v71=1,v23() do v51[v71-1 ]=v28();end return v53;end local function v29(v57,v58,v59) local v60=v57[1];local v61=v57[2];local v62=v57[3];return function(...) local v73=v60;local v74=v61;local v75=v62;local v76=v27;local v77=1;local v78= -1;local v79={};local v80={...};local v81=v12("#",...) -1 ;local v82={};local v83={};for v90=0,v81 do if (v90>=v75) then v79[v90-v75 ]=v80[v90 + 1 ];else v83[v90]=v80[v90 + 1 ];end end local v84=(v81-v75) + 1 ;local v85;local v86;while true do v85=v73[v77];v86=v85[1];if (v86<=39) then if (v86<=19) then if (v86<=9) then if (v86<=4) then if (v86<=1) then if (v86==0) then local v114=v85[2];local v115={v83[v114](v83[v114 + 1 ])};local v116=0;for v215=v114,v85[4] do v116=v116 + 1 ;v83[v215]=v115[v116];end else local v117=v85[2];v83[v117](v13(v83,v117 + 1 ,v85[3]));end elseif (v86<=2) then local v118=v85[2];local v119=v83[v118];local v120=v83[v118 + 2 ];if (v120>0) then if (v119>v83[v118 + 1 ]) then v77=v85[3];else v83[v118 + 3 ]=v119;end elseif (v119<v83[v118 + 1 ]) then v77=v85[3];else v83[v118 + 3 ]=v119;end elseif (v86==3) then local v241=v85[2];v83[v241](v13(v83,v241 + 1 ,v85[3]));else v83[v85[2]]= #v83[v85[3]];end elseif (v86<=6) then if (v86>5) then local v121=v85[2];v83[v121]=v83[v121](v13(v83,v121 + 1 ,v85[3]));else v83[v85[2]]=v58[v85[3]];end elseif (v86<=7) then local v125=v85[2];local v126=v83[v85[3]];v83[v125 + 1 ]=v126;v83[v125]=v126[v85[4]];elseif (v86>8) then local v243=v74[v85[3]];local v244;local v245={};v244=v10({},{__index=function(v298,v299) local v300=v245[v299];return v300[1][v300[2]];end,__newindex=function(v301,v302,v303) local v304=v245[v302];v304[1][v304[2]]=v303;end});for v306=1,v85[4] do v77=v77 + 1 ;local v307=v73[v77];if (v307[1]==63) then v245[v306-1 ]={v83,v307[3]};else v245[v306-1 ]={v58,v307[3]};end v82[ #v82 + 1 ]=v245;end v83[v85[2]]=v29(v243,v244,v59);elseif (v83[v85[2]]~=v85[4]) then v77=v77 + 1 ;else v77=v85[3];end elseif (v86<=14) then if (v86<=11) then if (v86>10) then v83[v85[2]]=v85[3];else v83[v85[2]]=v83[v85[3]]%v83[v85[4]] ;end elseif (v86<=12) then v83[v85[2]]=v83[v85[3]][v85[4]];elseif (v86>13) then if v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end else local v247=v85[2];do return v13(v83,v247,v78);end end elseif (v86<=16) then if (v86==15) then if (v83[v85[2]]<v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end else v83[v85[2]]=v83[v85[3]] + v85[4] ;end elseif (v86<=17) then local v136=v85[2];local v137,v138=v76(v83[v136](v13(v83,v136 + 1 ,v85[3])));v78=(v138 + v136) -1 ;local v139=0;for v218=v136,v78 do v139=v139 + 1 ;v83[v218]=v137[v139];end elseif (v86>18) then local v249=v85[2];v83[v249](v13(v83,v249 + 1 ,v78));else v83[v85[2]]=v58[v85[3]];end elseif (v86<=29) then if (v86<=24) then if (v86<=21) then if (v86==20) then local v140=v85[2];local v141,v142=v76(v83[v140](v83[v140 + 1 ]));v78=(v142 + v140) -1 ;local v143=0;for v221=v140,v78 do v143=v143 + 1 ;v83[v221]=v141[v143];end elseif (v83[v85[2]]==v85[4]) then v77=v77 + 1 ;else v77=v85[3];end elseif (v86<=22) then v83[v85[2]]={};elseif (v86==23) then local v253=v85[2];v83[v253](v83[v253 + 1 ]);else local v254=v85[2];do return v13(v83,v254,v78);end end elseif (v86<=26) then if (v86==25) then v83[v85[2]]=v59[v85[3]];else v83[v85[2]]={};end elseif (v86<=27) then v83[v85[2]]=v83[v85[3]] + v85[4] ;elseif (v86==28) then v77=v85[3];elseif v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end elseif (v86<=34) then if (v86<=31) then if (v86>30) then local v149=v85[2];local v150=v83[v85[3]];v83[v149 + 1 ]=v150;v83[v149]=v150[v85[4]];elseif (v83[v85[2]]==v85[4]) then v77=v77 + 1 ;else v77=v85[3];end elseif (v86<=32) then v83[v85[2]][v85[3]]=v85[4];elseif (v86>33) then v83[v85[2]]=v85[3];else v83[v85[2]]=v85[3]~=0 ;end elseif (v86<=36) then if (v86==35) then if  not v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end else v83[v85[2]]=v83[v85[3]]%v85[4] ;end elseif (v86<=37) then v83[v85[2]][v83[v85[3]]]=v85[4];elseif (v86>38) then v83[v85[2]][v85[3]]=v83[v85[4]];else v83[v85[2]]=v85[3]~=0 ;end elseif (v86<=59) then if (v86<=49) then if (v86<=44) then if (v86<=41) then if (v86>40) then v83[v85[2]][v83[v85[3]]]=v85[4];else v83[v85[2]]=v83[v85[3]]%v85[4] ;end elseif (v86<=42) then v83[v85[2]][v85[3]]=v83[v85[4]];elseif (v86==43) then v83[v85[2]]=v85[3] + v83[v85[4]] ;elseif (v83[v85[2]]~=v85[4]) then v77=v77 + 1 ;else v77=v85[3];end elseif (v86<=46) then if (v86==45) then local v164=v85[3];local v165=v83[v164];for v224=v164 + 1 ,v85[4] do v165=v165   .. v83[v224] ;end v83[v85[2]]=v165;else local v167=v85[2];local v168=v85[4];local v169=v167 + 2 ;local v170={v83[v167](v83[v167 + 1 ],v83[v169])};for v225=1,v168 do v83[v169 + v225 ]=v170[v225];end local v171=v170[1];if v171 then v83[v169]=v171;v77=v85[3];else v77=v77 + 1 ;end end elseif (v86<=47) then local v172=v85[2];local v173=v85[4];local v174=v172 + 2 ;local v175={v83[v172](v83[v172 + 1 ],v83[v174])};for v228=1,v173 do v83[v174 + v228 ]=v175[v228];end local v176=v175[1];if v176 then v83[v174]=v176;v77=v85[3];else v77=v77 + 1 ;end elseif (v86==48) then do return;end else local v269=v85[2];v83[v269](v13(v83,v269 + 1 ,v78));end elseif (v86<=54) then if (v86<=51) then if (v86==50) then local v177=v85[3];local v178=v83[v177];for v231=v177 + 1 ,v85[4] do v178=v178   .. v83[v231] ;end v83[v85[2]]=v178;elseif  not v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end elseif (v86<=52) then local v180=v85[2];local v181=v83[v180 + 2 ];local v182=v83[v180] + v181 ;v83[v180]=v182;if (v181>0) then if (v182<=v83[v180 + 1 ]) then v77=v85[3];v83[v180 + 3 ]=v182;end elseif (v182>=v83[v180 + 1 ]) then v77=v85[3];v83[v180 + 3 ]=v182;end elseif (v86==53) then local v271=v85[2];v83[v271](v83[v271 + 1 ]);else local v272=v74[v85[3]];local v273;local v274={};v273=v10({},{__index=function(v309,v310) local v311=v274[v310];return v311[1][v311[2]];end,__newindex=function(v312,v313,v314) local v315=v274[v313];v315[1][v315[2]]=v314;end});for v317=1,v85[4] do v77=v77 + 1 ;local v318=v73[v77];if (v318[1]==63) then v274[v317-1 ]={v83,v318[3]};else v274[v317-1 ]={v58,v318[3]};end v82[ #v82 + 1 ]=v274;end v83[v85[2]]=v29(v272,v273,v59);end elseif (v86<=56) then if (v86>55) then local v184=v85[2];local v185,v186=v76(v83[v184](v13(v83,v184 + 1 ,v85[3])));v78=(v186 + v184) -1 ;local v187=0;for v232=v184,v78 do v187=v187 + 1 ;v83[v232]=v185[v187];end else local v188=v85[2];local v189,v190=v76(v83[v188](v13(v83,v188 + 1 ,v78)));v78=(v190 + v188) -1 ;local v191=0;for v235=v188,v78 do v191=v191 + 1 ;v83[v235]=v189[v191];end end elseif (v86<=57) then if (v83[v85[2]]<v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end elseif (v86==58) then local v277=v85[2];local v278={v83[v277](v83[v277 + 1 ])};local v279=0;for v320=v277,v85[4] do v279=v279 + 1 ;v83[v320]=v278[v279];end else v83[v85[2]]=v83[v85[3]][v85[4]];end elseif (v86<=69) then if (v86<=64) then if (v86<=61) then if (v86>60) then v83[v85[2]][v85[3]]=v85[4];else local v194=v85[2];v83[v194]=v83[v194](v13(v83,v194 + 1 ,v78));end elseif (v86<=62) then local v196=v85[2];v83[v196]=v83[v196](v13(v83,v196 + 1 ,v78));elseif (v86==63) then v83[v85[2]]=v83[v85[3]];else v83[v85[2]]=v59[v85[3]];end elseif (v86<=66) then if (v86==65) then local v198=v85[2];do return v83[v198](v13(v83,v198 + 1 ,v85[3]));end else do return;end end elseif (v86<=67) then local v199=v85[2];do return v83[v199](v13(v83,v199 + 1 ,v85[3]));end elseif (v86==68) then local v286=v85[2];v83[v286]=v83[v286](v83[v286 + 1 ]);else v83[v85[2]]=v83[v85[3]];end elseif (v86<=74) then if (v86<=71) then if (v86>70) then local v200=v85[2];local v201=v83[v200];local v202=v83[v200 + 2 ];if (v202>0) then if (v201>v83[v200 + 1 ]) then v77=v85[3];else v83[v200 + 3 ]=v201;end elseif (v201<v83[v200 + 1 ]) then v77=v85[3];else v83[v200 + 3 ]=v201;end else local v203=v85[2];v83[v203]=v83[v203](v83[v203 + 1 ]);end elseif (v86<=72) then local v205=v85[2];local v206,v207=v76(v83[v205](v13(v83,v205 + 1 ,v78)));v78=(v207 + v205) -1 ;local v208=0;for v238=v205,v78 do v208=v208 + 1 ;v83[v238]=v206[v208];end elseif (v86==73) then v83[v85[2]]= #v83[v85[3]];else local v291=v85[2];v83[v291]=v83[v291](v13(v83,v291 + 1 ,v85[3]));end elseif (v86<=76) then if (v86>75) then v77=v85[3];else v83[v85[2]]=v85[3] + v83[v85[4]] ;end elseif (v86<=77) then local v211=v85[2];local v212=v83[v211 + 2 ];local v213=v83[v211] + v212 ;v83[v211]=v213;if (v212>0) then if (v213<=v83[v211 + 1 ]) then v77=v85[3];v83[v211 + 3 ]=v213;end elseif (v213>=v83[v211 + 1 ]) then v77=v85[3];v83[v211 + 3 ]=v213;end elseif (v86>78) then v83[v85[2]]=v83[v85[3]]%v83[v85[4]] ;else local v294=v85[2];local v295,v296=v76(v83[v294](v83[v294 + 1 ]));v78=(v296 + v294) -1 ;local v297=0;for v323=v294,v78 do v297=v297 + 1 ;v83[v323]=v295[v297];end end v77=v77 + 1 ;end end;end return v29(v28(),{},v17)(...);end return v15("LOL!463Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E7365727403083Q00496E7374616E63652Q033Q006E657703093Q00E2C0C920E3B5E00BD803083Q007EB1A3BB4586DBA703053Q0005DF2BC8F903053Q009C43AD4AA503094Q00B2510290274431BB03073Q002654D72976DC4603073Q0064133A06DC5F0E03053Q009E30764272030A3Q009F21082251B0EFBF2B1E03073Q009BCB44705613C503043Q004E616D6503083Q0061DC2CF9525FF0F103083Q009826BD569C20188503063Q00506172656E7403083Q00636C6F6E6572656603043Q0067616D65030A3Q004765745365727669636503073Q00DF58B543DB42AE03043Q00269C37C703043Q0053697A6503053Q005544696D32026Q00E03F028Q0003083Q00506F736974696F6E026Q00D03F03103Q004261636B67726F756E64436F6C6F723303063Q00436F6C6F7233026Q00F03F030C3Q00426F72646572436F6C6F7233030F3Q00426F7264657253697A65506978656C03063Q004163746976652Q0103093Q004472612Q6761626C65029A5Q99C93F03043Q0054657874030B3Q008F7C662D5356E353A96E6F03083Q0023C81D1C4873149A03083Q005465787453697A65026Q002C40030A3Q0054657874436F6C6F723303043Q00466F6E7403043Q00456E756D03063Q00426F646F6E69029A5Q99E93F029A5Q99B93F026Q33D33F030F3Q00506C616365686F6C6465725465787403063Q00519CD9DE996503073Q005479DFB1BFED4C03043Q00436F6465034Q00026Q002E40026Q66D63F026Q66E63F03043Q00985EC8B403083Q00A1DB36A9C05A305003113Q004D6F75736542752Q746F6E31436C69636B03073Q00436F2Q6E6563740007012Q0012193Q00013Q00203B5Q0002001219000100013Q00203B000100010003001219000200013Q00203B000200020004001219000300053Q0006330003000A0001000100044C3Q000A0001001219000300063Q00203B000400030007001219000500083Q00203B000500050009001219000600083Q00203B00060006000A00060900073Q000100062Q003F3Q00064Q003F8Q003F3Q00044Q003F3Q00014Q003F3Q00024Q003F3Q00053Q0012190008000B3Q00203B00080008000C2Q0045000900073Q00120B000A000D3Q00120B000B000E4Q00380009000B4Q003C00083Q00020012190009000B3Q00203B00090009000C2Q0045000A00073Q00120B000B000F3Q00120B000C00104Q0038000A000C4Q003C00093Q0002001219000A000B3Q00203B000A000A000C2Q0045000B00073Q00120B000C00113Q00120B000D00124Q0038000B000D4Q003C000A3Q0002001219000B000B3Q00203B000B000B000C2Q0045000C00073Q00120B000D00133Q00120B000E00144Q0038000C000E4Q003C000B3Q0002001219000C000B3Q00203B000C000C000C2Q0045000D00073Q00120B000E00153Q00120B000F00164Q0038000D000F4Q003C000C3Q00022Q0045000D00073Q00120B000E00183Q00120B000F00194Q0006000D000F000200102A00080017000D001219000D001B3Q001219000E001C3Q00201F000E000E001D2Q0045001000073Q00120B0011001E3Q00120B0012001F4Q0038001000124Q0048000E6Q003C000D3Q000200102A0008001A000D001219000D00213Q00203B000D000D000C00120B000E00223Q00120B000F00233Q00120B001000223Q00120B001100234Q0006000D0011000200102A00090020000D001219000D00213Q00203B000D000D000C00120B000E00253Q00120B000F00233Q00120B001000253Q00120B001100234Q0006000D0011000200102A00090024000D001219000D00273Q00203B000D000D000C00120B000E00283Q00120B000F00283Q00120B001000284Q0006000D0010000200102A00090026000D001219000D00273Q00203B000D000D000C00120B000E00233Q00120B000F00233Q00120B001000234Q0006000D0010000200102A00090029000D00303D0009002A002800303D0009002B002C00303D0009002D002C00102A0009001A0008001219000D00213Q00203B000D000D000C00120B000E00283Q00120B000F00233Q00120B0010002E3Q00120B001100234Q0006000D0011000200102A000A0020000D001219000D00213Q00203B000D000D000C00120B000E00233Q00120B000F00233Q00120B001000233Q00120B001100234Q0006000D0011000200102A000A0024000D001219000D00273Q00203B000D000D000C00120B000E00233Q00120B000F00233Q00120B001000234Q0006000D0010000200102A000A0026000D001219000D00273Q00203B000D000D000C00120B000E00233Q00120B000F00233Q00120B001000234Q0006000D0010000200102A000A0029000D00303D000A002A00282Q0045000D00073Q00120B000E00303Q00120B000F00314Q0006000D000F000200102A000A002F000D00303D000A00320033001219000D00273Q00203B000D000D000C00120B000E00283Q00120B000F00283Q00120B001000284Q0006000D0010000200102A000A0034000D001219000D00363Q00203B000D000D003500203B000D000D003700102A000A0035000D00102A000A001A0009001219000D00213Q00203B000D000D000C00120B000E00383Q00120B000F00233Q00120B0010002E3Q00120B001100234Q0006000D0011000200102A000B0020000D001219000D00213Q00203B000D000D000C00120B000E00393Q00120B000F00233Q00120B0010003A3Q00120B001100234Q0006000D0011000200102A000B0024000D001219000D00273Q00203B000D000D000C00120B000E00233Q00120B000F00233Q00120B001000234Q0006000D0010000200102A000B0026000D001219000D00273Q00203B000D000D000C00120B000E00233Q00120B000F00233Q00120B001000234Q0006000D0010000200102A000B0029000D00303D000B002A00282Q0045000D00073Q00120B000E003C3Q00120B000F003D4Q0006000D000F000200102A000B003B000D001219000D00273Q00203B000D000D000C00120B000E00283Q00120B000F00283Q00120B001000284Q0006000D0010000200102A000B0034000D001219000D00363Q00203B000D000D003500203B000D000D003E00102A000B0035000D00303D000B002F003F00303D000B0032004000102A000B001A0009001219000D00213Q00203B000D000D000C00120B000E003A3Q00120B000F00233Q00120B0010002E3Q00120B001100234Q0006000D0011000200102A000C0020000D001219000D00213Q00203B000D000D000C00120B000E00413Q00120B000F00233Q00120B001000423Q00120B001100234Q0006000D0011000200102A000C0024000D001219000D00273Q00203B000D000D000C00120B000E00233Q00120B000F00233Q00120B001000234Q0006000D0010000200102A000C0026000D001219000D00273Q00203B000D000D000C00120B000E00233Q00120B000F00233Q00120B001000234Q0006000D0010000200102A000C0029000D00303D000C002A00282Q0045000D00073Q00120B000E00433Q00120B000F00444Q0006000D000F000200102A000C002F000D00303D000C00320033001219000D00273Q00203B000D000D000C00120B000E00283Q00120B000F00283Q00120B001000284Q0006000D0010000200102A000C0034000D001219000D00363Q00203B000D000D003500203B000D000D003E00102A000C0035000D00102A000C001A0009000609000D0001000100012Q003F3Q00073Q00203B000E000C004500201F000E000E004600060900100002000100022Q003F3Q000B4Q003F3Q000D4Q0001000E001000012Q00303Q00013Q00033Q00023Q00026Q00F03F026Q00704002264Q001600025Q00120B000300014Q004900045Q00120B000500013Q0004470003002100012Q001200076Q0045000800024Q0012000900014Q0012000A00024Q0012000B00034Q0012000C00044Q0045000D6Q0045000E00063Q002010000F000600012Q0038000C000F4Q003C000B3Q00022Q0012000C00034Q0012000D00044Q0045000E00014Q0049000F00014Q004F000F0006000F00102B000F0001000F2Q0049001000014Q004F00100006001000102B0010000100100020100010001000012Q0038000D00104Q0048000C6Q003C000A3Q0002002024000A000A00022Q004E0009000A4Q001300073Q00010004340003000500012Q0012000300054Q0045000400024Q0043000300044Q001800036Q00303Q00017Q00303Q0003043Q004F57032E03043Q004529226003253Q0066EFBFB4EFBFB4EFBFB4EFBFB4EFBFB4EFBFB475EFBFB463EFBFB46BEFBFB4EFBFB4EFBFB403043Q00AFCBDE1E03063Q004BDCA3B76A6203253Q0073EFBFB4EFBFB4EFBFB4EFBFB4EFBFB4EFBFB468EFBFB469EFBFB474EFBFB4EFBFB4EFBFB403054Q00B39F34D103053Q00B962DAEB57031A3Q0062EFBFB469EFBFB474EFBFB4EFBFB4EFBFB463EFBFB468EFBFB403043Q00C53520E103063Q00CAAB5C4786BE03253Q006EEFBFB469EFBFB467EFBFB4EFBFB4EFBFB4EFBFB4EFBFB4EFBFB467EFBFB4EFBFB4EFBFB403043Q002ACE2F8303043Q00E849A14C03223Q0063EFBFB4EFBFB4EFBFB46FEFBFB4EFBFB4EFBFB463EFBFB46BEFBFB4EFBFB4EFBFB403043Q00BFD0415603053Q007EDBB9223D03193Q0064EFBFB469EFBFB4EFBFB463EFBFB46BEFBFB4EFBFB4EFBFB403053Q006C6F77657203053Q00706169727303043Q006773756203013Q007B03013Q007D034Q00026Q00F03F2Q033Q0073756203013Q002003013Q001F2Q033Q00EFBFB42Q033Q002DC25203083Q00876CAE3E121E179303043Q0067616D65030A3Q0047657453657276696365030F3Q0082EC32DF3BA632D385EC38DD11AD3603083Q00A7D6894AAB78CE53030E3Q0046696E6446697273744368696C64030C3Q00BFF52A49DBAF8AFE3C58F4B403063Q00C7EB90523D98030F3Q003313A13F241EB83F3413AB3D0E15BC03043Q004B6776D9030C3Q00546578744368612Q6E656C73030A3Q0052425847656E6572616C03093Q0053656E644173796E6303113Q00F5516018B01DC64075108A0AC8467113BC03063Q007EA7341074D9031B3Q0044656661756C744368617453797374656D436861744576656E747303113Q005361794D652Q7361676552657175657374030A3Q004669726553657276657201964Q001600013Q00062Q001200025Q00120B000300013Q00120B000400024Q00060002000400020020290001000200032Q001200025Q00120B000300043Q00120B000400054Q00060002000400020020290001000200062Q001200025Q00120B000300073Q00120B000400084Q00060002000400020020290001000200092Q001200025Q00120B0003000A3Q00120B0004000B4Q000600020004000200202900010002000C2Q001200025Q00120B0003000D3Q00120B0004000E4Q000600020004000200202900010002000F2Q001200025Q00120B000300103Q00120B000400114Q000600020004000200202900010002001200201F00023Q00132Q00460002000200022Q00453Q00023Q001219000200144Q0045000300014Q003A00020002000400044C3Q002E000100201F00073Q00152Q0045000900053Q00120B000A00164Q0045000B00063Q00120B000C00174Q002D000A000A000C2Q00060007000A00022Q00453Q00073Q00062E000200260001000200044C3Q0026000100120B000200184Q002100035Q00120B000400194Q004900055Q00120B000600193Q0004470004005E000100201F00083Q001A2Q0045000A00074Q0045000B00074Q00060008000B00020026150008003E0001001600044C3Q003E00012Q0021000300013Q00044C3Q005D0001002615000800420001001700044C3Q004200012Q002100035Q00044C3Q005D000100061D0003004800013Q00044C3Q004800012Q0045000900024Q0045000A00084Q002D00020009000A00044C3Q005D00010026150008004E0001001B00044C3Q004E00012Q0045000900023Q00120B000A001C4Q002D00020009000A00044C3Q005D00012Q0045000900024Q0045000A00084Q002D00020009000A2Q004900095Q00060F0007005D0001000900044C3Q005D000100201F00093Q001A002010000B00070019002010000C000700192Q00060009000C00020026080009005D0001001B00044C3Q005D00012Q0045000900023Q00120B000A001D4Q002D00020009000A00043400040036000100201F00040002001500120B000600163Q00120B000700184Q000600040007000200201F00040004001500120B000600173Q00120B000700184Q00060004000700022Q0045000200044Q0045000400024Q001200055Q00120B0006001E3Q00120B0007001F4Q0006000500070002001219000600203Q00201F0006000600212Q001200085Q00120B000900223Q00120B000A00234Q00380008000A4Q003C00063Q000200201F0006000600242Q001200085Q00120B000900253Q00120B000A00264Q00380008000A4Q003C00063Q000200061D0006008800013Q00044C3Q00880001001219000600203Q00201F0006000600212Q001200085Q00120B000900273Q00120B000A00284Q00380008000A4Q003C00063Q000200203B00060006002900203B00060006002A00201F00060006002B2Q0045000800044Q000100060008000100044C3Q00950001001219000600203Q00201F0006000600212Q001200085Q00120B0009002C3Q00120B000A002D4Q00380008000A4Q003C00063Q000200203B00060006002E00203B00060006002F00201F0006000600302Q0045000800044Q0045000900054Q00010006000900012Q00303Q00017Q00013Q0003043Q005465787400064Q00127Q00203B5Q00012Q0012000100014Q004500026Q00170001000200012Q00303Q00017Q00",v9(),...);