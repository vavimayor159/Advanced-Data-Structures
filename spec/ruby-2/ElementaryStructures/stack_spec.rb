require 'spec_helper'

describe Stack do
  subject(:stack) { described_class.new(size) }

  describe 'with one space' do
    let(:size) { 1 }

    it 'add the element' do
      subject.push(1)
      expect(subject.top).to eq(1)
    end
  end

  describe 'without space' do
    let(:size) { 0 }

    it 'rejects to add an element' do
      expect { subject.push(1) }.to raise_error(Stack::StackOutOfSpaceError)
    end
  end

  describe 'with 2 spaces' do
    let(:size) { 2 }

    before do
      subject.push(1)
      subject.push(2)
    end

    it 'get the last element' do
      expect(subject.top).to eq(2)
    end

    it 'pops the last element' do
      subject.pop
      expect(subject.top).to eq(1)
    end
  end
end
