-- lua file processed in Glint / Minuit by Milovann Yanatchkov RVBA.fr
--  ↄ⃝ Copyleft Jb Labrune / Pa-F 2015
-- https://github.com/rvba/glint
-- https://github.com/jeanbaptiste/paf/blob/master/summer2015/talk/moto.lua

dofile('letters.lua')

line = 0

local Typo = {}
-- object is a stone object to store stuff
Typo.object = nil

function Typo:init()
	print("init - moto ---------------------------------")	
	self.object = stone.new("a")
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
			-- print("element",k,v)
			
			-- for key,val in pairs(v) do print("point",key,val) end

			if v[1] == nil then
			--	print("NIIL")
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
		-- print("not found")
	end
	
	-- print(letter)
end
--
function Typo:new()
	self.__index = self
	return setmetatable({object=nil},Typo)	
end

function Typo:word(word)
	local px, py, pz = 0, line, 0
	line = line - 1.8
	for i = 1 , #word do
		Typo:print(word:sub(i,i),px,py,pz)
		px = px + 1.2
		py = py
	end
end

local test = Typo:new()
test:word("a ab abc ccc")
test:word("babab")
test:word("ababab")
test:word("aaaaaaaaaaaaaaa")
test:word("ab aba ab   aba ab")

-- je veux m'exprimer a l'aide un logiciel qui me permet de le faire de maniere dynamique
-- i want to express myself through a software that allows me to do it dynamically
-- stephen hawking is the first man machine , cyborg scientist ! 


-- literate computing, donald knuth
-- who gonna write the first word processor for electric age philosophers

-- XENOLOGY
-- science of alterity
-- cosmic cognition







-- test:print("a",0,0,1/time())
-- test:print("b",1.5,0,1/time())
-- test:print("c",3,0,1/time())

-- local a = obj.add_vertex(obj,0,0,0)
-- local b = obj:add_vertex(1,0,0)
-- local edge = obj:add_edge(a,b)

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
-- every_frame(function() print(time()) end )

---------------------------------------------------------------------------











---------------------------------------------------------------------------

talk =[[ 

MOTO ::: Morphogenesis of the Outside )))))))))))) )   )              )..
 ↄ⃝  Copyleft Pa-F 2015 – Jb Labrune + extra thanks to Matt Hare, Jan Ritsema & Paf Summer University


There are many ways to mix genres. 

Hacking, blending, agitating, encrypting, intricating, weaving, cyphering, entangling, percolating, un-dominating, representing, projecting, jamming, interlocking, exapting, knotting, blurring, smoothing, transforming the striated into the seamless, infinitizing...

And by genres, i mean genders, forms, categories, types, manifolds, cosmoses...

Genres are traditionally defined regarding different entities they resemble. They ex-ist out of these outsides. Their "shapes" are counter-forms. Therefore, investigating how they evolve and develop over time, space and scale would require an epigenetic xenology, the morphogenesis of the outside(s).

Accordingly an out-side implies an in-side. There is an inherent duality - dualness, dualism, difference, division, dissociation, diversion, dislocation - gravitating around genres. They are often perceived in our culture as dimorphic entities. 

A cosmo-accelerationist remix of genres, a turbo genderfuck1, would consist precisely in challenging sexual, conventional and traditional dimorphism. In that respect, i introduce libidinal and socio-cultural diffeomorphism. This term comes from a branch of mathematics called topology. A diffeomorphism – or differentiable homeomorphism - is an isomorphism of smooth manifolds. It is an invertible function that maps one differentiable entity to another.

Our hypothesis is double: this concept should help to understand how the "outside" could be seen as an homeomorph alterity, but also as a differentiable self. An exaptive recursive identity leading to a morphogenesis from the outside, an epigenetic feedback loop: a diffeomorphogenesis.  

From a neoliberal perspective, there are many "outsides": fringes, marginal practices & people, avant-gardes, copyleft, so-called 'peripheral' countries, but also off-shore islands, transnational corporations and of course plants and animals in the anthropocene. How do these articulate with established socio-political core systems ? Which strategies arise when negotiating with power structures based on asymmetric secrecy, governance lock-ins and generalized copyright ? 

We'll answer by exploring some practical ideas for the creation of experimental places, creative environments and institutional experiences based on recursive governance and diffeomorphic strategies to cope with cryptopolitical insides.

The image of a rectangular grid on a square under a diffeomorphism from the square onto itself
Oleg Alexandrov - self-made with MATLAB - Source code (MATLAB) – License CC0 Public Domain

% Compute a diffeomorphism from a square to a square which leave
% the boundary fixed.

function main()

   N = 20; % num of grid points
   epsilon = 0.1; % displacement for each small diffeomorphism
   num_comp = 10; % number of times the diffeomorphism is composed with itself
   
   S = linspace(-1, 1, N);

   [X, Y] = meshgrid(S);

   Z = X; W = Y;

   % take num_comp compositions of the same small diffeomorphism
   for iter = 1:num_comp

      for i=1:N
         for j=1:N
            
            [Z(i, j), W(i, j)] = small_diffeo(Z(i, j), W(i, j), epsilon);
            
         end
      end

   end
   
   % graphing settings
   lw = 2;
   mycolor = [1, 0, 0.1];
   small = 0.1;
   
   figure(1); clf; hold on;
   for i=1:N
      plot(X(:, i), Y(:, i), 'linewidth', lw, 'color', mycolor);
      plot(X(i, :), Y(i, :), 'linewidth', lw, 'color', mycolor);
   end
   axis([-1-small, 1+small, -1-small, 1+small]);
   axis equal; axis off;
   
   figure(2); clf; hold on;
   for i=1:N
      plot(Z(:, i), W(:, i), 'linewidth', lw, 'color', mycolor);
      plot(Z(i, :), W(i, :), 'linewidth', lw, 'color', mycolor);
   end
   axis([-1-small, 1+small, -1-small, 1+small]);
   axis equal; axis off;
   
function [z, w] = small_diffeo(x, y, epsilon);

   A1=epsilon*(cos(pi*x)+1)*(cos(pi*y)+1)/4.0;
   A2=epsilon*cos(pi*x/2)*cos(pi*y/2);

   A = (A1+A2)/2;
   
   z = x +(-y)*A;
   w = y +( x)*A;

1. Xenology

The challenge with a proposition such as “the morphogenesis of the outside” is to establish which field or context is appropriate to frame it. It affords very different notions. Shape, space, time, scale, territory, philosophy, metaphysics, architecture, politics, biology, complex sciences, epistemology, inter-disciplines, but also pseudo-science, alchemy, theology, science of fiction, mythology.

The latter traditionally consider things, objects, entities outside of our realm. They preserve the integrity of the other - of the foreigner - by treating it/her/him as a stranger, an hostile enemy or, as a guest-friend, depending on the flavor. They propose an extended discourse on the xenos, the distant friend, outside of the local philos. Xenia vs Philia. Accordingly, I propose to adopt a xenological point-of-view in addition to a philosophical one.

Consequently, this leads to outsiding philosophy itself from our thinking. And, as a preliminary gesture, proceeding to its retreat. Allowing to recognize that if we want to immerse ourselves into the outside, we might operate first what religious poets call a TsimTsum, a dimensional contraction. Avoiding the void in a contracted refuge. Neither chaos nor order but a single entity intricating them. A yod detached from the aleph. Philosophy as a singular dot in a scalar horizon of Xenology.

2. Morphogenesis of the outside
	2.1. Short history of the terms

Morphogenesis refers to the way a shape arises, a form evolves over time or a being expresses its structure for instance in embryogenesis. In 1952, Alan M. Turing describes in his article “The Chemical Basis of Morphogenesis” how “systems, although they may originally be homogeneous, may later develop a pattern or a structure due to an instability of the homogeneous equilibrium, which is triggered by some random disturbances”. 
Few years before him, in 1917, the Scottish mathematical biologist D'Arcy Wentworth Thompson published a descriptive book on the physico-structural influences on biological form. Although he criticized the evolutionist approach from Darwin, he tackled morphostasis through mathematical morphogenesis, using simple geometric rules. Thompson analysed for instance the polyhedral forms of Radiolaria (protozoa developing a siliceous exoskeleton ) from the Challenger expedition drawn by Ernst Haeckel in 1904. He inspired Turing but also Conrad Hal Waddington, a british developmental biologist, paleontologist, geneticist, embryologist and philosopher who laid the foundations for systems biology and epigenetics.
Dutch sociocybernetist Felix Geyer places Morphogenesis as the foundational brick of Complexity 2 : “In stressing this possibility for self-organization, for "order out of chaos", Prigogine comes close to the concept of autopoiesis. In modern societies, the mechanistic and deterministic Newtonian worldview - emphasizing stability, order, uniformity, equilibrium, and linear relationships between or within closed systems - is being replaced by a new paradigm.


Ernst Haeckel - Kunstformen der Natur (1904), plate 1: Phaeodaria – License Public Domain CC0 

Circogonia icosahedra (Haeckel) = Circogonia icosahedra Haeckel, 1887 (1a: opening of shell) Circostephanus coronarius (Haeckel) = Circostephanus coronarius Haeckel, 1887 Haeckeliana porcellana (John Murray) = Haeckeliana porcellana Murray, 1885 (3a: pore circle without spines) Cortinetta tripodiscus (Haeckel) = Cortinetta tripodiscus Medusetta tetranema (Haeckel) = Medusetta tetranema Haeckel, 1887 Challengeria murrayi (Haeckel) = Protocystis murrayi (Haeckel, 1887)
This new paradigm is more in line with today's accelerated social change, and stresses disorder, instability, diversity, disequilibrium, non-linear relationships between open systems, morphogenesis and temporality. Prigogine indeed calls it the science of complexity. It is exemplified amongst others by Prigogine himself, Maturana and Varela, Laszlo and "second-order cybernetics" in general: i.e. the (non-mechanistic) study of open systems in interaction with their observers.”

Today, in biology, it's considered that animal markings, segmentation of animals, phyllotaxis, neuronal activation patterns like tonotopy, and predator-prey equations' trajectories are all examples of natural patterns constructed through morphogenesis. Similarly, in other scientific fields, phenomenas and entities such as Belousov-Zhabotinsky reactions, Liesegang rings, Bénard cells, Lasers, cloud formations in stripes or rolls, ripples in icicles, washboard patterns on dirtroads, dendrites in solidification, liquid crystals, solitons, sphere packing and cellular automata are examples of morphogenesis.

The notion of outside is even more difficult to firmly grasp. If we consider that a side can be a flat outer surface of an object, especially one that is not the top, the bottom, the front, or the back; an edge or border of something; a place next to something. The outside is therefore an out side of something. Over its edge, beyond the next entity close to it or an alternate surface to its own.

This very short history would of course welcome a thorough philosophical assessment of the concept of Outside but also of Form, Evolution, Becoming, etc.. Nonetheless, I tried to register these terms in a different context than mine, my subjective one, which we will see next is somehow distant to historicity and traditional philosophical linearity and rational causality.

	2.2. Short speculation on the terms

Morphogenesis
From a linear point-of-view, morphogenesis is the accountable difference between different states of a form. The evolution or reception of diverse segments. Different forms browsed in a versatile repertoire of sequenced dimorphisms. From a xenological point-of-view, morphogenesis is neither a bottom-up structural accretion nor a top-down theological revelation. It is a recursive metaphor across perpetually generating spaces, times and scales. Patterns as invariants in a multidimensional operation.

Outside of what ?

1. void -> tohu-bohu / tsimtsum / fiat lux / 
2. universe -> 4-manifold contingent non-metaphysics
3. a sheet of paper -> diffeomorphism 
4. cybernetics -> self-referential cybernetics 
5. masculine rational advantage -> feminine xenological alliance 
6. verbal language -> iconic & enactive expression
7. cryptopolitical power -> supranatural propitiatory talent 

	2.3. What other concepts have been associated with it? 

1. void -> tohu-bohu 
Euphonia, euphony, euphonics 
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
Meillassoux correlationism absolute 
meta as transcendence 

3. a sheet of paper -> diffeomorphisms 
close unit , two faces , fold, cut 
self-similarity, scale-invariance, contains in itself 
2D to 3D to nD 
morphogenesis, dynamic gestaltung 
neurulation, gastrulation 
embryology, epigenesis 
recursive epigenesis of milieu, umgebung, umwelt 
von huexkull biosemiotics ( The umwelt is composed of two parts, the innenwelt or self-oriented features, and the umgebung, or world-oriented features. Together, they describe the individual's subjective viewpoint, or embedding, which has the property of being ubiquitous, as compared to the observer's objective viewpoint, which has the property of being universal)
augustin berque mesology 
regis debray mediology 
claude bernard interior milieu 1854 
the style is in the milieu
recursive milieu 
mi-lieu of the milieu
( hara )
cut / in the sheet of paper 
transcendatal immanence 
ininite sides of the sheet of paper 
conforming, confolding conforging the sheet onto its belly 
convoluting your*self from my*self 
3D to 4D, hypercube, tesseract 
inverting itself from itself 
diffeomorphing
neither imploding nor exploding but self-conforming 
self, antiself, extended self, streched self, selfism, selfist, selfitude, servitude, selfology, selfanalogue, ipseity, alteripseity, alterego, collectivego, collectiveself, co co co co co collective body wi wi wi without a s s sssss sssssellllffffff  CONNECT *sonia sanchez* where is your fire? c cccc ccccatch the fire 


(Sometimes I wonder: 

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
Cybernetics, art of steering 

5. masculine rational advantage -> xenology 
Roberte Hamayon - playing 
advantage of masculinity in buriate and tungus early shamanism (period????) 
oripeaux, attributs, parure, costume, unperfect masks, attirail, paraphernalia, apparatus of the shaman 
make-believe and faire-semblant, metaphorization as the basis of connecting with the Other 
xenology, logics, discourse, study of the otherness of the other 
levinas 
cryptophilosophy 
religion 
religere 
words hidden in words 
cryptowords, cryptoworlds, cryptocurrency, blockchain, faircoin, 
hidden third-term (tiers terme) CONNECT *jean lassègue* 

6. verbal language -> iconic & enactive expression 
formants 
phatic 
semiotic lips 
INVOCATE *Charles Sander Peirce* 
INVOCATE *Jerome Bruner* 

7. crypto-political power -> supra-natural propitiatory talent 
crypto-capitalism 
neo-liberal refactoring of verbal and written language 
double layer of discourse 
talking points (elements de language) 
auto-completion (phones, GOOG, alphabet) 
deconstruction of language vs advertising re-targeting (CRITEO) 
playing with neo-liberal anti-poetry (marten spangberg at Palais de Tokyo)

	2.4. In what ways has this concept affected the lives of species?
	300000 years from Eric Gunther and Jeff Lieberman
Iridescence
Camouflage
Transparency
Crypto-capitalism
Power
Shamanism
Playing

	2.5. From Dimorphism to Diffeomorphism 
How might this concept be changed to work better?
Morphogenesis of an outside: separated evolution, growth → Epigenesis, Exaptation
Morphogenesis from the outside: intrication, entanglement, co-constitution → Diffeomorphogenesis

3. Diffeomorphogenesis 

By what kinds of evidence can the proposition be proved or disproved ?
Can we prove that there is a diffeomorphogenesis ? 
Can we disprove it ?

4. What counter-arguments must be confronted and refuted ?

CAMOUFLAGE 
 
FOMECBLOT A : « Fond, Forme, Fumée, Ombre, Mouvement, Masque, Éclat, Couleur, Bruit, Lumière, Laser, Odeur, Traces, Texture, Thermie, Animaux »
 
BSMGCNLOT A « Background, Shape, Smoke, Shadow, Motion, Mask, Glint, Color, Noise, Light, Laser, Odor, Traces, Texture, Thermo, Animals »

Active Camouflaging
Dazzling

Canadian Disruptive Pattern (CADPAT; French: dessin de camouflage canadien, DcamC)	

michel pastoureau OURS / LION / RENARD 

vera chytilova
Unmoralische Geschichten 
http://www.bildstoerung.tv/blog/filme/la-bete-die-bestie/ 

Editions Dehors 
La pommerie
http://www.lapommerie.org/nouvellepommerie/NL-0528/rencontres/programme_rae_2015.pdf 

******for an art of consequences****** *eli kongs* 

Bertrand Prevost* Philosopher. Cosmique cosmétique. Pour une cosmologie de la parure. 

Cosmical Cosmetics: For a Cosmology of Adornment 
http://imagesrevues.revues.org/2181 names names namezzzz *adolphe portmann* Georg Simmel, G. Deleuze et F. Guattari, R. Caillois, Ernst Gombrich, Tertullian, Marcel Mausssssssssss, Marcel Mars, Nenad Romic chhhhhhhhhh ch ch chhhhhhhhhh 

camouflage is between individual and milieu when mimicry is the relation between the different species 

sexual dimorphism, sexual homeomorphism, sexual diffeomorphism, libidinal continuous 4-manifold, appearance, apparence, self presentation, selbstdarstellung, expressive appearance, expressive form, something in the form that is expressive, not the form: appearance is a vital function, visibility, audibility, …. expression, non adressed non adressed presentation. a show before there is the existence of a viewer. There is true appearance in a larger field than the interplay of morphological and sensory organs of higher animals 

bergson read by deleuze mixed with spinoza:: plane of light, things are images in themselves, matter and memory, bergson berg son: fiction of the world entirely made of images, images for no one. 

How can we talk about an image without an eye ? not yet an eye. 

The light is not yet reflected and still propagating, never revealed. Notion of non-revealed light. Onto-theology, revelation, revelation of the light, lux erat, fiat lux, tohu bohu. Nor divine, nor physical for DELEUZE; the light must not precedes the phenomenon. The light is not longer a condition of physical visibility. The light from the appearance. Short Circuit of the Kantian opposition of the opposition of the noumenon and phenomenon. It does not help. absolutely not sensitive access to the object, purely intellectual. the thing in itself, noumenon, an object,………………………………………………………………………………………………………………………………………………………………………………… very absolute objectivity of a thing in itself…………………………………………………………………………………………. 

We remain prisoners of the subject-object dimensions 

Luster water, l'eau lustrale, magical origine, water of dow, harvested, filtered, then filled with gem salt.

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

5. Practical implications 

5.1 Introspective creativity
The value of creative, scientific, artistic, pedagogical, technological knowledge is essentially defined in terms of its quantitatively predictable impact. In a modern world, this impact is measured with KPI's : Key Performance Indicators.  They are often financial, directly convertible into a currency or monetary value, but in other cases they can be socio-political - jobs created, the amount of visitors in an exhibition, a theater performance, the span of a social network – or even ecological, aesthetic, cultural, spiritual, emotional, cognitivo-behavioural...
In addition to these indicators, we could imagine to manifest how much an art piece or performance, a scientific experiment or apparatus, knowledge on how to take care of a plant, build a house or a computer is valuable for itself, for oneself, in a self-referential fashion. 
We could proceed to a diffeomorphogenetic examination and describe how this particular micro-universe is composed without necessarily trying to convert its xenological structure to a known one. Preserving it's unique, singular, genuinely differentiable qualities. Resist the temptation to compare, integrate or project only a fraction of the shadow of its inherent light.
One consequence of introspection is the necessity of allowing many ways to understand, observe, make accountable the inner and systemic entities in the systems at stake. This leads to many paradoxes. On the one hand, the outsideness should be preserved, on the other hand, its differentiable qualities should be caracterized. One outside calls for another one. An example of this paradox is common in the so called “Free” Software world. 
This movement also called Copyleft or Libre culture initiated by Richard Stallman in the eighties is based on four freedoms:
The freedom to run a program as you wish, for any purpose (freedom 0). 
The freedom to study how a program works, and change it so it does your computing as you wish (freedom 1). Access to the source code is a precondition for this. 
The freedom to redistribute copies so you can help your neighbor (freedom 2). 
The freedom to distribute copies of your modified versions to others (freedom 3). By doing this you can give the whole community a chance to benefit from your changes. Access to the source code is a precondition for this. 

Copyleft, Free, Libre culture demand a full disclosure of the building blocks of software. Access to source code is a necessary condition for two of the freedoms: freedom to study and modify program (F1), freedom to redistribute a studied and modified program. The paradoxical consequence of this precondition is that it allows everyone to inspect source code not only in the prospect of celebrating its ingenuity but also very often in the idea of layering a financial, social or symbolic added value out of it without a reciprocal gesture towards people who shared their secret of fabrication in the first place. This is why secrecy was the longtime preferred method for protecting the value of something. Initiatic societies were for instance architectured around restricted knowledge.

Libre culture is rooted in a exoterritorial (Patent Law, Copyright, Trademark) attempt to overcome the esoterritorial (Secret of fabrication, Sacred culture, Initiation). The difference when it comes to software compared to other forms of cultural production is that there remains a certain form of technological barrier. How many people know how to compile a source code ? Likewise, how many people would know how to read and reproduce an experiment published in Nature ? 
In contrast, a text such as this one, a song or a visual presentation of concepts can be easily “used” without requiring a complex technological knowledge. The source code is the document itself. It can be easily retro-engineered. No need for a compiler, twenty years of piano playing or visuo-motor training practicing to commodify it. Of course, this is unethical, it does not respect the otherness of the others who spent existential tokens, space, time, ingenuity and energy to give form to such or such production.  The paradox, the price to pay for introspection is to let anyone speculate on the fruits of your own production and therefore be to some degrees your competitor, your enemy.
But what if this enemy is a xenological one, could it be in the same time your philosophical ally ? What if its outside would define your inside? What if the operation of seducing you, diverting you from your own profit would bring a different kind of profit, at a different scale, on a different plane, in an other dimensional surface? Although I surf here very close to an onto-theological wave(!), what if the differentiable homeomorph relationship that bind you to your un-allied competitors would be characterized and carefully examined and taken into account as an alternative to KPI's ?
Enforcing this proposal on a legal perspective would be first useless if not a waste of time and money. However, from a technological point-of-view, many decentralized systems could semi-automatically help to compute the global resonance of copyleft/libre cultural production items in a global camouflage neoliberal cryptopolitical economy. Libre crawlers compiling the libre intergalactic network fantasized by J.C.R Licklider and populated few years before him by Von Neumann universal constructors3. Diffeomorphogenesis analysis tools wandering across the different dimensions of the neoliberal universe, reuniting instances from their copyleft prototypes.

5.2 Recursive places
Beyond crypto-politics and fake talent shows
Feedback governance
Outside europe, Outside the body, Outside institution, Outside capitalism and neoliberalism.

5.3 Institutional feedback loops
Outside-In places: recursive governance
Introspective creativity, copyleft, non-ecclesiastic free software, bioware and hardware.
Inside-Out institutions
]]


-- m = Typo:new()
-- m:word(talk)
-- m.object:build_object()















