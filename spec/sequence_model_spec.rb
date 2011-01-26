require 'spec_helper'

describe 'New sequence' do
  before do
    MongoMapper.database.collections.select {|c| c.name !~ /system/ }.each(&:drop)
  end

  let(:sequence_name) {'new sequence'}
  it 'should get 1 as next value' do
    Sequence.for(sequence_name).next.should == 1
  end

  context 'after first request' do
    before do
      Sequence.for(sequence_name).next
    end

    let(:sequence) {Sequence.find(sequence_name)}

    it 'should exists in database' do
      sequence.should_not be_nil
    end

    it 'should be 1 in database' do
      sequence.value.should == 1
    end
  end
end

describe 'Old sequence' do
  before do
    MongoMapper.database.collections.select {|c| c.name !~ /system/ }.each(&:drop)
  end

  let(:sequence_name) {'old sequence'}
  before do
    Sequence.for(sequence_name).next
  end

  it 'should return 2 as next value' do
    Sequence.for(sequence_name).next.should == 2
  end
end

