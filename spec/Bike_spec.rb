require 'bike'

describe Bike do
  it { is_expected.to respond_to :bike_is_working? }

  it "Bike responds to report as broken" do
    expect(subject).to respond_to :report_broken
  end

  it "Allows user to report a broken bike" do
    expect(subject.report_broken).to eq true
  end

end
