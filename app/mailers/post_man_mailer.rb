class PostManMailer < ApplicationMailer
    def alert_admin(donation)
        @donar_name= donation.donar_name
        @amount= donation.amount
      mail(to: "saisahana946@gmail.com",:subject=>"Alert:A new book!")
    end
end
