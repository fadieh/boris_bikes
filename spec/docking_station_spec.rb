require './lib/docking_station'
require './lib/bike'

describe DockingStation do

	it "Should accept a bike" do
	bike = Bike.new
	station = DockingStation.new
	expect(station.bike_count).to eq(0)
	station.dock(bike)
	expect(station.bike_count).to eq(1)
	end
end