### A Pluto.jl notebook ###
# v0.18.0

using Markdown
using InteractiveUtils

# ╔═╡ 8daba220-2990-4fd1-8023-68d02ad8ebb4
begin
    import Pkg
    Pkg.activate()

    using PlutoUI
    using NativeSVG
end

# ╔═╡ eb70a653-2b91-46b7-a56f-68a043e3a2aa
#####################################################################################

# ╔═╡ 217164ed-6b26-42f0-ae29-fd763614cf61
#Oefeningen Hoofdstuk 4

# ╔═╡ 132620d7-8439-4921-87b9-85b8131efaf6
#Exercise 1

# ╔═╡ 2ad2ef86-adad-41f4-828c-7f58dd5d3294
with_terminal() do
	
	function TimeSince()
		DaySince = trunc(Int64, time()÷86400)
		RestDaySince = time()%86400 
		HourSince = trunc(Int64, RestDaySince÷3600)
		ResHourSince = RestDaySince%3600
		MinuteSince = trunc(Int64, ResHourSince÷60)
		ResMinuteSince = ResHourSince%60
		SecondSince = round(ResMinuteSince, digits = 2)
	
		println("It has been $DaySince days, $HourSince hours, $MinuteSince minutes and $SecondSince seconds since 00:00 on         January first 1970")
	end 
	TimeSince()
end 

# ╔═╡ f9612d9a-bff3-4980-9907-109a5c2fd77b
with_terminal() do

	Timezone = 1
	function TimeNow()
		DaySince = trunc(Int64, time()÷86400)
		RestDaySince = time()%86400 
		HourSince = RestDaySince÷3600
		ResHourSince = RestDaySince%3600
		MinuteSince = trunc(Int64, ResHourSince÷60)
		ResMinuteSince = ResHourSince%60
		SecondSince = ResMinuteSince
		SecondSince = round(SecondSince, digits = 2)
		HourSince = trunc(Int64, HourSince + Timezone)
	
		println("It has been $DaySince days the epoch and it is now $HourSince:$MinuteSince:$SecondSince")
	end 
	TimeNow()
end 

# ╔═╡ 2b442b80-130a-4c89-bf8b-33cf3cab2caf
#Exercise 2

# ╔═╡ 0cf7c311-bb36-4cde-9865-b2b0bd3bc470
with_terminal() do

	function checkfermat(a, b, c, n)
		
		if a^n+b^n == c^n && n>2
			println("Holy Smokes, Fremat was wrong!")
		else 
			println("No, that doesn't work.")
		end	
	end
	checkfermat(2,2,2,2)
end

# ╔═╡ 904535cf-2779-4ea5-803e-2abea003fc2b
#Exercise 3

# ╔═╡ a7bc588b-78da-401b-8f58-d02db80799a4
with_terminal() do

	function IsTriangle(a,b,c)
		#print("What sides do you want your triangle to have, Side 1:")
		#a = parse(Float64, readline())
		#print("What sides do you want your triangle to have, Side 2:")
		#b = parse(Float64, readline())
		#print("What sides do you want your triangle to have, Side 3:")
		#c = parse(Float64, readline())
		
		if b+c > a && a+c > b && a+b > c
			println("Jep, das nen driehoek")
		else
			println("Nee sorry, zoek andere stokken")
		end 
	end 
	IsTriangle(11,1,1)
end 

# ╔═╡ c5a90e91-bc25-46b2-b195-df3b28a0cd31
#Exercise 4

# ╔═╡ 90d3dea6-1908-467a-8210-195efaddbc8b
function DrawKochSegment(x)
		
		t = Turtle()
		SegmentLength = trunc(Int64, (x/3))
		
	for _ in 1:10
		forward(t, SegmentLength)
		turn(t, -60)
		forward(t, SegmentLength)
		turn(t, 120)
		forward(t, SegmentLength)
		turn(t, -60)
		forward(t, SegmentLength)
	end 
	Drawing(t, 1000,100)
end

# ╔═╡ 68637145-cbd6-4d51-989e-cc6192483910
DrawKochSegment(100)

# ╔═╡ Cell order:
# ╠═8daba220-2990-4fd1-8023-68d02ad8ebb4
# ╠═eb70a653-2b91-46b7-a56f-68a043e3a2aa
# ╠═217164ed-6b26-42f0-ae29-fd763614cf61
# ╠═132620d7-8439-4921-87b9-85b8131efaf6
# ╠═2ad2ef86-adad-41f4-828c-7f58dd5d3294
# ╠═f9612d9a-bff3-4980-9907-109a5c2fd77b
# ╠═2b442b80-130a-4c89-bf8b-33cf3cab2caf
# ╠═0cf7c311-bb36-4cde-9865-b2b0bd3bc470
# ╠═904535cf-2779-4ea5-803e-2abea003fc2b
# ╠═a7bc588b-78da-401b-8f58-d02db80799a4
# ╠═c5a90e91-bc25-46b2-b195-df3b28a0cd31
# ╠═90d3dea6-1908-467a-8210-195efaddbc8b
# ╠═68637145-cbd6-4d51-989e-cc6192483910
