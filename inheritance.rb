class Bike
	def initialize(type, company, model)
		@type = type
		@company = company
		@model = model
	end
	def get_type
		return @type
	end
	def get_company
		return @company
	end
	def get_model
		return @model
	end
	def run
		raise Exception.new "Run is not defined for Bike"
	end
	# Set the tyre width(in mm)
	def set_tyre_width(tyre_width)
		@tyre_width = tyre_width
	end
	def to_s
		puts "Type : #{@type}, Company: #{@company}, Model : #{@model}, Tyre Width : #{@tyre_width}" 
	end

end


class MTB < Bike 
	def initialize(company, model)
		super("mountain", company, model)
	end
	def run
		puts "MTB is running...."
	end
	# Tire width of MTB is in range (57mm, 61mm)
	def set_tyre_width(tyre_width)
		if tyre_width < 57 || tyre_width > 61
			raise Exception.new "Invalid tyre width for MTB"
		end
		@tyre_width = tyre_width
	end
end

class RoadBike < Bike
	def initialize(company, model)
		super("road", company, model)
	end
	def run
		puts "Road Bike is running...."
	end
	# Tire width of Road Bike is in range (23mm, 30mm)
	def set_tyre_width(tyre_width)
		if tyre_width < 23 || tyre_width > 30
			raise Exception.new "Invalid tyre width for Road Bike"
		end
		@tyre_width = tyre_width
	end
end

if __FILE__ == $0
	roadbike = RoadBike.new("BTWIN", "Riverside 120")
	roadbike.set_tyre_width(25)
	roadbike.to_s
	roadbike.run
	# roadbike.set_tyre_width(22) -> Throws an exception
	mtb = MTB.new("BTWIN", "RockRider ST 100")
	mtb.set_tyre_width(60)
	mtb.to_s
	mtb.run
	# mtb.set_tyre_width(56) -> Throws an exception
end
