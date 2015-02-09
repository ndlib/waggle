module Waggle
  class DetermineDomain
    attr_reader :app

    def self.call(app)
      new(app).domain
    end

    def initialize(app)
      @app = app
    end

    def domain
      if app == :beehive
        beehive
      elsif app == :honeycomb
        honeycomb
      else
        raise "invalid app passed to class"
      end
    end

    private

      def beehive
        if Rails.env == 'development'
          'http://localhost:3018/'
        elsif Rails.env == 'staging'
          'https://beehivepprd-vm.library.nd.edu/'
        else
          'https://beehive.library.nd.edu/'
        end
      end

      def honeycomb
        if Rails.env == 'development'
          'http://localhost:3017/'
        elsif Rails.env == 'staging'
          'https://honeycombpprd-vm.library.nd.edu/'
        else
          'https://honeycomb.library.nd.edu/'
        end
      end

  end
end
