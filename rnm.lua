local nM = {}
function nM.random(...)
	local a={...}
	for b,c in pairs(a)do if type(c)~='number'then error('Argument '..b..' invalid data type')end end
	math.randomseed(tick()*math.random())
	if(#a==0)then
		return math.random()
	elseif(#a==1)then
		return a[1]>0 and math.random(0,a[1])or math.random(a[1],0)
	elseif(#a==2)then
		return math.random(a[1], a[2])
	elseif(#a%2==0)then
		local d=math.random(1,#a*0.5)
		math.randomseed(tick()*math.random())
		return math.random(a[d*2-1],a[d*2])
	end
end
function nM.round(a,b)
	if not a then error('Argument 1 missing or nil')end
	if type(a)~='number'or(b and type(b)~='number')then error('Argument 1 or 2 invalid data type')end
	return b and math.floor(a*b+0.5)/b or math.floor(a+0.5)
end
function nM.comma(a,b)
	if not a then error('Argument 1 missing or nil')end
	if not b then
		if type(a)~='number'then error('Argument 1 invalid data type')end
		a=tostring(a)
		return #a%3==0 and a:reverse():gsub("(%d%d%d)","%1,"):reverse():sub(2)or a:reverse():gsub("(%d%d%d)","%1,"):reverse()
	else
		if type(a)~='string'then error('Arugment 1 invalid data type')end
		return a:gsub(',',''):gsub(', ',''):gsub(' ,',''):gsub(' , ','')
	end
end
function nM.shorten(a,f,g)
	if not a then error('Argument 1 missing or nil')end
	if type(a)~='number'then error('Argument 1 invalid data type')end
	if f and (type(f)~='number'or f<0)then error('Argument 2 invalid data type')end
	if g and type(g)~='boolean'then error('Argument 3 invalid data type') elseif g and type(g)=='boolean'then a*=-1 end
	if a<1e3 then return a end
	local c={{1e3,'k'},{1e6,'m'},{1e8,'b'},{1e12,'t'},{1e15,'q'},{1e18,'Q'},{1e21,'s'},{1e24,'S'},{1e27,'o'},{1e30,'n'},{1e33,'d'},{1e36,'U'},{1e39,'D'}}
	for d,b in ipairs(c) do
		if b[1]>a then
			local e=tostring(a/c[d-1][1]):split('.')
			return f and(g and'-'or'')..e[1]..'.'..e[2]:sub(1,nM.round(f))..c[d-1][2]or(g and'-'or'')..e[1]..c[d-1][2]
		end
	end
end
function nM.toInt(...)
	local a={...}
	if #a==0 then error('Arguments missing or nil')end
	local b={}
	for _,d in pairs(a)do
		if type(d)=='string'then
			for c,d in d:gmatch("(%d+)((%.*)%d+)")do
				b[#b+1]=c
			end
		elseif type(d)=='number' then
			b[#b+1]=math.floor(d)
		else
			error('Argument '.._..' invalid data type')
		end
	end
	return #b==1 and b[1] or b
end
function nM.toNum(...)
	local a={...}
	if #a==0 then error('Arguments missing or nil')end
	local b={}
	for _,d in pairs(a)do
		if type(d)=='string'then
			for c,d in d:gmatch("(%d+)((%.*)%d+)")do
				b[#b+1]=c+d
			end
		elseif type(d)=='number' then
			b[#b+1]=d
		else
			error('Argument '.._..' invalid data type')
		end
	end
	return #b==1 and b[1] or b
end
return nM
