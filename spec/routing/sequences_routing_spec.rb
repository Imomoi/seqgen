require 'spec_helper'

describe 'Current value' do
	it 'should be accessible via /:client_id/:seqence_id route' do
		{:put => "/12377-df-as/zcvs12="}.should route_to ({
			controller: "sequences",
			action: "update",
		    client_id: '12377-df-as',
		    sequence_id: 'zcvs12='
		})
	end
end