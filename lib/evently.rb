require "evently/version"
require "evently/event"

module Evently
  
  def self.record(*parts)
    Event.create(event_parts: parts.map { |part| EventPart.serialize_and_initialize(part) })
  end

  def self.fetch(*parts)
    parts.inject(Event) do |criteria, part|
      if part.is_a?(Mongoid::Document)
        criteria.where('event_parts.content.class_name' => part.class.name, 'event_parts.content.id' => part.id)
      else
        criteria.where('event_parts.content' => part)
      end
    end
  end

end
