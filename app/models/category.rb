class Category < ActiveRecord::Base
  validates_presence_of :name

  has_many :menu_items, -> { order(:weight) }
end
