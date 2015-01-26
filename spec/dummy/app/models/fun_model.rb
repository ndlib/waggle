class FunModel
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations
  include ActionController::PolymorphicRoutes

  def persisted?
    false
  end
end
