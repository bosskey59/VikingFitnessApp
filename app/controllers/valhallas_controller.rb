class ValhallasController < ApplicationController
  before_action :current_valhalla, only: [:show, :edit, :update, :destroy]

  def index
    @client = GooglePlaces::Client.new('AIzaSyB2xEt9jySPpCNFawQAy7kDg3s_7JrM1NU')
    @valhallas = Valhalla.all
    @temps = @client.spots(-33.8670522, 151.1957362, :types => 'restaurant')
  end


  def show

  end

  def new
    @valhalla = Valhalla.new
  end

  def create
    @valhalla = Valhalla.create(valhalla_params)

    redirect_to @valhalla
  end

  def edit

  end

  def update
    @valhalla.update(valhalla_params)

    redirect_to @valhalla
  end

  def destroy
    @valhalla.destroy

    redirect_to valhallas_path
  end

  private

  def valhalla_params
    params.require(:valhalla).permit(:name)
  end


  def current_valhalla
    @valhalla = Valhalla.find(params[:id])
  end

end
