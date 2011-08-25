class SequencesController < ApplicationController
	def update
		sequence_name = "%s#%s" % [ params[:client_id], params[:sequence_id] ]
		next_sequence_value = Sequence.for(sequence_name).next
		render :json => next_sequence_value.as_json
	end
end

