class Coffeeshop < ActiveRecord::Base
  validates :name, :address, presence: true
  validates :name, uniqueness: true

  scope :love, -> { where(love: true) }

  def cherish
    self.update_attributes(love: true)
    save
  end

  def hate
    self.update_attributes(love: false)
    save
  end
end
