


local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v42=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v42,v42 + 1 )),v1(v2(v25,1 + (v42% #v25) ,1 + (v42% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=0;local v30;local v31;local v32;local v33;local v34;local v35;local v36;local v37;local v38;local v39;local v40;local v41;while true do if (v29==5) then v41=nil;function v41(v43,v44,v45) local v46=0;local v47;local v48;local v49;while true do if (0==v46) then v47=v43[4 -3 ];v48=v43[2];v46=1;end if (v46==1) then v49=v43[3];return function(...) local v92=v47;local v93=v48;local v94=v49;local v95=v39;local v96=1638 -(1523 + 114) ;local v97= -1;local v98={};local v99={...};local v100=v20("#",...) -1 ;local v101={};local v102={};for v117=0,v100 do if (v117>=v94) then v98[v117-v94 ]=v99[v117 + 1 ];else v102[v117]=v99[v117 + (3 -2) ];end end local v103=(v100-v94) + 1 ;local v104;local v105;while true do local v118=0;while true do if (v118==0) then v104=v92[v96];v105=v104[1 + 0 ];v118=1;end if (v118==1) then if (v105<=34) then if (v105<=16) then if (v105<=(9 -2)) then if (v105<=3) then if (v105<=(1066 -(68 + 997))) then if (v105==(1270 -(226 + 1044))) then local v145=v104[2];v102[v145](v21(v102,v145 + 1 ,v97));else v102[v104[2]][v104[12 -9 ]]=v104[4];end elseif (v105==2) then if  not v102[v104[2]] then v96=v96 + (118 -(32 + 85)) ;else v96=v104[3];end else v102[v104[2]][v104[10 -7 ]]=v102[v104[4]];end elseif (v105<=5) then if (v105>4) then local v150=0;local v151;local v152;local v153;local v154;while true do if (v150==0) then v151=v104[2];v152,v153=v95(v102[v151](v102[v151 + 1 + 0 ]));v150=1;end if (v150==2) then for v331=v151,v97 do local v332=0;while true do if (v332==0) then v154=v154 + 1 ;v102[v331]=v152[v154];break;end end end break;end if (v150==1) then v97=(v153 + v151) -1 ;v154=0;v150=2;end end else v102[v104[2]]=v104[3] + v102[v104[4]] ;end elseif (v105==6) then local v156=0;local v157;while true do if (v156==0) then v157=v104[1 + 1 ];v102[v157]=v102[v157](v21(v102,v157 + 1 ,v104[3]));break;end end else v96=v104[3];end elseif (v105<=(870 -(814 + 45))) then if (v105<=9) then if (v105>8) then v102[v104[2]]={};else do return v102[v104[959 -(892 + 65) ]]();end end elseif (v105>10) then local v160=0;local v161;while true do if (v160==0) then v161=v104[2];do return v21(v102,v161,v97);end break;end end else v102[v104[2]]=v102[v104[7 -4 ]][v104[4]];end elseif (v105<=13) then if (v105==12) then v102[v104[2]]=v44[v104[3]];else v102[v104[2]]=v102[v104[5 -2 ]]%v102[v104[4]] ;end elseif (v105<=(25 -11)) then v102[v104[2]][v104[3]]=v102[v104[4]];elseif (v105>15) then v102[v104[2]]=v45[v104[3]];else local v272=0;local v273;local v274;local v275;while true do if (v272==0) then v273=v93[v104[3]];v274=nil;v272=1;end if (v272==2) then for v356=1,v104[4] do v96=v96 + 1 ;local v357=v92[v96];if (v357[1 + 0 ]==54) then v275[v356-(351 -(87 + 263)) ]={v102,v357[3]};else v275[v356-(181 -(67 + 113)) ]={v44,v357[3]};end v101[ #v101 + 1 ]=v275;end v102[v104[2 + 0 ]]=v41(v273,v274,v45);break;end if (1==v272) then v275={};v274=v18({},{[v7("\147\134\5\141\37\200\180","\173\204\217\108\227\65")]=function(v359,v360) local v361=0;local v362;while true do if (v361==0) then v362=v275[v360];return v362[1][v362[2]];end end end,[v7("\210\255\80\198\34\228\206\90\198\45","\85\141\160\62\163")]=function(v363,v364,v365) local v366=0;local v367;while true do if (0==v366) then v367=v275[v364];v367[1][v367[2]]=v365;break;end end end});v272=2;end end end elseif (v105<=25) then if (v105<=20) then if (v105<=18) then if (v105==17) then local v169=0;local v170;while true do if (v169==0) then v170=v104[1 + 1 ];v102[v170](v21(v102,v170 + 1 ,v97));break;end end else local v171=0;local v172;local v173;local v174;while true do if (v171==0) then v172=v104[887 -(261 + 624) ];v173=v102[v172 + (4 -2) ];v171=1;end if (v171==2) then if (v173>0) then if (v174<=v102[v172 + 1 ]) then local v374=0;while true do if (v374==0) then v96=v104[3];v102[v172 + 3 ]=v174;break;end end end elseif (v174>=v102[v172 + 1 + 0 ]) then local v375=0;while true do if (0==v375) then v96=v104[3];v102[v172 + (11 -8) ]=v174;break;end end end break;end if (v171==1) then v174=v102[v172] + v173 ;v102[v172]=v174;v171=2;end end end elseif (v105>(33 -14)) then local v175=0;local v176;while true do if (v175==0) then v176=v104[2];v102[v176]=v102[v176](v21(v102,v176 + 1 ,v97));break;end end elseif v102[v104[2]] then v96=v96 + 1 ;else v96=v104[3];end elseif (v105<=(974 -(802 + 150))) then if (v105==(56 -35)) then v102[v104[2]]=v104[3];else v102[v104[2]]=v104[5 -2 ] + v102[v104[4]] ;end elseif (v105<=23) then local v180=0;local v181;local v182;local v183;while true do if (v180==0) then v181=v104[2];v182=v102[v181];v180=1;end if (1==v180) then v183=v102[v181 + 2 ];if (v183>0) then if (v182>v102[v181 + 1 + 0 ]) then v96=v104[3];else v102[v181 + 3 ]=v182;end elseif (v182<v102[v181 + 1 ]) then v96=v104[9 -6 ];else v102[v181 + (14 -11) ]=v182;end break;end end elseif (v105==24) then v96=v104[3];else v102[v104[2]]();end elseif (v105<=29) then if (v105<=27) then if (v105>26) then v102[v104[1 + 1 ]]();else v102[v104[2]]=v45[v104[3]];end elseif (v105>28) then local v186=0;local v187;local v188;while true do if (v186==0) then v187=v104[999 -(915 + 82) ];v188=v102[v187];v186=1;end if (1==v186) then for v333=v187 + 1 ,v97 do v15(v188,v102[v333]);end break;end end else v45[v104[3]]=v102[v104[2]];end elseif (v105<=31) then if (v105>30) then local v191=0;local v192;while true do if (0==v191) then v192=v104[2];do return v102[v192](v21(v102,v192 + 1 ,v104[3]));end break;end end else v102[v104[2]]=v102[v104[3]]%v102[v104[13 -9 ]] ;end elseif (v105<=32) then local v194=v93[v104[3]];local v195;local v196={};v195=v18({},{[v7("\19\1\202\216\164\224\52","\133\76\94\163\182\192")]=function(v253,v254) local v255=0;local v256;while true do if (v255==0) then v256=v196[v254];return v256[2 -1 ][v256[2]];end end end,[v7("\25\202\58\35\23\38\40\241\49\62","\79\70\149\84\70\96")]=function(v257,v258,v259) local v260=v196[v258];v260[1][v260[2]]=v259;end});for v262=1,v104[1751 -(760 + 987) ] do local v263=0;local v264;while true do if (0==v263) then v96=v96 + 1 ;v264=v92[v96];v263=1;end if (v263==1) then if (v264[1]==54) then v196[v262-1 ]={v102,v264[3]};else v196[v262-(1914 -(1789 + 124)) ]={v44,v264[3]};end v101[ #v101 + 1 ]=v196;break;end end end v102[v104[2]]=v41(v194,v195,v45);elseif (v105==33) then v102[v104[2]]=v102[v104[3]][v104[4]];else local v280=v104[2];do return v102[v280](v21(v102,v280 + 1 ,v104[3]));end end elseif (v105<=51) then if (v105<=(808 -(745 + 21))) then if (v105<=38) then if (v105<=36) then if (v105==(13 + 22)) then local v198=0;local v199;local v200;local v201;local v202;while true do if (v198==0) then v199=v104[2];v200,v201=v95(v102[v199](v21(v102,v199 + 1 ,v104[2 + 1 ])));v198=1;end if (v198==2) then for v337=v199,v97 do local v338=0;while true do if (v338==0) then v202=v202 + (2 -1) ;v102[v337]=v200[v202];break;end end end break;end if (v198==1) then v97=(v201 + v199) -1 ;v202=0;v198=2;end end else v102[v104[2]]=v102[v104[3]]%v104[4] ;end elseif (v105==37) then v102[v104[2]]=v102[v104[3]];else v102[v104[2]]=v44[v104[3]];end elseif (v105<=(156 -116)) then if (v105==(50 -11)) then v102[v104[2 + 0 ]]= #v102[v104[1190 -(1069 + 118) ]];else v102[v104[2]]= #v102[v104[3]];end elseif (v105==41) then local v210=0;local v211;local v212;local v213;local v214;while true do if (v210==1) then v97=(v213 + v211) -1 ;v214=0;v210=2;end if (v210==2) then for v339=v211,v97 do local v340=0;while true do if (v340==0) then v214=v214 + 1 ;v102[v339]=v212[v214];break;end end end break;end if (v210==0) then v211=v104[4 -2 ];v212,v213=v95(v102[v211](v102[v211 + (1056 -(87 + 968)) ]));v210=1;end end else local v215=0;local v216;local v217;local v218;local v219;while true do if (v215==1) then v97=(v218 + v216) -1 ;v219=0 -0 ;v215=2;end if (v215==2) then for v341=v216,v97 do local v342=0;while true do if (0==v342) then v219=v219 + 1 ;v102[v341]=v217[v219];break;end end end break;end if (v215==0) then v216=v104[2];v217,v218=v95(v102[v216](v21(v102,v216 + (4 -3) ,v104[3])));v215=1;end end end elseif (v105<=46) then if (v105<=44) then if (v105>43) then local v220=0;local v221;local v222;local v223;while true do if (v220==0) then v221=v104[2];v222=v102[v221];v220=1;end if (v220==1) then v223=v102[v221 + 2 ];if (v223>0) then if (v222>v102[v221 + 1 ]) then v96=v104[3];else v102[v221 + 3 ]=v222;end elseif (v222<v102[v221 + 1 ]) then v96=v104[3];else v102[v221 + 3 + 0 ]=v222;end break;end end else v102[v104[2]]={};end elseif (v105==(101 -56)) then for v265=v104[2],v104[3] do v102[v265]=nil;end else v102[v104[1 + 1 ]][v104[3]]=v104[1417 -(447 + 966) ];end elseif (v105<=(84 -36)) then if (v105>47) then local v227=0;local v228;local v229;while true do if (v227==1) then v102[v228 + 1 ]=v229;v102[v228]=v229[v104[1821 -(1703 + 114) ]];break;end if (v227==0) then v228=v104[5 -3 ];v229=v102[v104[3]];v227=1;end end else local v230=v104[2];v102[v230]=v102[v230](v21(v102,v230 + 1 + 0 ,v104[704 -(376 + 325) ]));end elseif (v105<=49) then do return;end elseif (v105>(81 -31)) then local v281=0;local v282;local v283;local v284;local v285;while true do if (v281==1) then v97=(v284 + v282) -(792 -(368 + 423)) ;v285=0;v281=2;end if (v281==2) then for v370=v282,v97 do local v371=0;while true do if (v371==0) then v285=v285 + 1 ;v102[v370]=v283[v285];break;end end end break;end if (v281==0) then v282=v104[2];v283,v284=v95(v102[v282](v21(v102,v282 + 1 ,v97)));v281=1;end end else local v286=v104[2];do return v21(v102,v286,v97);end end elseif (v105<=60) then if (v105<=55) then if (v105<=53) then if (v105==52) then local v232=0;local v233;local v234;while true do if (0==v232) then v233=v104[2];v234=v102[v233];v232=1;end if (v232==1) then for v343=v233 + 1 ,v97 do v15(v234,v102[v343]);end break;end end else local v235=v104[2];v102[v235]=v102[v235](v21(v102,v235 + 1 ,v97));end elseif (v105>54) then v102[v104[2]]=v102[v104[3]] + v104[4] ;else v102[v104[2]]=v102[v104[3]];end elseif (v105<=57) then if (v105>(172 -116)) then local v240=0;local v241;local v242;local v243;local v244;while true do if (v240==2) then for v344=v241,v97 do v244=v244 + 1 + 0 ;v102[v344]=v242[v244];end break;end if (v240==1) then v97=(v243 + v241) -1 ;v244=0;v240=2;end if (v240==0) then v241=v104[2];v242,v243=v95(v102[v241](v21(v102,v241 + 1 ,v97)));v240=1;end end elseif (v102[v104[2]]==v104[4]) then v96=v96 + 1 ;else v96=v104[3];end elseif (v105<=58) then if v102[v104[6 -4 ]] then v96=v96 + 1 ;else v96=v104[3];end elseif (v105==59) then v102[v104[2]]=v102[v104[3]] + v104[4] ;else local v290=0;local v291;local v292;while true do if (v290==0) then v291=v104[2];v292=v102[v104[3]];v290=1;end if (v290==1) then v102[v291 + 1 ]=v292;v102[v291]=v292[v104[4]];break;end end end elseif (v105<=64) then if (v105<=62) then if (v105==61) then for v267=v104[2],v104[3] do v102[v267]=nil;end else v102[v104[4 -2 ]]=v102[v104[3]]%v104[4] ;end elseif (v105==(81 -(10 + 8))) then if  not v102[v104[2]] then v96=v96 + 1 ;else v96=v104[3];end else v45[v104[3]]=v102[v104[2]];end elseif (v105<=66) then if (v105>65) then do return;end else do return v102[v104[2]]();end end elseif (v105<=67) then local v248=0;local v249;local v250;local v251;while true do if (v248==0) then v249=v104[2];v250=v102[v249 + 2 ];v248=1;end if (v248==2) then if (v250>(14 -(9 + 5))) then if (v251<=v102[v249 + 1 ]) then v96=v104[3];v102[v249 + 3 ]=v251;end elseif (v251>=v102[v249 + (3 -2) ]) then v96=v104[3];v102[v249 + 3 ]=v251;end break;end if (v248==1) then v251=v102[v249] + v250 ;v102[v249]=v251;v248=2;end end elseif (v105>68) then if (v102[v104[2]]==v104[4]) then v96=v96 + 1 ;else v96=v104[445 -(416 + 26) ];end else v102[v104[378 -(85 + 291) ]]=v104[1268 -(243 + 1022) ];end v96=v96 + 1 ;break;end end end end;end end end return v41(v40(),{},v28)(...);end if (v29==2) then function v34() local v50=0;local v51;local v52;while true do if (v50==1) then return (v52 * (659 -403)) + v51 ;end if (0==v50) then v51,v52=v9(v27,v30,v30 + 2 );v30=v30 + (3 -1) ;v50=1;end end end v35=nil;function v35() local v53=0;local v54;local v55;local v56;local v57;while true do if (v53==1) then return (v57 * 16777216) + (v56 * 65536) + (v55 * 256) + v54 ;end if (v53==0) then v54,v55,v56,v57=v9(v27,v30,v30 + 3 );v30=v30 + 4 ;v53=1;end end end v36=nil;v29=3;end if (v29==1) then function v32(v58,v59,v60) if v60 then local v82=0;local v83;while true do if (v82==0) then v83=(v58/(2^(v59-1)))%(2^(((v60-1) -(v59-1)) + (3 -2))) ;return v83-(v83%1) ;end end else local v84=0;local v85;while true do if (v84==0) then v85=2^(v59-1) ;return (((v58%(v85 + v85))>=v85) and (2 -1)) or 0 ;end end end end v33=nil;function v33() local v61=0;local v62;while true do if (v61==1) then return v62;end if (v61==0) then v62=v9(v27,v30,v30);v30=v30 + 1 ;v61=1;end end end v34=nil;v29=2;end if (v29==3) then function v36() local v63=0;local v64;local v65;local v66;local v67;local v68;local v69;while true do if (v63==2) then v68=v32(v65,21,31);v69=((v32(v65,462 -(44 + 386) )==1) and  -1) or 1 ;v63=3;end if (v63==1) then v66=1;v67=(v32(v65,620 -(555 + 64) ,951 -(857 + 74) ) * ((440 -(145 + 293))^32)) + v64 ;v63=2;end if (0==v63) then v64=v35();v65=v35();v63=1;end if (v63==3) then if (v68==0) then if (v67==(1486 -(998 + 488))) then return v69 * 0 ;else local v123=0;while true do if (v123==0) then v68=1;v66=568 -(367 + 201) ;break;end end end elseif (v68==(651 + 1396)) then return ((v67==0) and (v69 * (1/0))) or (v69 * NaN) ;end return v16(v69,v68-(1950 -(214 + 713)) ) * (v66 + (v67/(2^52))) ;end end end v37=nil;function v37(v70) local v71=0;local v72;local v73;while true do if (v71==2) then v73={};for v106=1, #v72 do v73[v106]=v10(v9(v11(v72,v106,v106)));end v71=3;end if (v71==0) then v72=nil;if  not v70 then v70=v35();if (v70==0) then return "";end end v71=1;end if (v71==3) then return v14(v73);end if (v71==1) then v72=v11(v27,v30,(v30 + v70) -1 );v30=v30 + v70 ;v71=2;end end end v38=v35;v29=4;end if (v29==4) then v39=nil;function v39(...) return {...},v20("#",...);end v40=nil;function v40() local v74=0;local v75;local v76;local v77;local v78;local v79;local v80;while true do if (v74==1) then v78={v75,v76,nil,v77};v79=v35();v80={};v74=2;end if (v74==2) then for v108=1,v79 do local v109=0;local v110;local v111;while true do if (0==v109) then v110=v33();v111=nil;v109=1;end if (1==v109) then if (v110==1) then v111=v33()~=(0 + 0) ;elseif (v110==2) then v111=v36();elseif (v110==3) then v111=v37();end v80[v108]=v111;break;end end end v78[3]=v33();for v112=1,v35() do local v113=0;local v114;while true do if (v113==0) then v114=v33();if (v32(v114,1,1)==0) then local v129=0;local v130;local v131;local v132;while true do if (v129==2) then if (v32(v131,1,1)==1) then v132[2]=v80[v132[2]];end if (v32(v131,2,2)==1) then v132[3]=v80[v132[1141 -(116 + 1022) ]];end v129=3;end if (v129==0) then v130=v32(v114,2,3);v131=v32(v114,4,6);v129=1;end if (v129==3) then if (v32(v131,3,3)==1) then v132[4]=v80[v132[881 -(282 + 595) ]];end v75[v112]=v132;break;end if (v129==1) then v132={v34(),v34(),nil,nil};if (v130==0) then local v140=0;while true do if (v140==0) then v132[3]=v34();v132[776 -(201 + 571) ]=v34();break;end end elseif (v130==1) then v132[3]=v35();elseif (v130==(1 + 1)) then v132[3]=v35() -(2^16) ;elseif (v130==3) then local v252=0;while true do if (v252==0) then v132[3]=v35() -(2^16) ;v132[4]=v34();break;end end end v129=2;end end end break;end end end v74=3;end if (v74==0) then v75={};v76={};v77={};v74=1;end if (v74==3) then for v115=1,v35() do v76[v115-1 ]=v40();end return v78;end end end v29=5;end if (v29==0) then v30=2 -1 ;v31=nil;v27=v12(v11(v27,5),v7("\163\118","\58\141\88\102\109\219\161"),function(v81) if (v9(v81,2)==79) then v31=v8(v11(v81,1,1));return "";else local v86=0;local v87;while true do if (v86==0) then v87=v10(v8(v81,16));if v31 then local v125=0;local v126;while true do if (0==v125) then v126=v13(v87,v31);v31=nil;v125=1;end if (1==v125) then return v126;end end else return v87;end break;end end end end);v32=nil;v29=1;end end end return v23("LOL!0D3O0003063O00737472696E6703043O006368617203043O00627974652O033O0073756203053O0062697433322O033O0062697403043O0062786F7203053O007461626C6503063O00636F6E63617403063O00696E7365727403053O006D6174636803083O00746F6E756D62657203053O007063612O6C00243O0012103O00013O00200A5O0002001210000100013O00200A000100010003001210000200013O00200A000200020004001210000300053O00063F0003000A000100010004183O000A0001001210000300063O00200A000400030007001210000500083O00200A000500050009001210000600083O00200A00060006000A00060F00073O000100062O00363O00064O00368O00363O00044O00363O00014O00363O00024O00363O00053O001210000800013O00200A00080008000B0012100009000C3O001210000A000D3O00060F000B0001000100052O00363O00074O00363O00094O00363O00084O00363O000A4O00363O000B4O0025000C000B4O0041000C00014O0032000C6O00423O00013O00023O00023O00026O00F03F026O00704002264O002B00025O001244000300014O002700045O001244000500013O00042C0003002100012O002600076O0025000800024O0026000900014O0026000A00024O0026000B00034O0026000C00044O0025000D6O0025000E00063O002037000F000600012O0023000C000F4O0035000B3O00022O0026000C00034O0026000D00044O0025000E00014O0027000F00014O000D000F0006000F001004000F0001000F2O0027001000014O000D0010000600100010040010000100100020370010001000012O0023000D00104O0033000C6O0035000A3O000200203E000A000A00022O00050009000A4O001100073O00010004120003000500012O0026000300054O0025000400024O001F000300044O003200036O00423O00017O00043O00027O004003053O003A25642B3A2O033O0025642B026O00F03F001C3O00060F5O000100012O000C8O0026000100014O0026000200024O0026000300024O002B00046O0026000500034O002500066O002D000700074O0023000500074O003400043O000100200A000400040001001244000500024O0006000300050002001244000400034O0023000200044O003500013O000200264500010018000100040004183O001800012O002500016O002B00026O001F000100024O003200015O0004183O001B00012O0026000100044O0041000100014O003200016O00423O00013O00013O00043O0003043O0067616D6503093O00576F726B737061636503083O004B692O6C41757261026O00F03F010C3O0006133O000A00013O0004183O000A0001001210000100013O00200A00010001000200060F00023O000100012O000C7O00121C000200033O001210000200034O00190002000100010004183O000B000100200A00013O00042O00423O00013O00013O00203O0003043O0067616D6503073O00506C6179657273030B3O004C6F63616C506C6179657203093O00436861726163746572030C3O0057616974466F724368696C6403043O000DE3BAC303073O00BB4586DBA75F9C03083O00496E7374616E63652O033O006E657703043O001AC4C15203053O00AD4AA5B32603043O004E616D6503043O006803AE2703053O00D72976DC4603043O0053697A6503073O00566563746F7233026O001440029A5O99B93F03083O00506F736974696F6E03083O00416E63686F7265642O01030A3O0043616E436F2O6C696465010003063O00506172656E7403063O00761F2E06FB4203053O009E3076427203073O00456E61626C656403063O009827023F63B103073O009BCB44705613C5038A012O008O207768696C65207472756520646F0A9O203O206C6F63616C20706C6179657273203D20776F726B73706163653A476574506C617965727357697468696E52616469757328617572612E506F736974696F6E2C20617572612E53697A652E582C203230292O0A9O203O20666F7220692C20706C6179657220696E20706169727328706C61796572732920646F0A9O207O20696620706C61796572207E3D2067616D652E506C61796572732E4C6F63616C506C61796572207468656E0A9O209O202O2067616D652E506C61796572732E4C6F63616C506C617965722E4368617261637465723A46696E6446697273744368696C64282248756D616E6F696422293A54616B6544616D616765283130290A9O207O20656E640A9O203O20656E642O0A9O203O207761697428302E31290A8O20656E640A4O2003063O00536F7572636503083O004B692O6C4175726100383O0012103O00013O00200A5O000200200A5O000300200A5O000400203000013O00052O002600035O001244000400063O001244000500074O0023000300054O003500013O0002001210000200083O00200A0002000200092O002600035O0012440004000A3O0012440005000B4O0023000300054O003500023O00022O002600035O0012440004000D3O0012440005000E4O00060003000500020010030002000C0003001210000300103O00200A000300030009001244000400113O001244000500113O001244000600124O00060003000600020010030002000F000300200A00030001001300100300020013000300302E00020014001500302E000200160017001003000200180001001210000300083O00200A0003000300092O002600045O001244000500193O0012440006001A4O0023000400064O003500033O000200100300030018000200302E0003001B0015001210000400083O00200A0004000400092O002600055O0012440006001C3O0012440007001D4O0023000500074O003500043O00020010030004001800020012440005001E3O0010030004001F0005001210000600204O00190006000100012O00423O00017O00",v17(),...);