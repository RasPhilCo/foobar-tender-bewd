class Beverage
  include Mongoid::Document
  field :name, type: String
  field :price, type: Integer
  field :description, type: String
  field :email, type: String
end
