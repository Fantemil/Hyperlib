local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25)local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function()return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...)local v29=1;local v30;v27=v12(v11(v27,5),v7("\206\24","\73\224\54\32\169\135\98"),function(v42)if (v9(v42,2)==(246 -167)) then v30=v8(v11(v42,1,431 -(44 + 386) ));return "";else local v79=v10(v8(v42,16));if v30 then local v89=0;local v90;while true do if (v89==1) then return v90;end if (v89==0) then v90=v13(v79,v30);v30=nil;v89=1;end end else return v79;end end end);local function v31(v43,v44,v45)if v45 then local v80=0;local v81;while true do if (v80==0) then v81=(v43/((1488 -(998 + 488))^(v44-1)))%(2^(((v45-1) -(v44-1)) + (2 -1))) ;return v81-(v81%1) ;end end else local v82=0;local v83;while true do if (v82==0) then v83=2^(v44-1) ;return (((v43%(v83 + v83))>=v83) and 1) or 0 ;end end end end local function v32()local v46=v9(v27,v29,v29);v29=v29 + 1 ;return v46;end local function v33()local v47,v48=v9(v27,v29,v29 + 2 );v29=v29 + 2 ;return (v48 * 256) + v47 ;end local function v34()local v49,v50,v51,v52=v9(v27,v29,v29 + (5 -2) );v29=v29 + 4 ;return (v52 * 16777216) + (v51 * (168813 -103277)) + (v50 * 256) + v49 ;end local function v35()local v53=0;local v54;local v55;local v56;local v57;local v58;local v59;while true do if (0==v53) then v54=v34();v55=v34();v53=1;end if (v53==2) then v58=v31(v55,18 + 3 ,31);v59=((v31(v55,32)==1) and  -1) or 1 ;v53=3;end if (v53==3) then if (v58==(772 -(201 + 571))) then if (v57==0) then return v59 * 0 ;else local v116=0;while true do if (v116==0) then v58=1;v56=0;break;end end end elseif (v58==2047) then return ((v57==0) and (v59 * (1/0))) or (v59 * NaN) ;end return v16(v59,v58-1023 ) * (v56 + (v57/(2^52))) ;end if (v53==1) then v56=1;v57=(v31(v55,1 + 0 ,20) * (2^32)) + v54 ;v53=2;end end end local function v36(v60)local v61;if  not v60 then local v84=0;while true do if (v84==0) then v60=v34();if (v60==0) then return "";end break;end end end v61=v11(v27,v29,(v29 + v60) -(620 -(555 + 64)) );v29=v29 + v60 ;local v62={};for v77=1, #v61 do v62[v77]=v10(v9(v11(v61,v77,v77)));end return v14(v62);end local v37=v34;local function v38(...)return {...},v20("#",...);end local function v39()local v63=0;local v64;local v65;local v66;local v67;local v68;local v69;while true do if (v63==1) then v67={v64,v65,nil,v66};v68=v34();v69={};v63=2;end if (v63==2) then for v91=1,v68 do local v92=v32();local v93;if (v92==1) then v93=v32()~=0 ;elseif (v92==2) then v93=v35();elseif (v92==3) then v93=v36();end v69[v91]=v93;end v67[3]=v32();for v95=1,v34() do local v96=0;local v97;while true do if (v96==0) then v97=v32();if (v31(v97,4 -3 ,1)==0) then local v123=0;local v124;local v125;local v126;while true do if (v123==3) then if (v31(v125,3,3)==1) then v126[4]=v69[v126[863 -(814 + 45) ]];end v64[v95]=v126;break;end if (v123==1) then v126={v33(),v33(),nil,nil};if (v124==0) then v126[3]=v33();v126[4]=v33();elseif (v124==1) then v126[3]=v34();elseif (v124==2) then v126[3]=v34() -(2^(947 -(857 + 74))) ;elseif (v124==3) then local v138=0;while true do if (v138==0) then v126[3]=v34() -(2^(58 -42)) ;v126[4]=v33();break;end end end v123=2;end if (v123==2) then if (v31(v125,1,3 -2 )==1) then v126[2]=v69[v126[2]];end if (v31(v125,2,570 -(367 + 201) )==1) then v126[3]=v69[v126[3]];end v123=3;end if (0==v123) then v124=v31(v97,2,3);v125=v31(v97,4,6);v123=1;end end end break;end end end v63=3;end if (v63==0) then v64={};v65={};v66={};v63=1;end if (v63==3) then for v98=1,v34() do v65[v98-1 ]=v39();end return v67;end end end local function v40(v70,v71,v72)local v73=0;local v74;local v75;local v76;while true do if (v73==1) then v76=v70[7 -4 ];return function(...)local v100=v74;local v101=v75;local v102=v76;local v103=v38;local v104=1;local v105= -1;local v106={};local v107={...};local v108=v20("#",...) -(1 + 0) ;local v109={};local v110={};for v114=0,v108 do if (v114>=v102) then v106[v114-v102 ]=v107[v114 + 1 ];else v110[v114]=v107[v114 + (928 -(214 + 713)) ];end end local v111=(v108-v102) + 1 ;local v112;local v113;while true do local v115=0;while true do if (0==v115) then v112=v100[v104];v113=v112[1];v115=1;end if (v115==1) then if (v113<=36) then if (v113<=17) then if (v113<=(3 + 5)) then if (v113<=3) then if (v113<=1) then if (v113>0) then for v240=v112[2],v112[3] do v110[v240]=nil;end else local v139=v112[1 + 1 ];local v140=v110[v112[3]];v110[v139 + (878 -(282 + 595)) ]=v140;v110[v139]=v140[v112[4]];end elseif (v113>2) then local v144=v112[2];do return v110[v144](v21(v110,v144 + 1 ,v112[3]));end else v110[v112[2]]=v71[v112[3]];end elseif (v113<=5) then if (v113>4) then v110[v112[2]]={};else local v148=0;local v149;while true do if (v148==0) then v149=v112[1639 -(1523 + 114) ];v110[v149](v21(v110,v149 + 1 ,v112[3]));break;end end end elseif (v113<=(3 + 3)) then local v150=0;local v151;local v152;local v153;while true do if (v150==1) then v153=v110[v151] + v152 ;v110[v151]=v153;v150=2;end if (v150==2) then if (v152>0) then if (v153<=v110[v151 + 1 ]) then local v367=0;while true do if (v367==0) then v104=v112[3];v110[v151 + 3 ]=v153;break;end end end elseif (v153>=v110[v151 + 1 ]) then local v368=0;while true do if (v368==0) then v104=v112[888 -(261 + 624) ];v110[v151 + 3 ]=v153;break;end end end break;end if (v150==0) then v151=v112[2];v152=v110[v151 + 2 ];v150=1;end end elseif (v113>7) then if  not v110[v112[3 -1 ]] then v104=v104 + (1081 -(1020 + 60)) ;else v104=v112[3];end else local v247=v112[2];v110[v247](v21(v110,v247 + 1 ,v105));end elseif (v113<=(1435 -(630 + 793))) then if (v113<=10) then if (v113==9) then local v154=v112[2];v110[v154](v110[v154 + 1 ]);else local v155=0;local v156;local v157;while true do if (v155==1) then v110[v156 + (3 -2) ]=v157;v110[v156]=v157[v112[4]];break;end if (v155==0) then v156=v112[2 + 0 ];v157=v110[v112[3]];v155=1;end end end elseif (v113==11) then local v158=0;local v159;local v160;local v161;local v162;while true do if (v158==2) then for v330=v159,v105 do v162=v162 + 1 ;v110[v330]=v160[v162];end break;end if (v158==1) then v105=(v161 + v159) -1 ;v162=0;v158=2;end if (v158==0) then v159=v112[2];v160,v161=v103(v110[v159](v110[v159 + 1 ]));v158=1;end end else v110[v112[2]][v112[3]]=v110[v112[18 -14 ]];end elseif (v113<=(19 -5)) then if (v113==13) then v110[v112[1067 -(68 + 997) ]]=v110[v112[3]]%v112[2 + 2 ] ;elseif (v110[v112[2]]==v112[4]) then v104=v104 + 1 ;else v104=v112[1273 -(226 + 1044) ];end elseif (v113<=15) then for v242=v112[2],v112[3] do v110[v242]=nil;end elseif (v113>(54 -38)) then v110[v112[2]]=v110[v112[3]] + v112[4] ;else local v250=v112[2];v110[v250]=v110[v250](v21(v110,v250 + 1 ,v105));end elseif (v113<=26) then if (v113<=21) then if (v113<=19) then if (v113==(1765 -(760 + 987))) then v110[v112[8 -6 ]][v112[3]]=v112[4];else local v168=v112[2];local v169,v170=v103(v110[v168](v21(v110,v168 + 1 ,v112[3])));v105=(v170 + v168) -1 ;local v171=0;for v244=v168,v105 do local v245=0;while true do if (v245==0) then v171=v171 + 1 ;v110[v244]=v169[v171];break;end end end end elseif (v113==20) then local v172=v112[1915 -(1789 + 124) ];do return v21(v110,v172,v105);end else v110[v112[119 -(32 + 85) ]][v110[v112[3 + 0 ]]]=v110[v112[4]];end elseif (v113<=23) then if (v113==22) then v110[v112[2]][v110[v112[3]]]=v110[v112[4]];else local v177=v112[2];do return v21(v110,v177,v105);end end elseif (v113<=(790 -(745 + 21))) then v110[v112[2]][v112[3]]=v112[4];elseif (v113==25) then local v252=v101[v112[2 + 1 ]];local v253;local v254={};v253=v18({},{[v7("\247\244\126\42\80\248\213","\173\168\171\23\68\52\157")]=function(v298,v299)local v300=v254[v299];return v300[1][v300[2]];end,[v7("\184\203\127\240\200\142\250\117\240\199","\191\231\148\17\149")]=function(v301,v302,v303)local v304=v254[v302];v304[1][v304[2]]=v303;end});for v306=1,v112[4] do v104=v104 + 1 ;local v307=v100[v104];if (v307[1]==45) then v254[v306-(1 + 0) ]={v110,v307[7 -4 ]};else v254[v306-1 ]={v71,v307[3]};end v109[ #v109 + 1 ]=v254;end v110[v112[2]]=v40(v252,v253,v72);else v110[v112[959 -(892 + 65) ]][v112[3]]=v110[v112[4]];end elseif (v113<=31) then if (v113<=28) then if (v113==(105 -78)) then local v180=0;local v181;while true do if (v180==0) then v181=v112[2];v110[v181]=v110[v181](v21(v110,v181 + 1 ,v112[3]));break;end end else local v182=0;local v183;local v184;local v185;local v186;while true do if (v182==1) then v105=(v185 + v183) -1 ;v186=0;v182=2;end if (v182==0) then v183=v112[2];v184,v185=v103(v110[v183](v21(v110,v183 + 1 ,v105)));v182=1;end if (v182==2) then for v335=v183,v105 do local v336=0;while true do if (v336==0) then v186=v186 + 1 ;v110[v335]=v184[v186];break;end end end break;end end end elseif (v113<=29) then local v187=0;local v188;local v189;local v190;while true do if (v187==1) then v190=v110[v188 + (3 -1) ];if (v190>0) then if (v189>v110[v188 + 1 ]) then v104=v112[3];else v110[v188 + 1 + 2 ]=v189;end elseif (v189<v110[v188 + 1 ]) then v104=v112[3];else v110[v188 + 3 + 0 ]=v189;end break;end if (v187==0) then v188=v112[4 -2 ];v189=v110[v188];v187=1;end end elseif (v113==(55 -25)) then do return v110[v112[2]]();end else v110[v112[2]]=v112[1058 -(87 + 968) ] + v110[v112[4]] ;end elseif (v113<=33) then if (v113==32) then v110[v112[2]]=v72[v112[3]];else local v193=0;local v194;while true do if (v193==0) then v194=v112[2];v110[v194]=v110[v194](v21(v110,v194 + 1 ,v112[3]));break;end end end elseif (v113<=34) then v104=v112[3];elseif (v113>35) then v110[v112[2]]=v71[v112[3]];else v104=v112[3];end elseif (v113<=54) then if (v113<=(395 -(87 + 263))) then if (v113<=40) then if (v113<=38) then if (v113==37) then v110[v112[2]]=v112[3] + v110[v112[4]] ;else v110[v112[2]]=v110[v112[183 -(67 + 113) ]]%v110[v112[4]] ;end elseif (v113==39) then local v198=0;local v199;while true do if (v198==0) then v199=v112[2 + 0 ];v110[v199](v21(v110,v199 + (2 -1) ,v105));break;end end else local v200=0;local v201;while true do if (0==v200) then v201=v112[2];v110[v201](v110[v201 + 1 ]);break;end end end elseif (v113<=42) then if (v113==(180 -139)) then local v202=0;local v203;local v204;local v205;while true do if (0==v202) then v203=v101[v112[3]];v204=nil;v202=1;end if (v202==1) then v205={};v204=v18({},{[v7("\18\215\246\142\163\194\227","\69\77\136\159\224\199\167\155")]=function(v337,v338)local v339=0;local v340;while true do if (v339==0) then v340=v205[v338];return v340[1][v340[2 + 0 ]];end end end,[v7("\237\200\253\119\197\254\253\118\215\239","\18\178\151\147")]=function(v341,v342,v343)local v344=v205[v342];v344[1][v344[2]]=v343;end});v202=2;end if (v202==2) then for v346=1,v112[4] do v104=v104 + 1 ;local v347=v100[v104];if (v347[1]==45) then v205[v346-(1 + 0) ]={v110,v347[3]};else v205[v346-1 ]={v71,v347[3]};end v109[ #v109 + (3 -2) ]=v205;end v110[v112[954 -(802 + 150) ]]=v40(v203,v204,v72);break;end end else v110[v112[2]]= #v110[v112[3]];end elseif (v113<=43) then v72[v112[3]]=v110[v112[5 -3 ]];elseif (v113>44) then v110[v112[2]]=v110[v112[3]];elseif  not v110[v112[2]] then v104=v104 + 1 ;else v104=v112[6 -3 ];end elseif (v113<=49) then if (v113<=(84 -37)) then if (v113==46) then do return v110[v112[2]]();end else v110[v112[2]]={};end elseif (v113>(1461 -(447 + 966))) then v110[v112[2 + 0 ]]=v110[v112[3]] + v112[4] ;else v110[v112[999 -(915 + 82) ]]=v110[v112[3]][v112[4]];end elseif (v113<=51) then if (v113==(141 -91)) then if v110[v112[2]] then v104=v104 + 1 ;else v104=v112[2 + 1 ];end else v110[v112[2]]=v112[3];end elseif (v113<=52) then do return;end elseif (v113==53) then local v265=v112[2];local v266=v110[v265];for v321=v265 + 1 ,v105 do v15(v266,v110[v321]);end else local v267=0;local v268;while true do if (0==v267) then v268=v112[2];v110[v268](v21(v110,v268 + (1 -0) ,v112[3]));break;end end end elseif (v113<=63) then if (v113<=(1245 -(1069 + 118))) then if (v113<=(126 -70)) then if (v113==(120 -65)) then local v215=0;local v216;local v217;local v218;local v219;while true do if (v215==2) then for v350=v216,v105 do v219=v219 + 1 ;v110[v350]=v217[v219];end break;end if (v215==0) then v216=v112[2];v217,v218=v103(v110[v216](v21(v110,v216 + 1 ,v112[3])));v215=1;end if (1==v215) then v105=(v218 + v216) -(702 -(376 + 325)) ;v219=0;v215=2;end end else local v220=v112[2];local v221=v110[v220];for v246=v220 + 1 ,v105 do v15(v221,v110[v246]);end end elseif (v113==57) then v72[v112[3]]=v110[v112[2]];elseif v110[v112[2]] then v104=v104 + 1 ;else v104=v112[1 + 2 ];end elseif (v113<=(106 -46)) then if (v113==59) then v110[v112[2]]=v72[v112[3]];elseif (v110[v112[2]]==v112[4]) then v104=v104 + 1 + 0 ;else v104=v112[3];end elseif (v113<=61) then v110[v112[793 -(368 + 423) ]]=v110[v112[3]]%v112[4] ;elseif (v113==62) then local v271=v112[2];local v272,v273=v103(v110[v271](v110[v271 + 1 ]));v105=(v273 + v271) -1 ;local v274=0;for v323=v271,v105 do local v324=0;while true do if (v324==0) then v274=v274 + (3 -2) ;v110[v323]=v272[v274];break;end end end else local v275=v112[2 -0 ];do return v110[v275](v21(v110,v275 + 1 ,v112[21 -(10 + 8) ]));end end elseif (v113<=(209 -141)) then if (v113<=65) then if (v113==64) then do return;end else v110[v112[2]]= #v110[v112[3]];end elseif (v113<=(253 -187)) then local v228=0;local v229;local v230;local v231;local v232;while true do if (v228==2) then for v353=v229,v105 do local v354=0;while true do if (v354==0) then v232=v232 + 1 ;v110[v353]=v230[v232];break;end end end break;end if (0==v228) then v229=v112[2];v230,v231=v103(v110[v229](v21(v110,v229 + 1 ,v105)));v228=1;end if (v228==1) then v105=(v231 + v229) -1 ;v232=0;v228=2;end end elseif (v113>(20 + 47)) then local v276=0;local v277;local v278;local v279;while true do if (v276==0) then v277=v112[2];v278=v110[v277 + 2 ];v276=1;end if (v276==2) then if (v278>0) then if (v279<=v110[v277 + (2 -1) ]) then v104=v112[3];v110[v277 + 3 ]=v279;end elseif (v279>=v110[v277 + 1 ]) then v104=v112[3];v110[v277 + (445 -(416 + 26)) ]=v279;end break;end if (v276==1) then v279=v110[v277] + v278 ;v110[v277]=v279;v276=2;end end else local v280=0;local v281;while true do if (v280==0) then v281=v112[2];v110[v281]=v110[v281](v21(v110,v281 + (3 -2) ,v105));break;end end end elseif (v113<=70) then if (v113>(83 -(9 + 5))) then v110[v112[2]]=v110[v112[3]]%v110[v112[4]] ;else v110[v112[1 + 1 ]]=v112[3];end elseif (v113<=(125 -54)) then local v236=0;local v237;local v238;local v239;while true do if (v236==1) then v239=v110[v237 + (378 -(85 + 291)) ];if (v239>0) then if (v238>v110[v237 + (439 -(145 + 293)) ]) then v104=v112[3];else v110[v237 + 3 ]=v238;end elseif (v238<v110[v237 + 1 ]) then v104=v112[3];else v110[v237 + 3 ]=v238;end break;end if (v236==0) then v237=v112[2];v238=v110[v237];v236=1;end end elseif (v113==72) then v110[v112[2]]=v110[v112[3]];else v110[v112[2]]=v110[v112[3]][v112[4]];end v104=v104 + 1 ;break;end end end end;end if (v73==0) then v74=v70[1];v75=v70[2];v73=1;end end end return v40(v39(),{},v28)(...);end v23("LOL!0D3O0003063O00737472696E6703043O006368617203043O00627974652O033O0073756203053O0062697433322O033O0062697403043O0062786F7203053O007461626C6503063O00636F6E63617403063O00696E7365727403053O006D6174636803083O00746F6E756D62657203053O007063612O6C00243O00123B3O00013O0020495O000200123B000100013O00204900010001000300123B000200013O00204900020002000400123B000300053O00062C0003000A000100010004233O000A000100123B000300063O00204900040003000700123B000500083O00204900050005000900123B000600083O00204900060006000A00061900073O000100062O002D3O00064O002D8O002D3O00044O002D3O00014O002D3O00024O002D3O00053O00123B000800013O00204900080008000B00123B0009000C3O00123B000A000D3O000619000B0001000100052O002D3O00074O002D3O00094O002D3O00084O002D3O000A4O002D3O000B4O0048000C000B4O001E000C00014O0017000C6O00343O00013O00023O00023O00026O00F03F026O00704002264O002F00025O001245000300014O002A00045O001245000500013O0004470003002100012O002400076O0048000800024O0024000900014O0024000A00024O0024000B00034O0024000C00044O0048000D6O0048000E00063O002011000F000600012O0037000C000F4O0043000B3O00022O0024000C00034O0024000D00044O0048000E00014O002A000F00014O0046000F0006000F001025000F0001000F2O002A001000014O00460010000600100010250010000100100020110010001000012O0037000D00104O0042000C6O0043000A3O000200200D000A000A00022O003E0009000A4O000700073O00010004060003000500012O0024000300054O0048000400024O003F000300044O001700036O00343O00017O00043O00027O004003053O003A25642B3A2O033O0025642B026O00F03F001C3O0006195O000100012O00028O0024000100014O0024000200024O0024000300024O002F00046O0024000500034O004800066O0001000700074O0037000500074O003800043O0001002049000400040001001245000500024O0021000300050002001245000400034O0037000200044O004300013O000200260E00010018000100040004233O001800012O004800016O002F00026O003F000100024O001700015O0004233O001B00012O0024000100044O001E000100014O001700016O00343O00013O00013O00A33O0003043O0067616D65030A3O005374617274657247756903073O00536574436F726503103O00E2C6D521C8B4D317D7CAD824F2B2C81003083O007EB1A3BB4586DBA703053O0017C43EC9F903053O009C43AD4AA5030A3O0006B24818B52B4720B24D03073O002654D72976DC4603043O0064133A0603053O009E3076427203233O008836153767A0FFEB0609765AABF5A43211227AAAF5EB2B1E7640A6E9A23404347FAAE303073O009BCB44705613C503073O00506C6179657273030B3O004C6F63616C506C6179657203093O0043686172616374657203073O00416E696D61746503053O00636C696D6203093O00436C696D62416E696D03073O0044657374726F7903043O0077616C6B03083O0057616C6B416E696D03043O006A756D7003083O004A756D70416E696D03043O0069646C65030A3O00416E696D6174696F6E31030A3O00416E696D6174696F6E322O033O0073697403073O00536974416E696D03043O0066612O6C03083O0046612O6C416E696D03083O00742O6F6C6E6F6E65030C3O00542O6F6C4E6F6E65416E696D03073O006E6577616E696D03083O00496E7374616E63652O033O006E657703093O0067D33FF1416CECF74803083O009826BD569C20188503063O00506172656E74030A3O0041726368697661626C652O01030B3O00416E696D6174696F6E496403163O00726278612O73657469643A2O2F34323937333034333003043O004E616D65030A3O00DD59AE4BFD43AE49F20603043O00269C37C72O033O0049734103093O00897375251260F34CA603083O0023C81D1C4873149A03083O006E6577616E696D3103093O0038B1D8D28C383D16B103073O005479DFB1BFED4C030A3O009A58C0AD3B4439CEB50403083O00A1DB36A9C05A305003093O00684C09284856092A4703043O004529226003083O006E6577616E696D3203093O009DCDDE07033FB5CCD903063O004BDCA3B76A6203153O00726278612O73657469643A2O2F3837393836333431030A3O0023B4823AD816B384398803053O00B962DAEB5703093O00EA322EEBDFBEC2332903063O00CAAB5C4786BE03083O006E6577616E696D3303093O0008CF258528D525872703043O00E849A14C03163O00726278612O73657469643A2O2F323034333238372O31030A3O009AD74B501FAFD04D534F03053O007EDBB9223D03093O002DC0572O7F63FAE80203083O00876CAE3E121E179303083O006E6577616E696D3403093O0097E723C619BA3AC8B803083O00A7D6894AAB78CE5303163O00726278612O73657469643A2O2F312O38363332302O31030A3O00AAFE3B50F9B382FF3C0C03063O00C7EB90523D9803093O002618B0260602B0240903043O004B6776D903083O006E6577616E696D3503093O00E65A7919B80ACE5B7E03063O007EA7341074D903163O00726278612O73657469643A2O2F313832373234323839030A3O00E920298DB50DF5C7207103073O009CA84E40E0D47903093O0026E0ACC306FAACC10903043O00AE678EC503083O006E6577616E696D3603093O0077265635244AF1592603073O009836483F58453E03153O00726278612O73657469643A2O2F373133372O392O34030A3O00F5CAE751D5D0E753DA9503043O003CB4A48E03093O0079500C2426F91B575003073O0072383E6549478D03093O0099E7D2C9B9FDD2CBB603043O00A4D889BB03163O00726278612O73657469643A2O2F333133373632363330030A3O00F3E838BFA7EA02DDE86003073O006BB28651D2C69E03093O0019008BCBAB2C078DC803053O00CA586EE2A603083O007472756567616D6503103O00F00A8CF3E4CC1B8BF1C3C00E96FEC5CD03053O00AAA36FE29703053O002539A6344B03073O00497150D2582E57030A3O00B329CC1CEE8C2DD917E303053O0087E14CAD7203043O002EE8A0A403073O00C77A8DD8D0CCDD03233O008ECF15F16CF3A99D32E938DFA3D31FE679E2A4D21EB077F8EDEE13E271E6B9DF1CFF6003063O0096CDBD70901803093O00048AB641059C181F2B03083O007045E4DF2C64E871030A3O00F5110EDEB7688FDB115603073O00E6B47F67B3D61C03093O00AD0B564BE555E9830B03073O0080EC653F26842103093O008DA71849B7FFC6A3A703073O00AFCCC97124D68B030A3O0066C23CD10553C53AD25603053O006427AC55BC03093O008C76B08D32B971B68E03053O0053CD18D9E003093O00C7CBC430E7D1C432E803043O005D86A5AD030A3O009FFCC8CF3BDABB71B0A303083O001EDE92A1A25AAED203093O00C4407907E45A7905EB03043O006A852E1003093O00792E7AF15B54512F7D03063O00203840139C3A030A3O007BC6EC2O5BE68955C6B403073O00E03AA885363A9203093O00785842F074928E045703083O006B39362B9D15E6E703093O00FA8518F8B8C8C6D48503073O00AFBBEB7195D9BC030A3O001DA18841E26D7133A1D003073O00185CCFE12C831903093O006ADDB1411A6942DCB603063O001D2BB3D82C7B03093O009CD72941BCCD2943B303043O002CDDB940030A3O0020E941527215EE47512203053O00136187283F03093O008F523A362E25A7533D03063O0051CE3C535B4F03093O006FA5D97F2ED744AB4003083O00C42ECBB0124FA32D030A3O00992C771325EFE6B72C2F03073O008FD8421E7E449B03093O008BC604C6C4B7DEEEA403083O0081CAA86DABA5C3B703093O0003563ED5DF00EF2D5603073O0086423857B8BE74030A3O001D3F00B618FF283A326003083O00555C5169DB798B4103093O00DCBD59487DCBF4BC5E03063O00BF9DD330251C026O00F03F01FB022O00063A3O00F902013O0004233O00F9020100123B000100013O00204900010001000200202O0001000100032O002400035O001245000400043O001245000500054O00210003000500022O002F00043O00022O002400055O001245000600063O001245000700074O00210005000700022O002400065O001245000700083O001245000800094O00210006000800022O00150004000500062O002400055O0012450006000A3O0012450007000B4O00210005000700022O002400065O0012450007000C3O0012450008000D4O00210006000800022O00150004000500062O003600010004000100123B000100013O00204900010001000E00204900010001000F00204900010001001000204900010001001100204900010001001200204900010001001300202O0001000100142O000900010002000100123B000100013O00204900010001000E00204900010001000F00204900010001001000204900010001001100204900010001001500204900010001001600202O0001000100142O000900010002000100123B000100013O00204900010001000E00204900010001000F00204900010001001000204900010001001100204900010001001700204900010001001800202O0001000100142O000900010002000100123B000100013O00204900010001000E00204900010001000F00204900010001001000204900010001001100204900010001001900204900010001001A00202O0001000100142O000900010002000100123B000100013O00204900010001000E00204900010001000F00204900010001001000204900010001001100204900010001001900204900010001001B00202O0001000100142O000900010002000100123B000100013O00204900010001000E00204900010001000F00204900010001001000204900010001001100204900010001001C00204900010001001D00202O0001000100142O000900010002000100123B000100013O00204900010001000E00204900010001000F00204900010001001000204900010001001100204900010001001E00204900010001001F00202O0001000100142O000900010002000100123B000100013O00204900010001000E00204900010001000F00204900010001001000204900010001001100204900010001002000204900010001002100202O0001000100142O000900010002000100123B000100233O0020490001000100242O002400025O001245000300253O001245000400264O0037000200044O004300013O0002001239000100223O00123B000100223O00123B000200013O00204900020002000E00204900020002000F00204900020002001000204900020002001100204900020002001900100C00010027000200123B000100223O00301800010028002900123B000100223O0030180001002A002B00123B000100224O002400025O0012450003002D3O0012450004002E4O002100020004000200100C0001002C000200123B000100223O00202O00010001002F2O002400035O001245000400303O001245000500314O0037000300054O000700013O000100123B000100223O00301800010028002900123B000100233O0020490001000100242O002400025O001245000300333O001245000400344O0037000200044O004300013O0002001239000100323O00123B000100323O00123B000200013O00204900020002000E00204900020002000F00204900020002001000204900020002001100204900020002001900100C00010027000200123B000100323O00301800010028002900123B000100323O0030180001002A002B00123B000100324O002400025O001245000300353O001245000400364O002100020004000200100C0001002C000200123B000100323O00202O00010001002F2O002400035O001245000400373O001245000500384O0037000300054O000700013O000100123B000100323O00301800010028002900123B000100233O0020490001000100242O002400025O0012450003003A3O0012450004003B4O0037000200044O004300013O0002001239000100393O00123B000100393O00123B000200013O00204900020002000E00204900020002000F00204900020002001000204900020002001100204900020002001200100C00010027000200123B000100393O00301800010028002900123B000100393O0030180001002A003C00123B000100394O002400025O0012450003003D3O0012450004003E4O002100020004000200100C0001002C000200123B000100393O00202O00010001002F2O002400035O0012450004003F3O001245000500404O0037000300054O000700013O000100123B000100393O00301800010028002900123B000100233O0020490001000100242O002400025O001245000300423O001245000400434O0037000200044O004300013O0002001239000100413O00123B000100413O00123B000200013O00204900020002000E00204900020002000F00204900020002001000204900020002001100204900020002001500100C00010027000200123B000100413O00301800010028002900123B000100413O0030180001002A004400123B000100414O002400025O001245000300453O001245000400464O002100020004000200100C0001002C000200123B000100413O00202O00010001002F2O002400035O001245000400473O001245000500484O0037000300054O000700013O000100123B000100413O00301800010028002900123B000100233O0020490001000100242O002400025O0012450003004A3O0012450004004B4O0037000200044O004300013O0002001239000100493O00123B000100493O00123B000200013O00204900020002000E00204900020002000F00204900020002001000204900020002001100204900020002001700100C00010027000200123B000100493O00301800010028002900123B000100493O0030180001002A004C00123B000100494O002400025O0012450003004D3O0012450004004E4O002100020004000200100C0001002C000200123B000100493O00202O00010001002F2O002400035O0012450004004F3O001245000500504O0037000300054O000700013O000100123B000100493O00301800010028002900123B000100233O0020490001000100242O002400025O001245000300523O001245000400534O0037000200044O004300013O0002001239000100513O00123B000100513O00123B000200013O00204900020002000E00204900020002000F00204900020002001000204900020002001100204900020002001C00100C00010027000200123B000100513O00301800010028002900123B000100513O0030180001002A005400123B000100514O002400025O001245000300553O001245000400564O002100020004000200100C0001002C000200123B000100513O00202O00010001002F2O002400035O001245000400573O001245000500584O0037000300054O000700013O000100123B000100513O00301800010028002900123B000100233O0020490001000100242O002400025O0012450003005A3O0012450004005B4O0037000200044O004300013O0002001239000100593O00123B000100593O00123B000200013O00204900020002000E00204900020002000F00204900020002001000204900020002001100204900020002002000100C00010027000200123B000100593O00301800010028002900123B000100593O0030180001002A005C00123B000100594O002400025O0012450003005D3O0012450004005E4O002100020004000200100C0001002C000200123B000100593O00202O00010001002F2O002400035O0012450004005F3O001245000500604O0037000300054O000700013O000100123B000100593O00301800010028002900123B000100233O0020490001000100242O002400025O001245000300613O001245000400624O0037000200044O004300013O0002001239000100593O00123B000100593O00123B000200013O00204900020002000E00204900020002000F00204900020002001000204900020002001100204900020002001E00100C00010027000200123B000100593O00301800010028002900123B000100593O0030180001002A006300123B000100594O002400025O001245000300643O001245000400654O002100020004000200100C0001002C000200123B000100593O00202O00010001002F2O002400035O001245000400663O001245000500674O0037000300054O000700013O000100123B000100593O00123B000200683O00204900020002000200202O0002000200032O002400045O001245000500693O0012450006006A4O00210004000600022O002F00053O00022O002400065O0012450007006B3O0012450008006C4O00210006000800022O002400075O0012450008006D3O0012450009006E4O00210007000900022O00150005000600072O002400065O0012450007006F3O001245000800704O00210006000800022O002400075O001245000800713O001245000900724O00210007000900022O00150005000600072O002100020005000200100C00010028000200123B000100013O00204900010001000E00204900010001000F00204900010001001000204900010001001100204900010001001200204900010001001300202O0001000100142O000900010002000100123B000100013O00204900010001000E00204900010001000F00204900010001001000204900010001001100204900010001001500204900010001001600202O0001000100142O000900010002000100123B000100013O00204900010001000E00204900010001000F00204900010001001000204900010001001100204900010001001700204900010001001800202O0001000100142O000900010002000100123B000100013O00204900010001000E00204900010001000F00204900010001001000204900010001001100204900010001001900204900010001001A00202O0001000100142O000900010002000100123B000100013O00204900010001000E00204900010001000F00204900010001001000204900010001001100204900010001001900204900010001001B00202O0001000100142O000900010002000100123B000100013O00204900010001000E00204900010001000F00204900010001001000204900010001001100204900010001001C00204900010001001D00202O0001000100142O000900010002000100123B000100013O00204900010001000E00204900010001000F00204900010001001000204900010001001100204900010001001E00204900010001001F00202O0001000100142O000900010002000100123B000100013O00204900010001000E00204900010001000F00204900010001001000204900010001001100204900010001002000204900010001002100202O0001000100142O000900010002000100123B000100233O0020490001000100242O002400025O001245000300733O001245000400744O0037000200044O004300013O0002001239000100223O00123B000100223O00123B000200013O00204900020002000E00204900020002000F00204900020002001000204900020002001100204900020002001900100C00010027000200123B000100223O00301800010028002900123B000100223O0030180001002A006300123B000100224O002400025O001245000300753O001245000400764O002100020004000200100C0001002C000200123B000100223O00202O00010001002F2O002400035O001245000400773O001245000500784O0037000300054O000700013O000100123B000100223O00301800010028002900123B000100233O0020490001000100242O002400025O001245000300793O0012450004007A4O0037000200044O004300013O0002001239000100323O00123B000100323O00123B000200013O00204900020002000E00204900020002000F00204900020002001000204900020002001100204900020002001900100C00010027000200123B000100323O00301800010028002900123B000100323O0030180001002A006300123B000100324O002400025O0012450003007B3O0012450004007C4O002100020004000200100C0001002C000200123B000100323O00202O00010001002F2O002400035O0012450004007D3O0012450005007E4O0037000300054O000700013O000100123B000100323O00301800010028002900123B000100233O0020490001000100242O002400025O0012450003007F3O001245000400804O0037000200044O004300013O0002001239000100393O00123B000100393O00123B000200013O00204900020002000E00204900020002000F00204900020002001000204900020002001100204900020002001200100C00010027000200123B000100393O00301800010028002900123B000100393O0030180001002A006300123B000100394O002400025O001245000300813O001245000400824O002100020004000200100C0001002C000200123B000100393O00202O00010001002F2O002400035O001245000400833O001245000500844O0037000300054O000700013O000100123B000100393O00301800010028002900123B000100233O0020490001000100242O002400025O001245000300853O001245000400864O0037000200044O004300013O0002001239000100413O00123B000100413O00123B000200013O00204900020002000E00204900020002000F00204900020002001000204900020002001100204900020002001500100C00010027000200123B000100413O00301800010028002900123B000100413O0030180001002A006300123B000100414O002400025O001245000300873O001245000400884O002100020004000200100C0001002C000200123B000100413O00202O00010001002F2O002400035O001245000400893O0012450005008A4O0037000300054O000700013O000100123B000100413O00301800010028002900123B000100233O0020490001000100242O002400025O0012450003008B3O0012450004008C4O0037000200044O004300013O0002001239000100493O00123B000100493O00123B000200013O00204900020002000E00204900020002000F00204900020002001000204900020002001100204900020002001700100C00010027000200123B000100493O00301800010028002900123B000100493O0030180001002A006300123B000100494O002400025O0012450003008D3O0012450004008E4O002100020004000200100C0001002C000200123B000100493O00202O00010001002F2O002400035O0012450004008F3O001245000500904O0037000300054O000700013O000100123B000100493O00301800010028002900123B000100233O0020490001000100242O002400025O001245000300913O001245000400924O0037000200044O004300013O0002001239000100513O00123B000100513O00123B000200013O00204900020002000E00204900020002000F00204900020002001000204900020002001100204900020002001C00100C00010027000200123B000100513O00301800010028002900123B000100513O0030180001002A005400123B000100514O002400025O001245000300933O001245000400944O002100020004000200100C0001002C000200123B000100513O00202O00010001002F2O002400035O001245000400953O001245000500964O0037000300054O000700013O000100123B000100513O00301800010028002900123B000100233O0020490001000100242O002400025O001245000300973O001245000400984O0037000200044O004300013O0002001239000100593O00123B000100593O00123B000200013O00204900020002000E00204900020002000F00204900020002001000204900020002001100204900020002002000100C00010027000200123B000100593O00301800010028002900123B000100593O0030180001002A005C00123B000100594O002400025O001245000300993O0012450004009A4O002100020004000200100C0001002C000200123B000100593O00202O00010001002F2O002400035O0012450004009B3O0012450005009C4O0037000300054O000700013O000100123B000100593O00301800010028002900123B000100233O0020490001000100242O002400025O0012450003009D3O0012450004009E4O0037000200044O004300013O0002001239000100593O00123B000100593O00123B000200013O00204900020002000E00204900020002000F00204900020002001000204900020002001100204900020002001E00100C00010027000200123B000100593O00301800010028002900123B000100593O0030180001002A006300123B000100594O002400025O0012450003009F3O001245000400A04O002100020004000200100C0001002C000200123B000100593O00202O00010001002F2O002400035O001245000400A13O001245000500A24O0037000300054O000700013O000100123B000100593O0030180001002800290004233O00FA020100204900013O00A32O00343O00017O00",v17(),...);
---Innovation was here