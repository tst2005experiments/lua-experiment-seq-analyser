--local minlen = 2
--local markmaxlen = 5

local seqs = {0}

-- analyse a part
local function analyse_this(substr, minlen)
	assert(#substr >= minlen)
	local pointer = seqs
	--local maxdepth = math.min(markmaxlen,#substr)
	local maxdepth = #substr
	local k1, subchain

	local KEYCOUNT,USED=1,2
	local function ifset(t,k)
		local v = t[k]
		if not v then
			v = {[KEYCOUNT]=0,[USED]=1}
			t[k] = v
			t[KEYCOUNT]=t[KEYCOUNT]+1 -- increase the alphabet count for the parent level
		else
			v[USED]=v[USED]+1 -- increase the used count of this node
		end
		return v
	end

	for depth=1,maxdepth-minlen+1 do
		k1 = substr:sub(depth,depth)
		subchain = ifset(pointer, k1)
		subchain[USED]=subchain[USED]+1
		pointer = subchain
	end
	k1 = substr:sub(maxdepth-minlen+1, maxdepth)
	subchain = ifset(pointer, k1)
end

-- split the data to lot of parts to analyse
local function analyse(data, minlen, markmaxlen)
	--minlen = minlen or 1
	--markmaxlen = markmaxlen or 5
	assert(minlen)
	assert(markmaxlen)
	local counta = 0
	for x=1,#data-minlen+1 do
		for i=minlen-1,markmaxlen-1 do
			local sub = data:sub(x,x+i)
			if i > #sub-minlen+1 then break end
			counta = counta +1
			print("--", counta, "substring", sub)
			analyse_this(sub, minlen)
		end
	end
	return seqs
end

return {analyse=analyse}
