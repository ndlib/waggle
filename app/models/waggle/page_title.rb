require 'draper'

module Waggle
  class PageTitle < Draper::Decorator
    attr_accessor :title, :small_title, :link_href, :right_content

    def display()
      yield(self) if block_given?

      h.render partial: 'shared/page_title', locals: { title: title_with_link, small_title: small_title, right_content: right_content }
    end

    private

      def title_with_link
        if link_href.present?
          h.link_to(object, link_href)
        else
          object
        end
      end

  end
end
