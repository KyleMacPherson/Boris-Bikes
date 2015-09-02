require "dockingstation"
#require "spec_helper"

describe DockingStation do

  describe '#release_bike' do
    context 'responds to release_bike method' do
      it { is_expected.to respond_to :release_bike}
    end
  end

end
