class Getter < ApplicationRecord
    mount_uploader :image, AvatarUploader
    has_one :donation
    validates :firstname,:lastname,:contact,:location,:need, presence:true
    validates :contact, uniqueness:true
    validates :firstname,length:{minimum: 3}
    validates :contact,numericality:{only_integer:true}
end
