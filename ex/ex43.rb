class Scene
	def enter()
		puts "This scene is not yet configured. Subclass it and implemnent enter()"
		exit(1)
	end
end

class Engine
	def initialize(scene_map)
		@scene_map = scene_map
	end

	def play()
		current_scene = @scene_map.opening_scene()
		last_scene = @scene_map.next_scene('finished')

		while current_scene !=last_scene
			next_scene_name = current_scene.enter()
			current_scene = @scene_map.next_scene(next_scene_name)
		end

		current_scene.enter()
	end
end

class Death < Scene

		@@quips = [
			"You died. You kinda suck at this.",
			"Your mom would be proud...if she were smarter.",
			"Such a luser.",
			"I have a small puppy that's better at this."
		]

	def enter()
		puts @@quips[rand(0..(@@quips.length - 1))]
		exit(1)
	end
end

class CentralCorridor < Scene
	def enter()
		puts "The Gothons of Planet Percal #25 have invaded your ship and destroyed"
		puts "your entire crew. You are the last surviving member and your last"
		puts "mission is to get the neutron destruct bomb from the Weapons Armory"
		puts "put it in the bridge, and blow the ship up after getting into an"
		puts "escape pod."
		puts "\n"
		puts "You're running down the central corridor to the Weapons Armory when"
		puts "a Gothon jumps out, red scaly skin, dark grimy teeth, and evil clown costume"
		puts "flowing around his hate filled body. He's blocking the door to the"
		puts "Armory and about to pull a weapon to blast you"
		print "> "
		
		action = $stdin.gets.chomp

		if action == "shoot!"
			puts "No manh qua ko danh lai, no an may."
			return 'death'
		elsif action == "dodge!"
			puts "Dang ban te xuong mieng no, no an may."
			return 'death'
		elsif action == "tell a joke"
			puts "Chay lai kho lay sung, ban tiep"
			return 'laser_weapon_armory'
		else
			puts "DOES NOT COMPUTE!"
			return 'central_corridor'
		end
	end
end

class LaserWeaponArmory < Scene
	def enter()
		puts "You do a dive roll into the Weapon Armory, crouch and scan the room"
		puts "Nhap 3 so de go bom"
		code = "#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}"
		puts "#{code} code nè nhập vô"
		print "[keypad]>"
		guess = $stdin.gets.chomp
		guesses = 0

		while guess != code && guesses < 10
			puts "BZZZZEDDD!"
			guesses += 1
			print "[keypad]> "
			guess = $stdin.gets.chomp
		end

		if guess == code
			puts "Cau da bi gay"
			return 'the_bridge'
		else
			puts "Phi thuyen tong vao cuc da"
			return 'death'
		end
	end
end

class TheBrige < Scene
	def enter()
		puts "Dieu khien phi thuyen"
		print "> "
		
		action = $stdin.gets.chomp

		if action == "throw the bomb"
			puts "Bom no"
			return 'death'
		elsif action == "slowly place the bomb"
			puts "Bi gay tay, rang di mo cua"
			return 'escape_pod'
		else
			puts "DOES NOT COMPUTE!"
			return "the_bridge"
		end
	end
end

class EscapePod < Scene
	def enter()
		puts "Co lay 5 cai thau kinh ko, lay may cai?"
		good_pod = rand(1..5)
		puts "De nghi lay #{good_pod} cai"
		print "[pod #]> "
		guess = $stdin.gets.chomp.to_i

		if guess != good_pod
			puts "Lay %s cai, xong chet queo" % guess
			return 'death'
		else
			puts "Lay %s cai nen Chien thang" % guess
			return 'finished'
		end
	end
end

	class Finished < Scene
		def enter()
			puts "Game la de"
		end
	end
		
	
class Map
	@@scene = {
		'central_corridor' => CentralCorridor.new(),
		'laser_weapon_armory' => LaserWeaponArmory.new(),
		'the_bridge' => TheBrige.new(),
		'escape_pod' => EscapePod.new(),
		'death' => Death.new(),
		'finished' => Finished.new()
	}
	def initialize(start_scene)
		@start_scene = start_scene
	end

	def next_scene(scene_name)
		val = @@scene[scene_name]
		return val
	end

	def opening_scene()
		return next_scene(@start_scene)
	end
end

a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()