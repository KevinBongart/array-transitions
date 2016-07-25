# frozen_string_literal: true
require 'array_transitions/version'

class Array
  def transitions
    map.with_index do |e, i|
      next if size == i + 1

      next_element = self[i + 1]
      next if next_element == e

      { from: e, to: next_element }
    end.compact
  end
end
