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
  
  def foward
    @form = FowardContact.find_by_token(params.require(:token))
    if @form
      render text: @form.token
    else
      render json: { status: 'error', message: 'Invalid token' }
    end
  end

  private
    def foward_contact_params
      params.require(:foward_contact).permit(:to, :fields)
    end
end
