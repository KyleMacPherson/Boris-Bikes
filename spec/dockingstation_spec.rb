require "dockingstation"
#require "spec_helper"

describe DockingStation do

  describe '#release_bike' do
    context 'responds to release_bike method' do
      it { is_expected.to respond_to :release_bike}
    end

    context 'user wants a bike to be released' do

      it 'releases a working bike' do
        expect(subject.release_bike.working?).to be_truthy
      end

    end


  end


end
