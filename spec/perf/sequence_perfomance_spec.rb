require 'spec_helper'

describe 'Sequence perfomance' do
  before :all do
    MongoMapper.database.collections.select {|c| c.name !~ /system/ }.each(&:drop)
  end

  it 'for 1000 next on single sequence' do
    1000.times { Sequence.for('test-sequence').next }
  end

end

