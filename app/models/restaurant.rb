class Restaurant < ApplicationRecord
  before_save :capitalize_name

  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"],
    message: 'Not a valid category' }

  def capitalize_name
    self.name = self.name.split.collect(&:capitalize).join(' ') if self.name && !self.name.blank?
  end
end
# A restaurant must have a name, an address and a category.
# A restaurant’s category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
# When a restaurant is destroyed, all of its reviews must be destroyed as well.
