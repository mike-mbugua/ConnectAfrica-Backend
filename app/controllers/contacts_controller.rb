class ContactsController < ApplicationController
    def index
        contact=contact.all
        render json:contact ,status: :ok
    end

    def create
        contact=Contact.create(contact_params)
        render json: contact, status: :ok
    end

    def destroy
        contact=contact.find()
        contact.destroy
    end

    private
    def contact_params
        params.permit(:email,:message)
    end
end
