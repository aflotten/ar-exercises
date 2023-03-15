class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, 
    numericality: {
      only_integer: true,
      minimum: 0
    }
  validate :must_carry_men_or_women

  def must_carry_men_or_women
    if mens_apparel == false && womens_apparel == false
      errors.add(:womens_apparel, "The store must carry atleast one of mens or womens apparel")
    end 
  end

end
