require 'draper'

module Waggle
  class DisplayFooter < Draper::Decorator

    def display
      h.render partial: 'shared/display_footer'
    end

  end
end
