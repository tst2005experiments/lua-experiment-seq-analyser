local analyser = require "seq-analyser"
local analyse = analyser.analyse

local data = "abcddcbaabcdadcbacbb"
data="abcda"

--data = io.stdin:read("*a")
print("-- Analyse:", data)

local seqs = analyse(data, 1, 3)

print("Result =")

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

