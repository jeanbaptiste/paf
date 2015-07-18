local S = require "stucco"
local obj = S.new("obj")
local a = obj:add_vertex(0,0,0)
local b = obj:add_vertex(1,0,0)
local edge = obj:add_edge(a,b)

e1 = obj:extrude_vertex( edge.b, 0,0,1)
e2 = obj:extrude_vertex( edge.a, 0,0,1)

obj:add_edge(e1.b,e2.b)

obj:build_object()

