print 'Set time: '
time = gets.to_i

while time > 0 do
	time -= 1
	print "Time remains: #{time} seconds\r"
	sleep(1)
end