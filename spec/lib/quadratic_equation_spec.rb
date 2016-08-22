require_relative '../spec_helper'

RSpec.describe QuadraticEquation do
  describe '#roots' do
    subject { described_class.new(a, b, c) }

    context 'discriminant > 0' do
      let(:a) { 1 }
      let(:b) { 1 }
      let(:c) { 0 }
      specify { expect(subject.roots).to eq('Answer: [0.0, -1.0]') }
    end

    context 'discriminant = 0' do
      let(:a) { 1 }
      let(:b) { 2 }
      let(:c) { 1 }

      specify { expect(subject.roots).to eq('Answer: [-1]') }
    end

    context 'discriminant < 0' do
      let(:a) { 100 }
      let(:b) { 1 }
      let(:c) { 2 }
      specify { expect(subject.roots).to eq('Answer: no roots') }
    end
  end
end
