require 'spec_helper'

describe 'Sequence perfomance' do
  it 'for 1000 next on single sequence' do
    1000.times { Sequence.for('test-sequence').next }
  end

end

