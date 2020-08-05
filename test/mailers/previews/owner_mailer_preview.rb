# Preview all emails at http://localhost:3000/rails/mailers/owner_mailer
class OwnerMailerPreview < ActionMailer::Preview
    def welcome_email
        owner = Owner.first
        OwnerMailer.welcome_email(owner)
    end

    def update_email
        owner = Owner.first
        OwnerMailer.update_email(owner)
    end 
end
