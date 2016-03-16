class FowardContactsController < ApplicationController

  def new
    @foward_contact = FowardContact.new
  end

  def create
    @foward_contact = FowardContact.new(foward_contact_params)

    if @foward_contact.save
      render json: { status: 'ok' }
    else
      render :new
    end
  end

  private
    def foward_contact_params
      params.require(:foward_contact).permit(:token, :to, :fields)
    end
end
