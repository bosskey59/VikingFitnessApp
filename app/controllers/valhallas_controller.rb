class ValhallasController < ApplicationController
  before_action :current_valhalla, only: [:show, :edit, :update, :destroy]

  def index
    @client = GooglePlaces::Client.new(ENV['my_api_key'])
    @valhallas = Valhalla.all
    @temps = @client.spots_by_query("#{@logged_in_viking.residence}", :types => ['gym', 'park'], detail: true)
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
