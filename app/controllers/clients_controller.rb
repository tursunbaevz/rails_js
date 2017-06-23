class ClientsController < ApplicationController
  def index
  	@clients = Client.all
  	@client = Client.new
  end


  def test
  	debug
  end

  def create
  	@client = Client.create!(client_params)
  	@client.save
  	redirect_to root_path
  end

  def destroy
  	@client = Client.find(params[:id])
  	@client.destroy
  	redirect_to root_url
  end

  def client_params
 	 params.require(:client).permit(:name, :age, :product_id)
  end
end
