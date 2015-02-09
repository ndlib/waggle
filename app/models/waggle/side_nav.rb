require 'draper'

module Waggle
  class SideNav < Draper::Decorator
    attr_reader :active_tab

    def display(active_tab)
      @active_tab = active_tab
      h.render(partial: partial, locals: { side_nav: self }) #object: self, as: :side_nav
    end

    def test_active_tab?(selected_tab)
      (active_tab == selected_tab)
    end

    private

      def partial
        if object.class.to_s == 'Collection'
          'shared/collection_side_nav'
        elsif object.class.to_s == 'Exhibit'
          'shared/exhibit_side_nav'
        else
          raise "Invalid object passed to side nav."
        end
      end

  end
end
