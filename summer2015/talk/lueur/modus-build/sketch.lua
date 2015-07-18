-- sketch 
-- Stucco module

print("~Stucco Sketch")
local stucco = require "stucco"
require "math"

local Primtive = require "Primitive"

local vertex_count = 0
obj = stucco.new("obj")

local face_count = 0

local function add_face( list)

	local l = #list

	if l%3 ~= 0 then
		print("Notnot!")
		print("lenght " .. l)
		return 
	end

	local i = 1
	local count = 0
	repeat
		obj:add_vertex(list[i], list[i+1], list[i+2])
		i = i + 3
		count = count + 1
	until
		i > l

	local f = face_count
	obj:add_face(f,f+1,f+2,f+3)
	face_count = face_count + 4

	end

local function add_stack( count, height)

	local i = 0
	local z = 0
	local w = 10
	local h = 10
	while i < count do
		add_face({0,0,z,math.cos(i*.1) + w,0,z,w,h,z,0,h,z})
		i = i + 1
		z = z + height
		w = w - .01
		h = h - .01
	end
end

local function build_pyramid()

	add_stack(300,.01)
	obj:build_object()

end

local function build_vertex_extrusion()

	p1 = obj:add_vertex(0,0,0)
	p2 = obj:add_vertex(1,0,0)
	p3 = obj:add_vertex(1,1,0)
	p4 = obj:add_vertex(0,1,0)

	obj:add_face(p1,p2,p3,p4)

	vx = 0
	vy = 0
	vz = -1

	p5 = obj:extrude_vertex(p1, vx, vy, vz)
	p6 = obj:extrude_vertex(p2, vx, vy, vz)
	p7 = obj:extrude_vertex(p3, vx, vy, vz)
	p8 = obj:extrude_vertex(p4, vx, vy, vz)
	obj:add_face(p5,p6,p7,p8)

	obj:build_object()

end

function build_edge_extrusion()

	p1 = obj:add_vertex(0,0,0)
	p2 = obj:extrude_vertex( p1, 1, 0, 0)
	obj:extrude_edge(0, 0,0,1)
	obj:build_object()

end

function build_circle()

	obj:build_circle( 100, 3.2)
	obj:translate( 0, 0, 1)
	obj:build_object()
end

function build_two_circles()

	res = 100
	radius = 1
	offset = .1
	c1 = stucco.new("c1")
	c2 = stucco.new("c2")

	c1:build_circle( res, radius)
	c2:build_circle( res, radius + offset)
	c2:translate(0,0,1)

	c1:build_object()
	c2:build_object()
end

function build_face()

	ob = stucco.new("ob")
	a = ob:add_vertex(0,0,0)
	b = ob:add_vertex(1,0,0)
	c = ob:add_vertex(1,1,0)
	d = ob:add_vertex(0,1,0)

	ob:add_face(a,b,c,d)

	ob:translate(10,1,1)
	ob:build_object()
end

function build_stack()

	ob = stucco.new("ob")
	i = 0
	count = 30
	z = 0
	while i < count
		do

		a = ob:add_vertex(0,0,z)
		b = ob:add_vertex(1,0,z)
		c = ob:add_vertex(1,1,z)
		d = ob:add_vertex(0,1,z)

		ob:add_face(a,b,c,d)

		i = i + 1
		z = z + .1

		end


	ob:build_object()
end


function build_edge()

	ob = stucco.new("ob")
	a = ob:add_vertex(0,0,0)
	e = ob:extrude_vertex(a,2,0,0)
	f = ob:extrude_edge(e,0,0,1)
	ob:build_object()
end


function build_strange()

	p1 = obj:add_vertex(0,0,0)

	i = 0
	count = 20000
	v = p1
	r = .001
	d = .1
	while i < count do
		local e = obj:extrude_vertex( v, math.cos(i*d)*r, math.sin(i*d)*r, 0)
		v = e:get_b(e)
		obj:extrude_edge(e,0,0,math.cos(i*d*10)*r)
		--obj:extrude_edge(e,0,0,.1)
		i = i + 1
		r = r + .001
	end
	obj:build_object()
end

function build_face_extrusion()
	
	a = obj:add_vertex(0,0,0)
	b = obj:add_vertex(1,0,0)
	c = obj:add_vertex(1,1,0)
	d = obj:add_vertex(0,1,0)

	f = obj:add_face(a,b,c,d)
	x = 0
	y = 0
	z = 2
	ff = obj:extrude_face(f,x,y,z)

	obj:build_object()
end

function build_loop()

	a = obj:add_vertex(0,0,0)
	b = obj:add_vertex(1,0,0)
	c = obj:add_vertex(1,1,1)
	d = obj:add_vertex(0,1,1)

	f = obj:add_face(a,b,c,d)

	for i= 1,100,0.1 do

		x = math.cos(i) + i * .001
		y = math.sin(i) + i * .001
		z = i * .01
		f = obj:extrude_face(f,x,y,z)
	end

	obj:build_object()
end

--build_circle()
-- build_face()
--build_edge()
-- build_stack()
--build_strange()
build_loop()
--build_face()



print("~Done")

	

		
