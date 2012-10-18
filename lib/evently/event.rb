class Event

  include Mongoid::Document
  include Mongoid::Timestamps

  embeds_many :event_parts

  paginates_per 50

end

class EventPart

  include Mongoid::Document

  embedded_in :event

  field :content

  def self.serialize_and_initialize(obj)
    if obj.is_a?(Mongoid::Document)
      EventPart.new(content: { name: obj.name, class_name: obj.class.name, id: obj.id.to_s })
    else
      EventPart.new(content: obj)
    end
  end

end