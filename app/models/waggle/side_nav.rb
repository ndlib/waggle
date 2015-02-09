require 'draper'

module Waggle
  class SideNav < Draper::Decorator

    def display(active_tab)
      h.render partial: partial, locals: { side_nav: self, active_tab: active_tab }
    end

    def test_active_tab?(current_tab, selected_tab)
      (current_tab == selected_tab)
    end

    private

      def partial
        if object.class.to_s == 'Collection'
          'shared/collection_nav'
        elsif object.class.to_s == 'Exhibit'
          'shared/exhibit_nav'
        else
          raise "Invalid object passed to side nav."
        end
      end

  end
end
