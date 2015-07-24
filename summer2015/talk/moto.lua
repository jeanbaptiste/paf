
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
editions dehors la pommeraie lien URL http://www.lapommerie.org/nouvellepommerie/NL-0528-rencontres/programme_rae_2015.pdf ******for an art of consequences****** *eli kongs*
CONNECT *Bertrand Prevost* Philosopher. Cosmique cosmétique. Pour une cosmologie de la parure. Cosmical Cosmetics: For a Cosmology of Adornment http://imagesrevues.revues.org/2181 names names namezzzz *adolphe portmann* Georg Simmel, G. Deleuze et F. Guattari, R. Caillois, Ernst Gombrich, Tertullian, Marcel Mausssssssssss, Marcel Mars, Nenad Romic chhhhhhhhhh ch ch chhhhhhhhhh 
camouflage is between individual and milieu when mimicry is the relation between the different species
sexual dimorphism, sexual homeomorphism, sexual diffeomorphism
appearance, apparence, self presentation, selbstdarstellung, expressive appearance, expressive form, something in the form that is expressive, not the form: appearance is a vital function, visibility, audibility, …. expression, non adressed non adressed presentation. a show before there is the existence of a viewer. There is true appearance in a larger field than the interplay of morphological and sensory organs of higher animals
bergson read by deleuze mixed with spinoza:: plane of light, things are images in themselves, matter and memory, bergson: fiction of the world entirely made of images, images for no one. How can we talk about an image without an eye ? not yet an eye. Plane of immanence is light. The light is not yet reflected and still propagating, never revealed. Notion of non-revealed light. Onto theology, revelation, revelation of the light, lux erat. Nor divine, nor physical for DELEUZE; the light must not precedes the phenomenon. The light is not longer a condition of physical visibility. The light from the appearance. Short Circuit of the Kantian opposition of the opposition of the noumenon and phenomenon. It does not help. absolutely not sensitive access to the object, purely intellectual. the thing in itself, noumenon, an object,………………………………………………………………………………………………………………………………………………………………………………… very absolute objectivity of a thing in itself…………………………………………………………………………………………. remain prisoners of the subject object dimensions

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
euphonia
euphony 
euphonics 
resonance feedback
accretion
fourier transform
Fast Fourier Transform FFT
Hyper Fast Fourier Transform
FTS Faster than sound 
FTL Faster Than Light 
Accelerationism
Expansionism funnel of speculative accelerationism

2. universe -> metaphysics
man
earth
cosmos,
universe, limited size of the universe. 
Meillassoux contingency
meta as transcendence 

3. a sheet of paper -> diffeomorphisms
close unit
two faces
fold, cut
self-similarity, scale-invariance, contains in itself
2D to 3D to nD
morphogenesis, dynamic gestaltung
neurulation, gastrulation
embryology, epigenesis
recursive epigenesis of milieu, umgebung, umwelt
von huexkull
augustin berque mesology
regis debray mediology
recursive milieu
mi-lieu of the milieu
cut / in the sheet of paper
transcendatal immanence 
ininite sides of the sheet of paper
conforming
confolding
conforging the sheet onto its belly
convoluting your*self from my*self
3D to 4D, hypercube, tesseract
inverting itself from itself
neither imploding nor exploding but self-conforming
self, antiself, extended self, streched self, selfism, selfist, selfitude, servitude, selfology, selfanalogue, ipseity, alteripseity, alterego, collectivego, collectiveself, co co co co co collective body wi wi wi without a s s sssss sssssellllffffff 

CONNECT *sonia sanchez* where is your fire? c cccc ccccatch the fire (Sometimes I wonder:

What to say to you now
in the soft afternoon air as you
hold us all in a single death?)
I say—
Where is your fire?
I say—
Where is your fire?

You got to find it and pass it on.
You got to find it and pass it on
from you to me from me to her from her
to him from the son to the father from the
brother to the sister from the daughter to
the mother from the mother to the child.

Where is your fire?  I say where is your fire?
Can’t you smell it coming out of our past?
The fire of living…not dying
The fire of loving…not killing
The fire of Blackness…not gangster shadows.
Where is our beautiful fire that gave light
to the world?
The fire of pyramids;
The fire that burned through the holes of
slaveships and made us breathe;

The fire that made guts into chitterlings;
The fire that took rhythms and made jazz;

The fire of sit-ins and marches that made
us jump boundaries and barriers;
The fire that took street talk sounds
and made righteous imhotep raps.
Where is your fire, the torch of life
full of Nzingha and Nat Turner and Garvey
and DuBois and Fannie Lou Hamer and Martin
and Malcolm and Mandela.
Sister/Sistah  Brother/Brotha  Come/Come

CATCH YOUR FIRE…DON’T KILL
HOLD YOUR FIRE…DON’T KILL
LEARN YOUR FIRE…DON’T KILL
BE THE FIRE…DON’T KILL
Catch the fire and burn with eyes
that see our souls:
WALKING.
SINGING.
BUILDING.
LAUGHING.
LEARNING.
LOVING.
TEACHING.
BEING.
Hey.  Brother/Brotha.  Sister/Sista.
Here is my hand.
Catch the fire…and live.
live.
livelivelive.
livelivelive.
live.
live.

INVOCATE *Gaston Bachelard* psychoanalysis of fire
did INVOCATE *norbert wiener* read, met, befriended bachelard ?????

4. cybernetics -> self-referential cybernetics
	cybernetics, art of steering

5. masculine rational advantage -> xenology
Roberte Hamayon - playing
advantage of masculinity in buriate and tungus early shamanism (period????
oripeaux, attributs, parure, costume, unperfect masks, attirail, paraphernalia, apparatus of the shaman
make-believe and faire-semblant, metaphorization as the basis of connecting with the Other
xenology, logics, discourse, study of the otherness of the other
levinas
cryptophilosophy
religion
religere
words hidden in words
cryptowords
cryptoworlds
cryptocurrency, blockchain, faircoin, hidden third-term (tiers terme) CONNECT *jean lassègue*

6. verbal language -> iconic & enactive expression
formants
phatic
semiotic lips 
INVOCATE *charles sander peirce*
INVOCATE *jerome bruner* 

7. crypto-political power -> supranatural propitiatory talent
crypto-capitalism
neoliberal refactoring of verbal and written language
double layer of discourse
talking points (elts de language)
autocompletion (phones, GOOG)
deconstruction of language vs advertising retargeting (CRITEO)
playing with neoliberal antipoetry (marten spangberg at Palais de Tokyo

]]--


