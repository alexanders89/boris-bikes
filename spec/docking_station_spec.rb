require "docking_station"

describe DockingStation  do
  it { is_expected.to respond_to :release_a_bike }
  it { is_expected.to respond_to(:dock_a_bike).with(1).argument }


  it "Releases a bike" do
    bike = Bike.new
    subject.dock_a_bike(bike)
    expect(subject.release_a_bike).to eq bike
  end

  it "Allows bikes to be docked" do
    bike = Bike.new
    expect(subject.dock_a_bike(bike)).to eq [bike]
  end

  it "Shows if a bike has been docked" do
    expect((DockingStation.new).dock_a_bike(@bikes)).to eq [@bikes]
  end

  describe '#release_a_bike' do
  it "Will raise an error when there are no bikes available" do
    expect {subject.release_a_bike}.to raise_error("No more bikes!")
  end
end

  describe '#docks_a_bike' do
    it "Will only allow one bike to be docked" do
      DockingStation::DEFAULT_CAPACITY.times {subject.dock_a_bike(Bike.new)}
      expect {subject.dock_a_bike(Bike.new)}.to raise_error("No more space!")
    end
  end

  it "Allow change in the capacity" do
    expect(DockingStation.new(20).capacity).to eq 20
  end

  it "Sets the capacity to default value" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it "Allows the user to dock a broken bike" do
    expect(subject).to respond_to :dock_a_broken_bike
  end

  it "Check if there are any working bikes available" do
    expect(subject).to respond_to :working_bikes_available
  end

  it "Returns false if there are no working bikes in @bikes" do
    expect(subject.working_bikes_available).to eq false
  end
end
