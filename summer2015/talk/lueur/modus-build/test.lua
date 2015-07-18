local S = require "stucco"
obj = S.new("a")
a = obj:add_vertex(0,0,1)
b = obj:add_vertex(1,0,1)
e = obj:add_edge(a,b)
obj:build_object()

function form(n)

	for i = 1,n
	do

	end

end

function b(i,x,y,z)
	j = math.cos( os.time() * (i+1) *.1) * .2
	rx = x + j
	ry = y + j
	rz = z + j
	return x, y, rz
end

function a()
	id = obj.id
	set_mesh(id,b)
end

every_frame(a)
