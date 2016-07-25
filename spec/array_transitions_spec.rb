require 'spec_helper'

describe Array do
  describe "#transitions" do
    subject { array.transitions }

    context 'empty array' do
      let(:array) { [] }

      it { expect(subject).to eq [] }
    end

    context 'only one element' do
      let(:array) { [1] }

      it { expect(subject).to eq [] }
    end

    context 'two elements' do
      let(:array) { [1, 2] }

      it { expect(subject).to eq [{ from: 1, to: 2 }] }
    end

    context 'duplicate elements' do
      let(:array) { [1, 2, 2, 2, 3, 3, 2] }

      it { expect(subject).to eq [{ from: 1, to: 2 }, { from: 2, to: 3 }, { from: 3, to: 2 }] }
    end
  end
end
