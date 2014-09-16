require 'bike'

# we're describing the functionality of a specific class, Bike
describe Bike do
	# This is a specific feature (behaviour)
	# That we expect to be present
	it "should not be broken after we create it" do
		the_bike = Bike.new # init new object of Bike class
		# expect an instance of this class to have
		# a method "broken?" that should return false
		expect(the_bike).not_to be_broken
	end
end

describe Bike do
it "should be able to break" do
	bike = Bike.new
	bike.break!
	expect(bike).to be_broken
end
end