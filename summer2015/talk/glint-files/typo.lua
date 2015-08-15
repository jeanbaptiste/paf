Typo = {}

-- object is a stone object to store stuff

Typo.object = nil

function Typo:init()
	print("typo initialised ------")	
	self.object = stone.new("a")
end

function Typo:build_letter(letter)
	
end

function Typo:print(letter,px,py,pz)

	if self.object == nil then
		self:init()
	end

	local list = Letters[letter]

	local prev = nil

	if list ~= nil then

		for k,v in pairs(list) do
			-- print("element",k,v)
			
			-- for key,val in pairs(v) do print("point",key,val) end

			if v[1] == nil then
			--	print("NIIL")
				prev = nil
				next = nil
			else

				next = self.object:add_vertex(v[1]+px,v[2]+py,v[3]+pz)
			end

			if prev ~= nil and next ~= nil then
				self.object:add_edge(prev,next)
			end

			prev = next
		end

	
	else
		-- print("not found")
	end
	
	-- print(letter)
end
--
function Typo:new()
	self.__index = self
	return setmetatable({object=nil},Typo)	
end

function Typo:word(word)
	local px, py, pz = 0, line, 0
	line = line - 1.8
	for i = 1 , #word do
		Typo:print(word:sub(i,i),px,py,pz)
		px = px + 1.2
		py = py
	end
end

