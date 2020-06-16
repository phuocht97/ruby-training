class Man
	def enter()
		exit(1)
	end
end

class LoadMap
	def initialize(ten_map)
		@ten_map = ten_map
	end

	def play()
		lua_chon_man_opening = @ten_map.man_opening()
		man_cuoi_cung = @ten_map.man_ke_tiep('finished')
		while lua_chon_man_opening != man_cuoi_cung
			man_ke_tiep = lua_chon_man_opening.enter()
			lua_chon_man_opening = @ten_map.man_ke_tiep(man_ke_tiep)
		end
		lua_chon_man_opening.enter()
	end
end

class Death < Man
	@@chetweo = [
		"Chết quéo quèo queo"
	]
	def enter()
		puts @@chetweo[rand(0..(@@chetweo.length - 1))]
		exit(1)
	end
end

class ManLuaChon < Man
	def enter()
		puts "Chọn nhân vật"
		puts "1. Nông Dân"
		puts "2. Ma Vương"
		puts "3. Anh Hùng"
		print "\n\n Sự lựa chọn của bạn > "
		luachon = $stdin.gets.chomp.to_i

		if luachon == 1
			puts '=' *40
			puts "Bạn đã chọn nhân vật Nông Dân"
			return 'class_nong_dan'
		elsif luachon == 2
			puts '=' *40
			puts "Ban da chon nhan vat Ma Vuong"
			return 'class_ma_vuong'
		elsif luachon == 3
			puts '=' *40
			puts "Ban da chon nhan vat Anh Hung"
			return 'class_anh_hung'
		else
			puts '=' *40
			puts "Sự lựa chọn không có trong Options"
			return 'man_lua_chon'
		end
	end
end

	class ClassNongDan < Man
		def enter()
		puts '.' *40
		puts "Làm Nông Dân quan trọng là phải 'Cần cù bù siêng năng'"
		puts "Hôm nay trồng cây gì đây:"
		puts "1. Đậu đen"
		puts "2. Ớt"
		puts "3. Cây lấy gỗ"

		trongcay = $stdin.gets.chomp.to_i

			if trongcay == 1
				puts '^' *40
				puts "Đã trồng 1 cây 'Đậu đen'"
				return 'nong_dan_dau_den'
			elsif trongcay == 2
				puts '^' *40
				puts "Đã trồng 1 cây 'Ớt'"
				return 'nong_dan_ot'
			elsif trongcay == 3
				puts '^' *40
				puts "Da trong 1 cay 'lay go'"
				return 'nong_dan_go'
			else
				puts '^' *40
				puts "Phải trồng 1 trong số những cây này chứ"
				return 'class_nong_dan'
			end
		end
	end

		class TrongDauDen
			def enter()
				puts '-' *40
				puts "Đậu đen một thời gian sản sinh ra thuộc tính 'Hắc Ám'"
				puts "Ma vương cảm thấy luồng thuộc tính 'Hắc Ám' rất hữu ích"
				puts "cho lâu đài và quân đội của hắn."
				puts "Hắn chiêu mộ bạn làm việc dưới trướng hắn."
				puts "1. Làm việc dưới trướng Ma Vương"
				puts "2. Khước từ lời đề nghị của Ma Vương"
			
				luachon = $stdin.gets.chomp.to_i

					if luachon == 1
						puts '=' * 40
						puts "Bạn được Ma Vương đem về lâu đài"
						puts "Bạn làm việc cho ma vương tới cuối đời"
						exit(0)
					elsif luachon == 2
						puts "Ma Vương nổi giận chưởng phát bạn"
						return 'chet'
					else
						puts "Ma Vương thấy bạn suy nghĩ lâu quá"
						puts "tán phát bạn"
						return 'chet'
					end
			end
		end

		class TrongOt
			def enter()
				puts '-' *40
				puts "Cây ớt lâu ngày sản sinh ra thuộc tính 'Hỏa'"
				puts "Có ích cho việc rèn vũ khí"
				puts "Thành phố bạn sinh sống có tộc Dwarf chuyên rèn vũ khí"
				puts "Edward Newgate chủ xưởng rèn nhận thấy thiên phú của bạn"
				puts "Ngỏ lời mời bạn gia nhập"
				puts "1. Đồng ý"
				puts "2. Từ chối"

				luachon = $stdin.gets.chomp.to_i
					if luachon == 1
						puts '=' * 40
						puts "Bạn chuyển sang rèn luyện thêm thuộc tính 'Hỏa'"
						puts "Nâng cao tay nghề rèn vũ khí => Trở thành thợ rèn"
						exit(0)
					elsif luachon == 2
						puts "=" * 40
						puts "Bạn tiếp tục làm Nông Dân"
						exit(0)
					else 
						puts "=" * 40
						puts "Bạn chưa lựa chọn"
						return 'nong_dan_ot'
					end
			end
		end

		class TrongGo
			def enter()
				puts '-' *40
				puts "Cay lay go lau ngay san sinh ra thuoc tinh 'Moc'"
				puts "Co the ban hap thu thuoc tinh 'Moc'"
				puts "Ban dan manh hon, tham du ky thi tuyen quan nhan"
				puts "Ban vao quan doi, tham gia khoa dao tao ky binh"
				exit(0)
			end
		end

	class ClassMaVuong
		def enter()
			puts "." *40
			puts "Ban la nguoi ke nhiem Ma Vuong doi thu 38"
			puts "Ban duoc huan luyen boi cac tru cot cua Ma Vuong doi truoc"
			puts "Ban dung truoc cac su lua chon"
			puts "1. Di vao cuoc huan luyen Ma Vuong thuc thu"
			puts "2. Song cuoc song an nhan"

			luachon = $stdin.gets.chomp.to_i

			if luachon == 1
				puts '^' *40
				puts "Ban da vao mot cuoc huan luyen SUPERRRRR khac nghiet"
				exit(0)
			elsif luachon == 2
				puts "^" *40
				puts "Ban ve 1 vung que nho nho lam ban voi HEOOOOOOO"
				exit(0)
			else
				puts "Ban chua chon."
				return 'class_ma_vuong'
			end
		end
	end

	class ClassAnhHung
		def enter()
			puts "." *40
			puts "Ban la Anh Hung tru cot cua Vuong Quoc"
			puts "Ban moi duoc 5 phu thuy trieu hoi sang nay"
			puts "Mang trong minh suc manh den tu the gioi khac"
			puts "Nhiem vu cua ban la tieu diet Ma Vuong"
			puts "Ban lua chon:"
			puts "1. Bat dau di tieu diet"
			puts "2. Nghi lam Anh Hung"

			luachon = $stdin.gets.chomp.to_i

			if luachon == 1
				puts "-" *40
				puts "Ma Vuong da bi ban tieu diet"
				return 'finished'
			elsif luachon == 2
				puts "-" *40
				puts "Ve que nuoi ca va trong them rau"
				puts "song 1 cuoc song nhu nguoi binh thuong"
				exit(0)
			else
				puts "Ban chua lua chon."
				return 'class_anh_hung'
			end
		end
	end

	class Finished < Man
		def enter()
			puts "Chúc mừng"
			exit(1)
		end
	end

class Map
	@@cac_man = {
		'man_lua_chon' => ManLuaChon.new(),
		'class_nong_dan' => ClassNongDan.new(),
		'nong_dan_dau_den' => TrongDauDen.new(),
		'nong_dan_ot' => TrongOt.new(),
		'nong_dan_go' => TrongGo.new(),
		'class_ma_vuong' => ClassMaVuong.new(),
		'class_anh_hung' => ClassAnhHung.new(),
		'chet' => Death.new(),
		'finished' => Finished.new()
	}
	def initialize(man_bat_dau)
		@man_bat_dau = man_bat_dau
	end

	def man_ke_tiep(ten_man)
		giatri = @@cac_man[ten_man]
		return giatri
	end

	def man_opening()
		return man_ke_tiep(@man_bat_dau)
	end
end

a_map = Map.new('man_lua_chon')
a_game = LoadMap.new(a_map)
a_game.play()
