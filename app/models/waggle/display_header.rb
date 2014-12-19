require 'draper'

module Waggle
  class DisplayHeader < Draper::Decorator

    def display
      h.render partial: 'shared/display_header', locals: { controller: object }
    end

  end
end
