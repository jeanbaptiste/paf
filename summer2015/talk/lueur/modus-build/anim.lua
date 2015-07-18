local S = require "stucco"
obj = S.new("a")

function make_form(i,j)

	px = 0
	py = 0
	z = 1
	l = 1
	s = 1
	for y = 1,j*s,s
	do
		for x = 1,i*s,s
		do
			a = obj:add_vertex(x,y,z)
			b = obj:add_vertex(x,y + s ,z)
			e = obj:add_edge(a,b)

		end

	end
end

function v(i,x,y,z)
	j = math.cos( time() * (i+1) *.1) * .2
	rx = x + j
	ry = y + j
	rz = (z+1) * j
	return x, y, rz
end

function anim()
	id = obj.id
	set_mesh(id,v)
end

make_form(20,20)
obj:build_object()

every_frame(anim)
