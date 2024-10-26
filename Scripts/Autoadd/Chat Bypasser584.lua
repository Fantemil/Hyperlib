-- if you get banned its half your fault

-- yeah the fonts are really long its like 90% of the script
local fonts = {}
local normalxsx = {
    ["A"] = "A",
    ["B"] = "B",
    ["C"] = "C",
    ["D"] = "D",
    ["E"] = "E",
    ["F"] = "F",
    ["G"] = "G",
    ["H"] = "H",
    ["I"] = "I",
    ["J"] = "J",
    ["K"] = "K",
    ["L"] = "L",
    ["M"] = "M",
    ["N"] = "N",
    ["O"] = "O",
    ["P"] = "P",
    ["Q"] = "Q",
    ["R"] = "R",
    ["S"] = "S",
    ["T"] = "T",
    ["U"] = "U",
    ["V"] = "V",
    ["W"] = "W",
    ["X"] = "X",
    ["Y"] = "Y",
    ["Z"] = "Z",
    ["a"] = "a",
    ["b"] = "b",
    ["c"] = "c",
    ["d"] = "d",
    ["e"] = "e",
    ["f"] = "f",
    ["g"] = "g",
    ["h"] = "h",
    ["i"] = "i",
    ["j"] = "j",
    ["k"] = "k",
    ["l"] = "l",
    ["m"] = "m",
    ["n"] = "n",
    ["o"] = "o",
    ["p"] = "p",
    ["q"] = "q",
    ["r"] = "r",
    ["s"] = "s",
    ["t"] = "t",
    ["u"] = "u",
    ["v"] = "v",
    ["w"] = "w",
    ["x"] = "x",
    ["y"] = "y",
    ["z"] = "z",
    ["1"] = "1",
    ["2"] = "2",
    ["3"] = "3",
    ["4"] = "4",
    ["5"] = "5",
    ["6"] = "6",
    ["7"] = "7",
    ["8"] = "8",
    ["9"] = "9",
    ["0"] = "0",
    ["`"] = "`",
    ["~"] = "~",
    ["!"] = "!",
    ["@"] = "@",
    ["#"] = "#",
    ["$"] = "$",
    ["%"] = "%",
    ["^"] = "^",
    ["&"] = "&",
    ["*"] = "*",
    ["("] = "(",
    [")"] = ")",
    ["-"] = "-",
    ["_"] = "_",
    ["="] = "=",
    ["+"] = "+",
    ["["] = "[",
    ["]"] = "]",
    ["{"] = "{",
    ["}"] = "}",
    ["\\"] = "\\",
    ["|"] = "|",
    [";"] = ";",
    [":"] = ":",
    ["'"] = "'",
    ["\""] = "\"",
    [","] = ",",
    ["."] = ".",
    ["<"] = "<",
    [">"] = ">",
    ["/"] = "/",
    ["?"] = "?",
    [" "] = " "
}
fonts["full_squared"] = {
    NAME = "Filled Square",
    A = "\u{1F170}",
    B = "\u{1F171}",
    C = "\u{1F172}",
    D = "\u{1F173}",
    E = "\u{1F174}",
    F = "\u{1F175}",
    G = "\u{1F176}",
    H = "\u{1F177}",
    I = "\u{1F178}",
    J = "\u{1F179}",
    K = "\u{1F17A}",
    L = "\u{1F17B}",
    M = "\u{1F17C}",
    N = "\u{1F17D}",
    O = "\u{1F17E}",
    P = "\u{1F17F}",
    Q = "\u{1F180}",
    R = "\u{1F181}",
    S = "\u{1F182}",
    T = "\u{1F183}",
    U = "\u{1F184}",
    V = "\u{1F185}",
    W = "\u{1F186}",
    X = "\u{1F187}",
    Y = "\u{1F188}",
    Z = "\u{1F189}",
    [" "] = " ",
    a = "\u{1F170}",
    b = "\u{1F171}",
    c = "\u{1F172}",
    d = "\u{1F173}",
    e = "\u{1F174}",
    f = "\u{1F175}",
    g = "\u{1F176}",
    h = "\u{1F177}",
    i = "\u{1F178}",
    j = "\u{1F179}",
    k = "\u{1F17A}",
    l = "\u{1F17B}",
    m = "\u{1F17C}",
    n = "\u{1F17D}",
    o = "\u{1F17E}",
    p = "\u{1F17F}",
    q = "\u{1F180}",
    r = "\u{1F181}",
    s = "\u{1F182}",
    t = "\u{1F183}",
    u = "\u{1F184}",
    v = "\u{1F185}",
    w = "\u{1F186}",
    x = "\u{1F187}",
    y = "\u{1F188}",
    z = "\u{1F189}",
    ["1"] = "\u{0031}\u{FE0F}\u{20E3}",
    ["2"] = "\u{0032}\u{FE0F}\u{20E3}",
    ["3"] = "\u{0033}\u{FE0F}\u{20E3}",
    ["4"] = "\u{0034}\u{FE0F}\u{20E3}",
    ["5"] = "\u{0035}\u{FE0F}\u{20E3}",
    ["6"] = "\u{0036}\u{FE0F}\u{20E3}",
    ["7"] = "\u{0037}\u{FE0F}\u{20E3}",
    ["8"] = "\u{0038}\u{FE0F}\u{20E3}",
    ["9"] = "\u{0039}\u{FE0F}\u{20E3}",
    ["0"] = "\u{0030}\u{FE0F}\u{20E3}",
    ["#"] = "\u{0023}\u{FE0F}\u{20E3}",
    ["*"] = "\u{002A}\u{FE0F}\u{20E3}",
}
fonts["Japanese"] = {
    NAME = "Japanese",
    A = "\u{5342}",
    B = "\u{4e43}",
    C = "\u{531a}",
    D = "\u{15ea}",
    E = "\u{4e47}",
    F = "\u{5343}",
    G = "\u{13b6}",
    H = "\u{5344}",
    I = "\u{4e28}",
    J = "\u{FF8C}",
    K = "\u{049C}",
    L = "\u{3125}",
    M = "\u{722A}",
    N = "\u{51E0}",
    O = "\u{3116}",
    P = "\u{5369}",
    Q = "\u{024A}",
    R = "\u{5C3A}",
    S = "\u{4E02}",
    T = "\u{3112}",
    U = "\u{3129}",
    V = "\u{142F}",
    W = "\u{5C71}",
    X = "\u{4E42}",
    Y = "\u{311A}",
    Z = "\u{4E59}",
    [" "] = "\u{3000}",
    a = "\u{5342}",
    b = "\u{4E43}",
    c = "\u{531A}",
    d = "\u{15EA}",
    e = "\u{4E47}",
    f = "\u{5343}",
    g = "\u{13B6}",
    h = "\u{5344}",
    i = "\u{4E28}",
    j = "\u{FF8C}",
    k = "\u{049C}",
    l = "\u{3125}",
    m = "\u{722A}",
    n = "\u{51E0}",
    o = "\u{3116}",
    p = "\u{5369}",
    q = "\u{024A}",
    r = "\u{5C3A}",
    s = "\u{4E02}",
    t = "\u{3112}",
    u = "\u{3129}",
    v = "\u{142F}",
    w = "\u{5C71}",
    x = "\u{4E42}",
    y = "\u{311A}",
    z = "\u{4E59}",
    ["1"] = "\u{FF11}",
    ["2"] = "\u{FF12}",
    ["3"] = "\u{FF13}",
    ["4"] = "\u{FF14}",
    ["5"] = "\u{FF15}",
    ["6"] = "\u{FF16}",
    ["7"] = "\u{FF17}",
    ["8"] = "\u{FF18}",
    ["9"] = "\u{FF19}",
    ["0"] = "\u{FF10}",
    ["`"] = "`",
    ["~"] = "~",
    ["!"] = "\u{FF01}",
    ["@"] = "\u{FF20}",
    ["#"] = "\u{FF03}",
    ["$"] = "\u{FF04}",
    ["%"] = "\u{FF05}",
    ["^"] = "^",
    ["&"] = "\u{FF06}",
    ["*"] = "\u{FF0A}",
    ["("] = "\u{FF08}",
    [")"] = "\u{FF09}",
    ["-"] = "\u{FF0D}",
    ["_"] = "_",
    ["="] = "\u{FF1D}",
    ["+"] = "\u{FF0B}",
    ["["] = "[",
    ["]"] = "]",
    ["{"] = "{",
    ["}"] = "}",
    ["\\"] = "\\",
    ["|"] = "|",
    [";"] = "\u{FF1B}",
    [":"] = "\u{FF1A}",
    ["'"] = "\u{FF07}",
    ["\""] = "\"",
    [","] = "\u{FF0C}",
    ["."] = "\u{FF0E}",
    ["<"] = "<",
    [">"] = ">",
    ["/"] = "\u{FF0F}",
    ["?"] = "\u{FF1F}",
}
fonts["Crimped"] = {
    NAME = "Crimped",
    a = "\u{03B1}",
    b = "\u{10A6}",
    c = "\u{0188}",
    d = "\u{0503}",
    e = "\u{04BD}",
    f = "\u{03DD}",
    g = "\u{0260}",
    h = "\u{050B}",
    i = "\u{03B9}",
    j = "\u{029D}",
    k = "\u{0199}",
    l = "\u{0285}",
    m = "\u{0271}",
    n = "\u{0273}",
    o = "\u{03C3}",
    p = "\u{03C1}",
    q = "\u{03D9}",
    r = "\u{027E}",
    s = "\u{0282}",
    t = "\u{019A}",
    u = "\u{03C5}",
    v = "\u{028B}",
    w = "\u{026F}",
    y = "\u{10E7}",
    z = "\u{0225}",
}
fonts["regional_indicator"] = {
    NAME = "Regional Indicators",
    A = "\u{1F1E6}",
    B = "\u{1F1E7}",
    C = "\u{1F1E8}",
    D = "\u{1F1E9}",
    E = "\u{1F1EA}",
    F = "\u{1F1EB}",
    G = "\u{1F1EC}",
    H = "\u{1F1ED}",
    I = "\u{1F1EE}",
    J = "\u{1F1EF}",
    K = "\u{1F1F0}",
    L = "\u{1F1F1}",
    M = "\u{1F1F2}",
    N = "\u{1F1F3}",
    O = "\u{1F1F4}",
    P = "\u{1F1F5}",
    Q = "\u{1F1F6}",
    R = "\u{1F1F7}",
    S = "\u{1F1F8}",
    T = "\u{1F1F9}",
    U = "\u{1F1FA}",
    V = "\u{1F1FB}",
    W = "\u{1F1FC}",
    X = "\u{1F1FD}",
    Y = "\u{1F1FE}",
    Z = "\u{1F1FF}",
    [" "] = "  ",
    a = "\u{1F1E6}",
    b = "\u{1F1E7}",
    c = "\u{1F1E8}",
    d = "\u{1F1E9}",
    e = "\u{1F1EA}",
    f = "\u{1F1EB}",
    g = "\u{1F1EC}",
    h = "\u{1F1ED}",
    i = "\u{1F1EE}",
    j = "\u{1F1EF}",
    k = "\u{1F1F0}",
    l = "\u{1F1F1}",
    m = "\u{1F1F2}",
    n = "\u{1F1F3}",
    o = "\u{1F1F4}",
    p = "\u{1F1F5}",
    q = "\u{1F1F6}",
    r = "\u{1F1F7}",
    s = "\u{1F1F8}",
    t = "\u{1F1F9}",
    u = "\u{1F1FA}",
    v = "\u{1F1FB}",
    w = "\u{1F1FC}",
    x = "\u{1F1FD}",
    y = "\u{1F1FE}",
    z = "\u{1F1FF}",
    ["1"] = "1\u{FE0F}\u{20E3}",
    ["2"] = "2\u{FE0F}\u{20E3}",
    ["3"] = "3\u{FE0F}\u{20E3}",
    ["4"] = "4\u{FE0F}\u{20E3}",
    ["5"] = "5\u{FE0F}\u{20E3}",
    ["6"] = "6\u{FE0F}\u{20E3}",
    ["7"] = "7\u{FE0F}\u{20E3}",
    ["8"] = "8\u{FE0F}\u{20E3}",
    ["9"] = "9\u{FE0F}\u{20E3}",
    ["0"] = "0\u{FE0F}\u{20E3}",
    ["!"] = "\u{2757}\u{FE0F}",
    ["#"] = "#\u{FE0F}\u{20E3}",
    ["$"] = "\u{1F4B2}",
    ["*"] = "*\u{FE0F}\u{20E3}",
    ["-"] = "\u{2796}",
    ["+"] = "\u{2795}",
    ["?"] = "\u{2753}",
}
fonts["full_circle"] = {
    NAME = "Filled Circle",
    A = "\u{1F170}",
    B = "\u{1F171}",
    C = "\u{1F172}",
    D = "\u{1F173}",
    E = "\u{1F174}",
    F = "\u{1F175}",
    G = "\u{1F176}",
    H = "\u{1F177}",
    I = "\u{1F178}",
    J = "\u{1F179}",
    K = "\u{1F17A}",
    L = "\u{1F17B}",
    M = "\u{1F17C}",
    N = "\u{1F17D}",
    O = "\u{1F17E}",
    P = "\u{1F17F}",
    Q = "\u{1F180}",
    R = "\u{1F181}",
    S = "\u{1F182}",
    T = "\u{1F183}",
    U = "\u{1F184}",
    V = "\u{1F185}",
    W = "\u{1F186}",
    X = "\u{1F187}",
    Y = "\u{1F188}",
    Z = "\u{1F189}",
    [" "] = " ",
    a = "\u{1F170}",
    b = "\u{1F171}",
    c = "\u{1F172}",
    d = "\u{1F173}",
    e = "\u{1F174}",
    f = "\u{1F175}",
    g = "\u{1F176}",
    h = "\u{1F177}",
    i = "\u{1F178}",
    j = "\u{1F179}",
    k = "\u{1F17A}",
    l = "\u{1F17B}",
    m = "\u{1F17C}",
    n = "\u{1F17D}",
    o = "\u{1F17E}",
    p = "\u{1F17F}",
    q = "\u{1F180}",
    r = "\u{1F181}",
    s = "\u{1F182}",
    t = "\u{1F183}",
    u = "\u{1F184}",
    v = "\u{1F185}",
    w = "\u{1F186}",
    x = "\u{1F187}",
    y = "\u{1F188}",
    z = "\u{1F189}",
    ["1"] = "\u{2776}",
    ["2"] = "\u{2777}",
    ["3"] = "\u{2778}",
    ["4"] = "\u{2779}",
    ["5"] = "\u{277A}",
    ["6"] = "\u{277B}",
    ["7"] = "\u{277C}",
    ["8"] = "\u{277D}",
    ["9"] = "\u{277E}",
    ["0"] = "\u{24FF}",
    ["`"] = "`",
    ["~"] = "~",
    ["!"] = "!",
    ["@"] = "@",
    ["#"] = "#",
    ["$"] = "$",
    ["%"] = "%",
    ["^"] = "^",
    ["&"] = "&",
    ["*"] = "*",
    ["("] = "(",
    [")"] = ")",
    ["-"] = "-",
    ["_"] = "_",
    ["="] = "=",
    ["+"] = "+",
    ["["] = "[",
    ["]"] = "]",
    ["{"] = "{",
    ["}"] = "}",
    ["\\"] = "\\",
    ["|"] = "|",
    [";"] = ";",
    [":"] = ":",
    ["'"] = "'",
    ["\""] = "\"",
    [","] = ",",
    ["."] = ".",
    ["<"] = "<",
    [">"] = ">",
    ["/"] = "/",
    ["?"] = "?"
}
fonts["small_capitals"] = {
    NAME = "Small Capitals",
    A = "\u{1D00}",
    B = "\u{0299}",
    C = "\u{1D04}",
    D = "\u{1D05}",
    E = "\u{1D07}",
    F = "\u{A730}",
    G = "\u{0262}",
    H = "\u{029C}",
    I = "\u{026A}",
    J = "\u{1D0A}",
    K = "\u{1D0B}",
    L = "\u{029F}",
    M = "\u{1D0D}",
    N = "\u{0274}",
    O = "\u{1D0F}",
    P = "\u{1D29}",
    R = "\u{0280}",
    S = "\u{A731}",
    T = "\u{1D1B}",
    U = "\u{1D1C}",
    V = "\u{1D20}",
    W = "\u{1D21}",
    Z = "\u{1D22}",
    [" "] = " ",
    a = "\u{1D00}",
    b = "\u{0299}",
    c = "\u{1D04}",
    d = "\u{1D05}",
    e = "\u{1D07}",
    f = "\u{A730}",
    g = "\u{0262}",
    h = "\u{029C}",
    i = "\u{026A}",
    j = "\u{1D0A}",
    k = "\u{1D0B}",
    l = "\u{029F}",
    m = "\u{1D0D}",
    n = "\u{0274}",
    o = "\u{1D0F}",
    p = "\u{1D29}",
    r = "\u{0280}",
    s = "\u{A731}",
    t = "\u{1D1B}",
    u = "\u{1D1C}",
    v = "\u{1D20}",
    w = "\u{1D21}",
    z = "\u{1D22}"
}
fonts["special_characters"] = {
    ["0"] = "0",
    ["1"] = "1",
    ["2"] = "2",
    ["3"] = "3",
    ["4"] = "4",
    ["5"] = "5",
    ["6"] = "6",
    ["7"] = "7",
    ["8"] = "8",
    ["9"] = "9",
    ["a"] = "Ã¥",
    ["b"] = "Ã",
    ["c"] = "Â¢",
    ["d"] = "Ã",
    ["e"] = "Ãª",
    ["f"] = "Â£",
    ["g"] = "g",
    ["h"] = "h",
    ["i"] = "Ã¯",
    ["j"] = "j",
    ["k"] = "k",
    ["l"] = "l",
    ["m"] = "m",
    ["n"] = "Ã±",
    ["o"] = "Ã°",
    ["p"] = "Ã¾",
    ["q"] = "q",
    ["r"] = "r",
    ["s"] = "Â§",
    ["t"] = "â ",
    ["u"] = "Âµ",
    ["v"] = "v",
    ["w"] = "w",
    ["x"] = "x",
    ["y"] = "Â¥",
    ["z"] = "z",
    ["A"] = "Ã",
    ["B"] = "Ã",
    ["C"] = "Ã",
    ["D"] = "Ã",
    ["E"] = "Ã",
    ["F"] = "Â£",
    ["G"] = "G",
    ["H"] = "H",
    ["I"] = "Ã",
    ["J"] = "J",
    ["K"] = "K",
    ["L"] = "L",
    ["M"] = "M",
    ["N"] = "Ã±",
    ["O"] = "Ã",
    ["P"] = "Ã¾",
    ["Q"] = "Q",
    ["R"] = "R",
    ["S"] = "Â§",
    ["T"] = "â ",
    ["U"] = "Ã",
    ["V"] = "V",
    ["W"] = "W",
    ["X"] = "Ã",
    ["Y"] = "Â¥",
    ["Z"] = "Z"
}
fonts["full_circle_characters"] = {
    ["0"] = "\u{24FF}", -- â¿
    ["1"] = "\u{2776}", -- â¶
    ["2"] = "\u{2777}", -- â·
    ["3"] = "\u{2778}", -- â¸
    ["4"] = "\u{2779}", -- â¹
    ["5"] = "\u{277A}", -- âº
    ["6"] = "\u{277B}", -- â»
    ["7"] = "\u{277C}", -- â¼
    ["8"] = "\u{277D}", -- â½
    ["9"] = "\u{277E}", -- â¾
    ["A"] = "\u{1F150}", -- ð
    ["B"] = "\u{1F151}", -- ð
    ["C"] = "\u{1F152}", -- ð
    ["D"] = "\u{1F153}", -- ð
    ["E"] = "\u{1F154}", -- ð
    ["F"] = "\u{1F155}", -- ð
    ["G"] = "\u{1F156}", -- ð
    ["H"] = "\u{1F157}", -- ð
    ["I"] = "\u{1F158}", -- ð
    ["J"] = "\u{1F159}", -- ð
    ["K"] = "\u{1F15A}", -- ð
    ["L"] = "\u{1F15B}", -- ð
    ["M"] = "\u{1F15C}", -- ð
    ["N"] = "\u{1F15D}", -- ð
    ["O"] = "\u{1F15E}", -- ð
    ["P"] = "\u{1F15F}", -- ð
    ["Q"] = "\u{1F160}", -- ð 
    ["R"] = "\u{1F161}", -- ð¡
    ["S"] = "\u{1F162}", -- ð¢
    ["T"] = "\u{1F163}", -- ð£
    ["U"] = "\u{1F164}", -- ð¤
    ["V"] = "\u{1F165}", -- ð¥
    ["W"] = "\u{1F166}", -- ð¦
    ["X"] = "\u{1F167}", -- ð§
    ["Y"] = "\u{1F168}", -- ð¨
    ["Z"] = "\u{1F169}", -- ð©
    ["a"] = "\u{1F150}", -- ð
    ["b"] = "\u{1F151}", -- ð
    ["c"] = "\u{1F152}", -- ð
    ["d"] = "\u{1F153}", -- ð
    ["e"] = "\u{1F154}", -- ð
    ["f"] = "\u{1F155}", -- ð
    ["g"] = "\u{1F156}", -- ð
    ["h"] = "\u{1F157}", -- ð
    ["i"] = "\u{1F158}", -- ð
    ["j"] = "\u{1F159}", -- ð
    ["k"] = "\u{1F15A}", -- ð
    ["l"] = "\u{1F15B}", -- ð
    ["m"] = "\u{1F15C}", -- ð
    ["n"] = "\u{1F15D}", -- ð
    ["o"] = "\u{1F15E}", -- ð
    ["p"] = "\u{1F15F}", -- ð
    ["q"] = "\u{1F160}", -- ð 
    ["r"] = "\u{1F161}", -- ð¡
    ["s"] = "\u{1F162}", -- ð¢
    ["t"] = "\u{1F163}", -- ð£
    ["u"] = "\u{1F164}", -- ð¤
    ["v"] = "\u{1F165}", -- ð¥
    ["w"] = "\u{1F166}", -- ð¦
    ["x"] = "\u{1F167}", -- ð§
    ["y"] = "\u{1F168}", -- ð¨
    ["z"] = "\u{1F169}", -- ð©
}
fonts["mythical"] = {
    ["A"] = "\u{039B}", -- Î
    ["B"] = "\u{00DF}", -- Ã
    ["C"] = "\u{0187}", -- Æ
    ["D"] = "\u{00D0}", -- Ã
    ["E"] = "\u{00CB}", -- Ã
    ["F"] = "\u{0493}", -- Ò
    ["G"] = "\u{0193}", -- Æ
    ["H"] = "\u{0126}", -- Ä¦
    ["I"] = "\u{00CF}", -- Ã
    ["J"] = "\u{004A}", -- J
    ["K"] = "\u{049A}", -- Ò 
    ["L"] = "\u{0141}", -- Å
    ["M"] = "\u{20A5}", -- â¥
    ["N"] = "\u{014A}", -- Å
    ["O"] = "\u{00D8}", -- Ã
    ["P"] = "\u{0050}", -- P
    ["Q"] = "\u{01EA}", -- Çª
    ["R"] = "\u{042F}", -- Ð¯
    ["S"] = "\u{01A7}", -- Æ§
    ["T"] = "\u{0167}", -- Å§
    ["U"] = "\u{0173}", -- Å³
    ["V"] = "\u{0056}", -- V
    ["W"] = "\u{0429}", -- Ð©
    ["X"] = "\u{0416}", -- Ð
    ["Y"] = "\u{03AB}", -- Î«
    ["Z"] = "\u{005A}", -- Z
    ["a"] = "\u{03BB}", -- Î»
    ["b"] = "\u{00DF}", -- Ã
    ["c"] = "\u{0188}", -- Æ
    ["d"] = "\u{0111}", -- Ä
    ["e"] = "\u{00EB}", -- Ã«
    ["f"] = "\u{0192}", -- Æ
    ["g"] = "\u{01E5}", -- Ç¥
    ["h"] = "\u{0127}", -- Ä§
    ["i"] = "\u{00EF}", -- Ã¯
    ["j"] = "\u{006A}", -- j
    ["k"] = "\u{0199}", -- Æ
    ["l"] = "\u{0142}", -- Å
    ["m"] = "\u{043C}", -- Ð¼
    ["n"] = "\u{014B}", -- Å
    ["o"] = "\u{00F8}", -- Ã¸
    ["p"] = "\u{03C1}", -- Ï
    ["q"] = "\u{0071}", -- q
    ["r"] = "\u{042F}", -- Ð¯
    ["s"] = "\u{01A8}", -- Æ¨
    ["t"] = "\u{0167}", -- Å§
    ["u"] = "\u{0173}", -- Å³
    ["v"] = "\u{0076}", -- v
    ["w"] = "\u{0448}", -- Ñ
    ["x"] = "\u{0445}", -- Ñ
    ["y"] = "\u{00A5}", -- Â¥
    ["z"] = "\u{01BA}", -- Æº
    ["1"] = "\u{0031}", -- 1
    ["2"] = "\u{0032}", -- 2
    ["3"] = "\u{0033}", -- 3
    ["4"] = "\u{0034}", -- 4
    ["5"] = "\u{0035}", -- 5
    ["6"] = "\u{0036}", -- 6
    ["7"] = "\u{0037}", -- 7
    ["8"] = "\u{0038}", -- 8
    ["9"] = "\u{0039}", -- 9
    ["0"] = "\u{0030}", -- 0
}
fonts["wizard"] = {
    ["A"] = "\u{01DF}", -- Ç
    ["B"] = "\u{026E}", -- É®
    ["C"] = "\u{0188}", -- Æ
    ["D"] = "\u{0256}", -- É
    ["E"] = "\u{025B}", -- É
    ["F"] = "\u{0284}", -- Ê
    ["G"] = "\u{0262}", -- É¢
    ["H"] = "\u{0266}", -- É¦
    ["I"] = "\u{0268}", -- É¨
    ["J"] = "\u{029D}", -- Ê
    ["K"] = "\u{04C4}", -- Ó
    ["L"] = "\u{029F}", -- Ê
    ["M"] = "\u{028D}", -- Ê
    ["N"] = "\u{0580}", -- Õ¼
    ["O"] = "\u{0585}", -- Ö
    ["P"] = "\u{0584}", -- Ö
    ["Q"] = "\u{0565}", -- Õ¦
    ["R"] = "\u{0280}", -- Ê
    ["S"] = "\u{0586}", -- Ö
    ["T"] = "\u{0236}", -- È¶
    ["U"] = "\u{028A}", -- Ê
    ["V"] = "\u{028B}", -- Ê
    ["W"] = "\u{0561}", -- Õ¡
    ["X"] = "\u{04BC}", -- Ó¼
    ["Y"] = "\u{028F}", -- Ê
    ["Z"] = "\u{0290}", -- Ê
    ["a"] = "\u{01DF}", -- Ç
    ["b"] = "\u{026E}", -- É®
    ["c"] = "\u{0188}", -- Æ
    ["d"] = "\u{0256}", -- É
    ["e"] = "\u{025B}", -- É
    ["f"] = "\u{0284}", -- Ê
    ["g"] = "\u{0262}", -- É¢
    ["h"] = "\u{0266}", -- É¦
    ["i"] = "\u{0268}", -- É¨
    ["j"] = "\u{029D}", -- Ê
    ["k"] = "\u{04C4}", -- Ó
    ["l"] = "\u{029F}", -- Ê
    ["m"] = "\u{028D}", -- Ê
    ["n"] = "\u{0580}", -- Õ¼
    ["o"] = "\u{0585}", -- Ö
    ["p"] = "\u{0584}", -- Ö
    ["q"] = "\u{0565}", -- Õ¦
    ["r"] = "\u{0280}", -- Ê
    ["s"] = "\u{0586}", -- Ö
    ["t"] = "\u{0236}", -- È¶
    ["u"] = "\u{028A}", -- Ê
    ["v"] = "\u{028B}", -- Ê
    ["w"] = "\u{0561}", -- Õ¡
    ["x"] = "\u{04BC}", -- Ó¼
    ["y"] = "\u{028F}", -- Ê
    ["z"] = "\u{0290}"  -- Ê
}
fonts["sloppy"] = {
    ["A"] = "\u{03B1}", -- Î±
    ["B"] = "\u{0253}", -- É
    ["C"] = "\u{0A83}", -- à«®
    ["D"] = "\u{2202}", -- â
    ["E"] = "\u{03B5}", -- Îµ
    ["F"] = "\u{0192}", -- Æ
    ["G"] = "\u{0260}", -- É 
    ["H"] = "\u{0266}", -- É¦
    ["I"] = "\u{0E40}", -- à¹
    ["J"] = "\u{029D}", -- Ê
    ["K"] = "\u{04A1}", -- Ò¡
    ["L"] = "\u{2113}", -- â
    ["M"] = "\u{0271}", -- É±
    ["N"] = "\u{0273}", -- É³
    ["O"] = "\u{03C3}", -- Ï
    ["P"] = "\u{03C1}", -- Ï
    ["Q"] = "\u{03D5}", -- Ï
    ["R"] = "\u{0968}", -- à«¨
    ["S"] = "\u{0E28}", -- à¸£
    ["T"] = "\u{01AD}", -- Æ­
    ["U"] = "\u{FFFD}", -- ï¿½
    ["V"] = "\u{0475}", -- Ñµ
    ["W"] = "\u{03C9}", -- Ï
    ["X"] = "\u{05D0}", -- ×
    ["Y"] = "\u{10E7}", -- á§
    ["Z"] = "\u{01B6}", -- Æ¶
    ["a"] = "\u{03B1}", -- Î±
    ["b"] = "\u{0253}", -- É
    ["c"] = "\u{0A83}", -- à«®
    ["d"] = "\u{2202}", -- â
    ["e"] = "\u{03B5}", -- Îµ
    ["f"] = "\u{0192}", -- Æ
    ["g"] = "\u{0260}", -- É 
    ["h"] = "\u{0266}", -- É¦
    ["i"] = "\u{0E40}", -- à¹
    ["j"] = "\u{029D}", -- Ê
    ["k"] = "\u{04A1}", -- Ò¡
    ["l"] = "\u{2113}", -- â
    ["m"] = "\u{0271}", -- É±
    ["n"] = "\u{0273}", -- É³
    ["o"] = "\u{03C3}", -- Ï
    ["p"] = "\u{03C1}", -- Ï
    ["q"] = "\u{03D5}", -- Ï
    ["r"] = "\u{0968}", -- à«¨
    ["s"] = "\u{0E28}", -- à¸£
    ["t"] = "\u{01AD}", -- Æ­
    ["u"] = "\u{FFFD}", -- ï¿½
    ["v"] = "\u{0475}", -- Ñµ
    ["w"] = "\u{03C9}", -- Ï
    ["x"] = "\u{05D0}", -- ×
    ["y"] = "\u{10E7}", -- á§
    ["z"] = "\u{01B6}", -- Æ¶
}
fonts["arabic"] = {
    ["A"] = "\u{0E04}", -- à¸
    ["B"] = "\u{0E42}", -- à¹
    ["C"] = "\u{03C2}", -- Ï
    ["D"] = "\u{0E14}", -- à¹
    ["E"] = "\u{0454}", -- Ñ
    ["F"] = "\u{0166}", -- Å¦
    ["G"] = "\u{FEE6}", -- ï»®
    ["H"] = "\u{0452}", -- Ñ
    ["I"] = "\u{0E40}", -- à¹
    ["J"] = "\u{05D9}", -- ×
    ["K"] = "\u{043A}", -- Ðº
    ["L"] = "\u{006C}", -- l
    ["M"] = "\u{0E43}", -- à¹
    ["N"] = "\u{0E20}", -- à¸ 
    ["O"] = "\u{0E2D}", -- à¹
    ["P"] = "\u{05E4}", -- ×§
    ["Q"] = "\u{1EC3}", -- á»£
    ["R"] = "\u{0433}", -- Ð³
    ["S"] = "\u{0E28}", -- à¸£
    ["T"] = "\u{0074}", -- t
    ["U"] = "\u{0E22}", -- à¸¢
    ["V"] = "\u{05E9}", -- ×©
    ["W"] = "\u{0E2C}", -- à¸¬
    ["X"] = "\u{05E5}", -- ×¥
    ["Y"] = "\u{05D0}", -- ×
    ["Z"] = "\u{007A}", -- z
    ["a"] = "\u{0E04}", -- à¸
    ["b"] = "\u{0E42}", -- à¹
    ["c"] = "\u{03C2}", -- Ï
    ["d"] = "\u{0E14}", -- à¹
    ["e"] = "\u{0454}", -- Ñ
    ["f"] = "\u{0166}", -- Å¦
    ["g"] = "\u{FEE6}", -- ï»®
    ["h"] = "\u{0452}", -- Ñ
    ["i"] = "\u{0E40}", -- à¹
    ["j"] = "\u{05D9}", -- ×
    ["k"] = "\u{043A}", -- Ðº
    ["l"] = "\u{006C}", -- l
    ["m"] = "\u{0E43}", -- à¹
    ["n"] = "\u{0E20}", -- à¸ 
    ["o"] = "\u{0E2D}", -- à¹
    ["p"] = "\u{05E4}", -- ×§
    ["q"] = "\u{1EC3}", -- á»£
    ["r"] = "\u{0433}", -- Ð³
    ["s"] = "\u{0E28}", -- à¸£
    ["t"] = "\u{0074}", -- t
    ["u"] = "\u{0E22}", -- à¸¢
    ["v"] = "\u{05E9}", -- ×©
    ["w"] = "\u{0E2C}", -- à¸¬
    ["x"] = "\u{05E5}", -- ×¥
    ["y"] = "\u{05D0}", -- ×
    ["z"] = "\u{007A}", -- z
}
fonts["longer"] = {
    ["a"] = "\u{03B1}", -- Î±
    ["b"] = "\u{10E6}", -- á¦
    ["c"] = "\u{01C1}", -- Æ
    ["d"] = "\u{0503}", -- Ô
    ["e"] = "\u{0454}", -- Ò½
    ["f"] = "\u{03DD}", -- Ï
    ["g"] = "\u{0260}", -- É 
    ["h"] = "\u{050B}", -- Ô
    ["i"] = "\u{03B9}", -- Î¹
    ["j"] = "\u{029D}", -- Ê
    ["k"] = "\u{0199}", -- Æ
    ["l"] = "\u{0285}", -- Ê
    ["m"] = "\u{0271}", -- É±
    ["n"] = "\u{0273}", -- É³
    ["o"] = "\u{03C3}", -- Ï
    ["p"] = "\u{03C1}", -- Ï
    ["q"] = "\u{03E9}", -- Ï
    ["r"] = "\u{027E}", -- É¾
    ["s"] = "\u{0282}", -- Ê
    ["t"] = "\u{019A}", -- Æ
    ["u"] = "\u{03C5}", -- Ï
    ["v"] = "\u{028B}", -- Ê
    ["w"] = "\u{026F}", -- É¯
    ["x"] = "\u{0078}", -- x
    ["y"] = "\u{10F4}", -- á§
    ["z"] = "\u{0225}", -- È¥
    ["A"] = "\u{0041}", -- A
    ["B"] = "\u{0042}", -- B
    ["C"] = "\u{0043}", -- C
    ["D"] = "\u{0044}", -- D
    ["E"] = "\u{0045}", -- E
    ["F"] = "\u{0046}", -- F
    ["G"] = "\u{0047}", -- G
    ["H"] = "\u{0048}", -- H
    ["I"] = "\u{0049}", -- I
    ["J"] = "\u{004A}", -- J
    ["K"] = "\u{004B}", -- K
    ["L"] = "\u{004C}", -- L
    ["M"] = "\u{004D}", -- M
    ["N"] = "\u{004E}", -- N
    ["O"] = "\u{004F}", -- O
    ["P"] = "\u{0050}", -- P
    ["Q"] = "\u{0051}", -- Q
    ["R"] = "\u{0052}", -- R
    ["S"] = "\u{0053}", -- S
    ["T"] = "\u{0054}", -- T
    ["U"] = "\u{0055}", -- U
    ["V"] = "\u{0056}", -- V
    ["W"] = "\u{0057}", -- W
    ["X"] = "\u{0058}", -- X
    ["Y"] = "\u{0059}", -- Y
    ["Z"] = "\u{005A}"  -- Z
}
fonts["delta"] = {
    ["A"] = "\u{0394}", -- Î (Greek Capital Letter Delta)
    ["B"] = "\u{03B2}", -- Î² (Greek Small Letter Beta)
    ["C"] = "\u{010C}", -- Ä (Latin Capital Letter C with Caron)
    ["D"] = "\u{0110}", -- Ä (Latin Capital Letter D with Stroke)
    ["E"] = "\u{20AC}", -- â¬ (Euro Sign)
    ["F"] = "\u{20A3}", -- â£ (Franc Sign)
    ["G"] = "\u{01F4}", -- Ç¤ (Latin Capital Letter G with Stroke)
    ["H"] = "\u{0126}", -- Ä¦ (Latin Capital Letter H with Stroke)
    ["I"] = "\u{0197}", -- Æ (Latin Letter I with Stroke)
    ["J"] = "\u{0134}", -- Ä´ (Latin Capital Letter J with Circumflex)
    ["K"] = "\u{0400}", -- Ò (Cyrillic Capital Letter Komi De)
    ["L"] = "\u{0141}", -- Å (Latin Capital Letter L with Stroke)
    ["M"] = "\u{039C}", -- Î (Greek Capital Letter Mu)
    ["N"] = "\u{0147}", -- Å (Latin Capital Letter N with Caron)
    ["O"] = "\u{00D8}", -- Ã (Latin Capital Letter O with Stroke)
    ["P"] = "\u{01A4}", -- Æ¤ (Latin Letter P with Hook)
    ["Q"] = "\u{03A9}", -- Î© (Greek Capital Letter Omega)
    ["R"] = "\u{0158}", -- Å (Latin Capital Letter R with Caron)
    ["S"] = "\u{015E}", -- Å (Latin Capital Letter S with Cedilla)
    ["T"] = "\u{0166}", -- Å¦ (Latin Capital Letter T with Stroke)
    ["U"] = "\u{1EE4}", -- á»¤ (Latin Capital Letter U with Dot Below)
    ["V"] = "\u{0056}", -- V (Latin Capital Letter V)
    ["W"] = "\u{0174}", -- Å´ (Latin Capital Letter W with Circumflex)
    ["X"] = "\u{0416}", -- Ð (Cyrillic Capital Letter Zhe)
    ["Y"] = "\u{00A5}", -- Â¥ (Yen Sign)
    ["Z"] = "\u{017D}", -- Å½ (Latin Capital Letter Z with Caron)
    ["a"] = "\u{03B4}", -- Î´ (Greek Small Letter Delta)
    ["b"] = "\u{03B2}", -- Î² (Greek Small Letter Beta)
    ["c"] = "\u{010D}", -- Ä (Latin Small Letter C with Caron)
    ["d"] = "\u{0111}", -- Ä (Latin Small Letter D with Stroke)
    ["e"] = "\u{20AC}", -- â¬ (Euro Sign)
    ["f"] = "\u{20A3}", -- â£ (Franc Sign)
    ["g"] = "\u{01F5}", -- Ç¥ (Latin Small Letter G with Stroke)
    ["h"] = "\u{0127}", -- Ä§ (Latin Small Letter H with Stroke)
    ["i"] = "\u{0268}", -- É¨ (Latin Small Letter I with Stroke)
    ["j"] = "\u{0135}", -- Äµ (Latin Small Letter J with Circumflex)
    ["k"] = "\u{043A}", -- Ðº (Cyrillic Small Letter Ka)
    ["l"] = "\u{013A}", -- Å (Latin Small Letter L with Stroke)
    ["m"] = "\u{043C}", -- Ð¼ (Cyrillic Small Letter Em)
    ["n"] = "\u{0148}", -- Å (Latin Small Letter N with Caron)
    ["o"] = "\u{00F8}", -- Ã¸ (Latin Small Letter O with Stroke)
    ["p"] = "\u{03C1}", -- Ï (Greek Small Letter Rho)
    ["q"] = "\u{0071}", -- q (Latin Small Letter Q)
    ["r"] = "\u{0280}", -- É¾ (Latin Small Letter R with Fishhook)
    ["s"] = "\u{0282}", -- Ê (Latin Small Letter S with Hook)
    ["t"] = "\u{0167}", -- Å§ (Latin Small Letter T with Stroke)
    ["u"] = "\u{0169}", -- á»¥ (Latin Small Letter U with Dot Below)
    ["v"] = "\u{0076}", -- v (Latin Small Letter V)
    ["w"] = "\u{0448}", -- Ñ (Cyrillic Small Letter Sha)
    ["x"] = "\u{0445}", -- Ñ (Cyrillic Small Letter Ha)
    ["y"] = "\u{00A5}", -- Â¥ (Yen Sign)
    ["z"] = "\u{01B6}"  -- Ç¶ (Latin Small Letter Z with Stroke)
}
fonts["Misc 1"] = {
    ["a"] = "\u{03BB}", -- Î» (Greek Small Letter Lambda)
    ["b"] = "\u{00DF}", -- Ã (Latin Small Letter Sharp S)
    ["c"] = "\u{023B}", -- Æ» (Latin Letter C with Stroke)
    ["d"] = "\u{0257}", -- É (Latin Small Letter D with Tail)
    ["e"] = "\u{03B5}", -- Îµ (Greek Small Letter Epsilon)
    ["f"] = "\u{0283}", -- Ê (Latin Small Letter Esh)
    ["g"] = "\u{0122}", -- Ä¢ (Latin Capital Letter G with Cedilla)
    ["h"] = "\u{0127}", -- Ä§ (Latin Small Letter H with Stroke)
    ["i"] = "\u{03B9}", -- Î¯ (Greek Small Letter Iota with Tonos)
    ["j"] = "\u{0135}", -- Äµ (Latin Small Letter J with Circumflex)
    ["k"] = "\u{03BA}", -- Îº (Greek Small Letter Kappa)
    ["l"] = "\u{03B9}", -- Î¹ (Greek Small Letter Iota)
    ["m"] = "\u{0271}", -- É± (Latin Small Letter M with Hook)
    ["n"] = "\u{0274}", -- É´ (Latin Letter N with Long Right Leg)
    ["o"] = "\u{0398}", -- Î (Greek Capital Letter Theta)
    ["p"] = "\u{03C1}", -- Ï (Greek Small Letter Rho)
    ["q"] = "\u{01A3}", -- Æ£ (Latin Letter D with Tail)
    ["r"] = "\u{0218}", -- È (Latin Capital Letter S with Comma Below)
    ["s"] = "\u{03C4}", -- Ï (Greek Small Letter Tau)
    ["t"] = "\u{01B2}", -- Æ² (Latin Letter V with Hook)
    ["u"] = "\u{03BD}", -- Î½ (Greek Small Letter Nu)
    ["v"] = "\u{03CE}", -- Ï (Greek Small Letter Omega with Tonos)
    ["w"] = "\u{03A7}", -- Î§ (Greek Capital Letter Chi)
    ["x"] = "\u{03DA}", -- Ï (Greek Letter Archaic Koppa)
    ["y"] = "y",
    ["z"] = "\u{03BB}", -- Î» (Greek Small Letter Lambda)
    ["A"] = "\u{03BB}", -- Î» (Greek Small Letter Lambda)
    ["B"] = "\u{00DF}", -- Ã (Latin Small Letter Sharp S)
    ["C"] = "\u{023B}", -- Æ» (Latin Letter C with Stroke)
    ["D"] = "\u{0257}", -- É (Latin Small Letter D with Tail)
    ["E"] = "\u{03B5}", -- Îµ (Greek Small Letter Epsilon)
    ["F"] = "\u{0283}", -- Ê (Latin Small Letter Esh)
    ["G"] = "\u{0122}", -- Ä¢ (Latin Capital Letter G with Cedilla)
    ["H"] = "\u{0127}", -- Ä§ (Latin Small Letter H with Stroke)
    ["I"] = "\u{03B9}", -- Î¯ (Greek Small Letter Iota with Tonos)
    ["J"] = "\u{0135}", -- Äµ (Latin Small Letter J with Circumflex)
    ["K"] = "\u{03BA}", -- Îº (Greek Small Letter Kappa)
    ["L"] = "\u{03B9}", -- Î¹ (Greek Small Letter Iota)
    ["M"] = "\u{0271}", -- É± (Latin Small Letter M with Hook)
    ["N"] = "\u{0274}", -- É´ (Latin Letter N with Long Right Leg)
    ["O"] = "\u{0398}", -- Î (Greek Capital Letter Theta)
    ["P"] = "\u{03C1}", -- Ï (Greek Small Letter Rho)
    ["Q"] = "\u{01A3}", -- Æ£ (Latin Letter D with Tail)
    ["R"] = "\u{0218}", -- È (Latin Capital Letter S with Comma Below)
    ["S"] = "\u{03C4}", -- Ï (Greek Small Letter Tau)
    ["T"] = "\u{01B2}", -- Æ² (Latin Letter V with Hook)
    ["U"] = "\u{03BD}", -- Î½ (Greek Small Letter Nu)
    ["V"] = "\u{03CE}", -- Ï (Greek Small Letter Omega with Tonos)
    ["W"] = "\u{03A7}", -- Î§ (Greek Capital Letter Chi)
    ["X"] = "\u{03DA}", -- Ï (Greek Letter Archaic Koppa)
    ["Y"] = "Y",
    ["Z"] = "\u{03BB}"  -- Î» (Greek Small Letter Lambda)
}
getgenv().deletewhendupefound = true
local lib = loadstring(game:HttpGet("https://pastebin.com/raw/A2Wf3WVh"))()
lib.makelib("Chat Bypasser (2AreYouMental110")
local main = lib.maketab("Main")
local fsbutton
local tbtext = ""
local textbox = lib.maketextbox("Type In here (also select and copy)",main,function()end)
textbox.ClearTextOnFocus = false
local ontextboxchanged
local selectedfont = "full_circle_characters"
lib.makebutton("Convert",main,function()
    local normalchars = true
    for i=1,string.len(textbox.Text) do
        local letter = string.sub(textbox.Text,i,i)
        if not normalxsx[letter] then
            normalchars = false
        end
    end
    if normalchars then
        tbtext = textbox.Text
    end
    local fstext = ""
    for i=1,string.len(tbtext) do
        local sub = string.sub(tbtext,i,i)
        local char = fonts[selectedfont][string.sub(tbtext,i,i)]
        if char then
            fstext = fstext..char
        else
            fstext = fstext..string.sub(tbtext,i,i)
        end
    end
    textbox.Text = fstext
end)
local fontbuttonclick = {}
local fontfunctions = {}
for i,v in pairs(fonts) do
    local fbutton
    fbutton = lib.makebutton(i,main,function()
        selectedfont = i
    end)
    table.insert(fontfunctions,function(font)
        if font ~= i then
            fbutton.BackgroundColor3 = Color3.fromRGB(40,40,40)
        end
    end)
    table.insert(fontbuttonclick,fbutton.MouseButton1Click:Connect(function()
        for i2,v2 in pairs(fontfunctions) do
            v2(i)
        end
        fbutton.BackgroundColor3 = Color3.fromRGB(0,125,0)
    end))
    if i == selectedfont then
        fbutton.BackgroundColor3 = Color3.fromRGB(0,125,0)
    end
    local txt = ""
    for i2=1,string.len(i) do
        local letter = string.sub(i,i2,i2)
        if letter then
            txt = txt..(v[letter] or letter)
        else
            txt = txt..letter
        end
    end
    fbutton.Text = txt
end
lib.ondestroyedfunc = function()
    for i,v in pairs(fontbuttonclick) do
        if v then
            v:Disconnect()
        end
    end
end