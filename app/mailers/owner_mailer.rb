class OwnerMailer < ApplicationMailer
    def welcome_email(owner)
        @owner = owner
        @url = "http://localhost:3000/owners"

        mail to: @owner.email, subject: "welcome to odin-cats #{@owner.name}"
    end

    def update_email(owner)
        @owner = owner
        @url = "http://localhost:3000/owners"

        mail to: @owner.email, subject: "an update on your cats"
    end
end
