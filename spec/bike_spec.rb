require 'bike'

describe Bike do

  it { is_expected.to respond_to :report_broken}

  it 'responds to working' do
    expect(subject).to respond_to :working
  end

  it 'working returns false if report_broken has been called' do
    expect(subject.report_broken.working).to eq false
  end

end
