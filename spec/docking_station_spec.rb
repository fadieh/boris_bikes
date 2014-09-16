require './lib/docking_station'
require './lib/bike'

describe DockingStation do

	let(:bike) { Bike.new }
	let(:station) { DockingStation.new }

	it "Should accept a bike" do
		expect(station.bike_count).to eq(0)
		station.dock(bike)
		expect(station.bike_count).to eq(1)
	end

	it "Should release a bike" do
		station.dock(bike)
		station.release(bike)
		expect(station.bike_count).to eq(0)
	end
end