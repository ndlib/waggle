module Waggle
  module ApplicationHelper

    def display_flash_messages
      Waggle::DisplayFlashMessage.new(flash).display
    end

  end
end
