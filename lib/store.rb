# frozen_string_literal: true

# class ApparelValidator < ActiveModel::Validator
#   def validate(record)
#     if(!(record.mens_apparel || record.womens_apparel))
#       record.errors.add(:mens_apparel,'Must carry men\'s or womens\'s apparel')
#       record.errors.add(:womens_apparel,'Must carry men\'s or womens\'s apparel')
#     end
#   end
# end

class Store < ActiveRecord::Base
  include ActiveModel::Validations
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {
    only_integer: true,
    greater_than: 0
  }
  validate :carries_mens_or_womens_apparel

  private

  def carries_mens_or_womens_apparel
    if !:mens_apparel.present? && !:womens_apparel.present?
      errors.add(:name, 'Must carry mens\' or womens\'s apparel')
      false
    end
  end
end
