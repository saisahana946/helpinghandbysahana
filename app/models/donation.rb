class Donation < ApplicationRecord
  belongs_to :getter
  validates :donar_name,:need_user,:amount, presence:true
    validates :donar_name,length:{minimum: 3}
    validates :amount,numericality:{only_integer:true}
    validates :getter_id, uniqueness:true
end
