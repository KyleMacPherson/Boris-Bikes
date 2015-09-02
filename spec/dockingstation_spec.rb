require "dockingstation"
#require "spec_helper"

describe DockingStation do

  describe '#release_bike' do
    context 'responds to release_bike method' do
      it { is_expected.to respond_to :release_bike}
    end

    context 'user wants a bike to be released' do

      it 'releases a working bike' do
        subject.dock Bike.new
        expect(subject.release_bike.working?).to be_truthy
      end

    end

    context 'responds to dock method' do
      it {is_expected.to respond_to(:dock).with(1).argument}
    end

    context 'raises an error when no bikes are available' do
      it 'displays error message' do
        expect {subject.release_bike}.to raise_error 'No bikes available'
      end
    end

  end


end
