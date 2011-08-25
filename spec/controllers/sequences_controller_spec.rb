require 'spec_helper'

describe SequencesController do
	describe 'for client CLIENT and sequence SEQUENCE' do
		before(:each) do
			sequence = mock_model(Sequence, :next => 1)
			Sequence.should_receive(:for).
				with("CLIENT#SEQUENCE").
				and_return(sequence)
			put 'update', :client_id => 'CLIENT', :sequence_id => 'SEQUENCE'
		end

		it 'should respond OK' do
			response.should be_success
		end

		it 'should render sequence value' do
			response.body.should == '1'
		end
	end
end