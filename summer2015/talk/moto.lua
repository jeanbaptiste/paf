
--
local S = require "stucco"
local obj = S.new("a")


local Letters = 
	{
		a = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
				{nil,nil,nil},
				{0,0.5,0},
				{1,0.5,0},
			},
		b = {
				{0,0,0},
				{0,1,0},
				{.8,1,0},
				{.8,.5,0},
				{nil,nil,nil},
				{0,0.5,0},
				{1,0.5,0},
				{1,0,0},
				{0,0,0},
			},
		c = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{nil,nil, nil},
				{0,0,0},
				{1,0,0},
			},
		d = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		e = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		f = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		g = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		h = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		i = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		j = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		k = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		l = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		m = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		n = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		o = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		p = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		q = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		r = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		s = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		t = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		u = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		v = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		w = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		x = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		y = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		z = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		one = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		two = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		three = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		four = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		five = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		six = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		seven = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		eight = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		nine = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		pi = {
				{0,0,0},
				{0,1,0},
				{1,1,0},
				{1,0,0},
			},
		manifold = {
				{1,0,0},
				{1,1,1},
			},
		nil
	}


local Typo = {}
Typo.object = nil

function Typo:init()
	print("init")	
	self.object = S.new("a")
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
			print("element",k,v)
			
			for key,val in pairs(v) do print("point",key,val) end

			if v[1] == nil then
				print("NIIL")
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
		print("not found")
	end
	
	print(letter)
end

function Typo:new()
	self.__index = self
	return setmetatable({object=nil},Typo)	
end

local test = Typo:new()
test:print("a",0,0,1/time())
test:print("b",1.5,0,1/time())
test:print("c",3,0,1/time())

-- local a = obj.add_vertex(obj,0,0,0)
-- local b = obj:add_vertex(1,0,0)
-- local edge = obj:add_edge(a,b)

test.object:build_object()

---------------------------------------------------------------------------











---------------------------------------------------------------------------


--[[ 

MOTO ::: Morphogenesis of the Outside )))))))))))) )   )              )..

outside of:
1. void -> tohu-bohu
2. universe -> metaphysics
3. a sheet of paper -> diffeomorphisms
4. cybernetics -> self-referential cybernetics
5. masculine rational advantage -> xenology
6. verbal language -> iconic & enactive expression
7. cryptopolitical power -> supranatural propitiatory talent
 
- - - - - - - -
crypto capitalism : talking points (elts de language), autocompletion 
décortiquer le langage
 
own a territory § being owned, sub-ordinated
allies, negotiates
 
espace limité 
stratégies transitoires
masculin force féminin alliance, féminin autre, alliance avec l’autre, levinas 

la fabrique du sacré
eufonic cavs 

- - - - -
SOUNDS
- - - - -

sounds of universe nasa kelly snook
topology unicursal drawing vanuatu
shaman sound repetitive

- - - - - -
VIDEOS
- - - - - - 
 
morphogenesis
alan turing, rené thom, mandelbrot, nottale 
structural, dynamic, 
milieu
von huexkull, milieu, Umwelt, Umgebung 
epigenetics, dissolution dissimulation 
contreforme
outside of language

outside of symbols pre symbolic
iconic, enactive, bruner

CAMOUFLAGE
 
FOMECBLOT A : « Fond, Forme, Fumée, Ombre, Mouvement, Masque, Éclat, Couleur, Bruit, Lumière, Laser, Odeur, Traces, Texture, Thermie, Animaux »
michel pastoureau OURS / LION / RENARD
vera chytilova
Unmoralische Geschichten
http://www.bildstoerung.tv/blog/filme/la-bete-die-bestie/
editions dehors la pommeraie lien URL

lokiS
mérimée
http://fmls.oxfordjournals.org/content/XXXVI/2/196.full.pdf+html
https://en.wikipedia.org/wiki/Lokis_(novella)
http://www.anthropoetics.ucla.edu/ap1402/1402sprenger.htm
http://www.pitbook.com/textes/pdf/lokis.pdf
http://uakino.net/video/31289-film-zver-1975-smotret-onlajn.html
http://www.devildead.com/indexfilm.php3?FilmID=1060
 
loki/shaman 
https://fr.wikipedia.org/wiki/Loki 

playing
livre hamayon

§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§
written document
§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§

1. void -> tohu-bohu
 		euphonia euphony euphonics 
2. universe -> metaphysics
3. a sheet of paper -> diffeomorphisms
4. cybernetics -> self-referential cybernetics
5. masculine rational advantage -> xenology
6. verbal language -> iconic & enactive expression
7. cryptopolitical power -> supranatural propitiatory talent

]]--


