
dofile('letters.lua')
dofile('typo.lua')

line = 0

local test = Typo:new()

-- test:word("a b c d e f g h i j k l m n o p q r s t u v w x y z")
-- test:word("jean baptiste")
test:word("paf")

test.object:build_object()

require "math"

function f(i,x,y,z)
	 return x, y - .01, z 
	 -- return x + math.cos(time() * math.random()) * .001, y + .01 ,z - .01
	 -- return x + math.random(-1,1) , y + math.random(-1,1), z
end

function anim()
	set_mesh(test.object.id,f) 
end



every_frame(anim)

