class ContactController < ApplicationController
  def index
    @contact = Contact.take
  end
end
