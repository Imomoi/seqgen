class Sequence
  include MongoMapper::Document
  key :_id, String
  key :value, Integer

  module ClassMethods
    def for(sequence_name)
      Sequence.new(:_id => sequence_name)
    end
  end

  def next
    query = {
      :query => {'_id' => self._id},
      :update => {'$inc' => {'value' => 1}},
      :new => true,
      :upsert => true
    }
    Sequence.collection.find_and_modify(query)['value']
  end

  extend ClassMethods
end

