local P = require "Primitive"
local M = require "mat4"

cube = P.Cube:new(1,1,1)
--cube:add_modifier_array(10,10,10,5)
cube:build_object()
