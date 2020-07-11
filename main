-- Probability that an event occurs at least once after a certain number of draws

eventProbability = 0.1
drawsNb = 5
precision = 1000000

math.randomseed(os.time())

function draw(probability)
	return probability > math.random()
end

s = 0
for i = 1, precision do
	for j = 1, drawsNb do
		if draw(eventProbability) then
			s = s + 1
			break
		end
	end
end

p1 = eventProbability * ((1 - eventProbability)^drawsNb - 1)/((1 - eventProbability) - 1)
print("Theoretical value: " .. p1 .. " i.e. " .. p1 * 100 .. "%")

p2 = s/precision
print("Experimental value: " .. p2 .. " i.e. " .. p2 * 100 .. "%")
