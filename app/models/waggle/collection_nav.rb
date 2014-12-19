require 'draper'

module Waggle
  class CollectionNav < Draper::Decorator

    def display
      h.render partial: 'shared/collection_nav', locals: { controller: object, nav: self }
    end

    def users_path
      "/admin/users"
    end

    def current_user_display_name
      if object.respond_to?(:current_user)
        object.current_user.display_name
      else
        "no user"
      end
    end

  end
end
