-- Probability of an event occuring at least once in a given number of trials

eventProbability = 0.12
trialsNb = 4
precision = 1000000 -- number of simulations

math.randomseed(os.time())

function draw(probability)
	return probability > math.random()
end

s = 0
for i = 1, precision do
	for j = 1, trialsNb do
		if draw(eventProbability) then
			s = s + 1
			break
		end
	end
end

p1 = 1 - (1 - eventProbability)^trialsNb -- alternative: eventProbability*((1 - eventProbability)^trialsNb - 1)/((1 - eventProbability) - 1)
print("Theoretical value: " .. p1 .. " i.e. " .. p1 * 100 .. "%")

p2 = s/precision
print("Experimental value: " .. p2 .. " i.e. " .. p2 * 100 .. "%") 
