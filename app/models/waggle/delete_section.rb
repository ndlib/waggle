require 'draper'

module Waggle
  class DeleteSection < Draper::Decorator
    attr_accessor :name, :message

    def display
      yield(self) if block_given?

      h.render partial: 'shared/delete_section', locals: { name: name, message: message, path: object }
    end

    def name
      @name || 'Content'
    end

    def message
      @message || "Procede with caution. This will remove the content completely"
    end

  end
end
