def printWishes
	count = 0
	isDone = false
	inputAr = Array[]
	loop do
		count+=1
    print("Please enter your wish [enter for end]: ")
		input = gets.chomp
		isDone = input == ""
    if (!isDone)
		  inputAr.push(input)
    end
		if (isDone ||count >= 15)
			break
		end
	end
	return inputAr
end

def amazonLink (search)
  for i in 0..search.length() -1 do
    if (search[i] == ' ')
      search[i] = '+'
    end
  end
  return "https://www.amazon.de/s?k=" + search
end

def outputWishes (inputAr)
	snowf = "\u{2744} " #unicode character for snowflake
  puts
  snowfAll = snowf * 33 +"\n"
	puts snowfAll
  puts snowf + " " * 62 + snowf
	for i in 0..inputAr.length() -1 do
    link = amazonLink inputAr[i].clone
		print snowf + " #{i+1}. Wish: #{inputAr[i]} #{link}"
    if i < 9
      print " " * (51 - inputAr[i].length - link.length) + snowf + "\n"
    else
      print " " * (50 - inputAr[i].length - link.length) + snowf + "\n"
    end
	end
	if inputAr.length() == 0
		puts snowf + " No wishes \u{2639}".center(62) + snowf
  end
  puts snowf + " " * 62 + snowf
	puts snowfAll
end
wishes = printWishes
outputWishes wishes
