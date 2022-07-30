local function shuffle(str)
	local t = {}
	for i = 1, #str do
		t[i] = str:sub(i, i)
	end
	for i = #t, 2, -1 do
		local j = math.random(i)
		t[i], t[j] = t[j], t[i]
	end

	return table.concat(t)
end

local text = shuffle("a b c d e f g h i j k l m n o p q r s t u v w x y z 1 2 3 4 5 6 7 8 9 0 _ = - + , . ' ] [ } { \ | ! @ # $ % ^ & * ( )")
script.Parent.Name = text
script.Name = text
