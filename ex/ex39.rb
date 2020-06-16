things = ['a', 'b', 'c', 'd']
puts things[1] #Vị trí thứ 1 trong array things là "b"

things[1] = 'z'
puts things[1] #Ở đây vị trí 1 của 'b' đã thay đổi thành 'z'
print things, "\n"

stuff = {'name' => 'Zed', 'age' => 39, 'height' => 6 * 12 + 2}

puts stuff['name']
puts stuff['age']
puts stuff['height']

stuff['city'] = "San Francisco"
print stuff['city'], "\n"
#insert thêm data vào array
stuff[1] = "Wow"
stuff[2] = "Neato"
print stuff, "\n"
#Delele data trong array
stuff.delete('city')
stuff.delete(1)
stuff.delete(2)

print stuff, "\n"
