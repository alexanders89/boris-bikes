require 'bike'

describe Bike do
  it { is_expected.to respond_to :bike_is_working? }

  it "Bike responds to report as broken" do
    bike = Bike.new
    expect(subject).to respond_to :report_broken
  end
end
