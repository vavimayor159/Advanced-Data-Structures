require 'spec_helper'

describe Queve do
  subject(:queue) { described_class.new(size) }

  describe 'with one space' do
    let(:size) { 1 }

    it 'add the element' do
      subject.queue(1)
      expect(subject.top).to eq(1)
    end
  end

  describe 'without space' do
    let(:size) { 0 }

    it 'rejects to add an element' do
      expect { subject.queue(1) }.to raise_error(Queve::QueueOutOfSpaceError)
    end
  end

  describe 'with 2 spaces' do
    let(:size) { 2 }

    before do
      subject.queue(1)
      subject.queue(2)
    end

    it 'get the first element' do
      expect(subject.top).to eq(1)
    end

    it 'dequeue the first element' do
      subject.dequeue
      expect(subject.top).to eq(2)
    end
  end
end
