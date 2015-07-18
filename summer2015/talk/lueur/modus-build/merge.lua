local S = require "stucco"
local P = require "Primitive"
local M = require "mat4"

obj1 = S.new("1")
obj2 = S.new("2")

obj1:add_next(obj2)

cube1 = P.Cube:new("cube1?",1,1,1)
cube2 = P.Cube:new("cube2?",1,1,1)

mat = M.new()
mat:set(
	1,0,0,1,
	0,1,0,1,
	0,0,1,1,
	1.1,0,0,0
)
cube2:add_modifier_matrix( mat)

cube1:add_next(cube2.__proto__)
cube1:build_object()


