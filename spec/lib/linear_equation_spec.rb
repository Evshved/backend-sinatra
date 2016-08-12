require_relative '../spec_helper'
#require_relative '../spec_helper'
RSpec.describe LinearEquation  do
  describe '#roots' do
    subject { described_class.new(k, b) }

    context 'without roots' do
      let(:k) { 0 }
      let(:b) { 5 }

      specify { expect(subject.roots).to be_empty }
    end
  end
end
