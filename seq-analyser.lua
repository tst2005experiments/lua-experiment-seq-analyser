local minlen = 1
local markmaxlen = 5

local seqs = {0}

-- analyse a part
local function analyse_this(substr)
	assert(#substr >= minlen)
	local pointer = seqs
	local maxdepth = math.min(markmaxlen,#substr)
	local k1, subchain

	local function ifset(t,k)
		local v = t[k]
		if not v then
			v = {0}
			t[k] = v
			t[1]=t[1]+1 -- increase the alphabet count for the parent level
		end
		return v
	end

	for depth=1,maxdepth-minlen+1 do
		k1 = substr:sub(depth,depth)
		subchain = ifset(pointer, k1)
		pointer = subchain
	end
	k1 = substr:sub(maxdepth-minlen+1, maxdepth)
	subchain = ifset(pointer, k1)
end

-- split the data to lot of parts to analyse
local function analyse(data)
	local counta = 0
	for x=1,#data-minlen+1 do
		for i=1,markmaxlen-minlen+1 do
			local sub = data:sub(x,x+i)
			if i > #sub-minlen+1 then break end
			counta = counta +1
			print("analyse", sub, counta)
			analyse_this(sub)
		end
	end
end


local data = "abcddcbaabcdadcbacbb"
--data="abcda"

data = io.stdin:read("*a")
print("Analyse:", data)
analyse(data)

print("Result:")

local tprint = require "tprint" -- https://github.com/tst2005/lua-tprint/
print(tprint(seqs,{inline=false}))

local function keysarein(seqs, pattern)
	for k in pairs(seqs) do
		if type(k) =="string" and not string.find(k, pattern) then
			return false
		end
	end
	return true
end


--[[
local level=1
local check = {
	[2] = function(seqs)	return keysarein(seqs, "^[01]$")	end,
	[8] = function(seqs)	return keysarein(seqs, "^[0-7]$")	end,
	[10] = function(seqs)	return keysarein(seqs, "^[0-9]$")	end,
	[16] = function(seqs)	return keysarein(seqs, "^[0-9a-fA-F]$")	end,
}
local data_abet=seqs[1]

if check[data_abet] then
	print(data_abet, check[data_abet](seqs))
end
local function gettheshortest(seqs, abet)
	local pointer = seqs

	if pointer[1] >= abet then
		
	end
end
]]--

local abet = seqs[1] -- the alphabet is all characters analysed (the size of the first level)

