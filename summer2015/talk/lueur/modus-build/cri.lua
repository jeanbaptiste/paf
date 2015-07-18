--
-- CRI NightScience

-- importance d'avoir de bons micros libres
-- end of line / newline raccourci dans minuit-editor (vi)
-- hackerspaces in india ?
-- alternative to leaders & leadership
-- combat vs alliance (terme precis Hamayon)
-- documentation, blueprints, patterns, iteration
-- small, graceful
-- disturbed areas > happiness
-- happyness, organically leadr, urban spoke model
-- confidence without power: talent. 
-- openlab: 15 projets documentes en 2 ans
-- ideasbox: pas de plan car visee politique du projet
-- policy & rules 
-- open spaces in cities to share knowledge
-- do it for others - crowdmaking


local S = require "stucco"
obj = S.new("a")

function make_form(i,j)
	
	px = 0
	py = 0
	z = 1
	l = 1
	s = 1
	for y = -10,j*s,s
	do
		for x = -10, i*s,s
		do 
			a = obj:add_vertex(x,y,z)
			b = obj:add_vertex(x,y + s,z)
			-- c = obj:add_vertex(y,-x,-z)
			-- e = obj:add_edge(a,b)
			j = obj:add_edge(a,b)

		end
	end		
end

function v(i,x,y,z)
	j = math.sin( time() * (i+1) *.1) *.2
	rx = x + j
	ry = y + j
	rz = (z+8) * j
	return x,y,rz
end

function anim()
	id = obj.id
	set_mesh(id,v)
end

make_form(10,10)
obj:build_object()

every_frame(anim)







































