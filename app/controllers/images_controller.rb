class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def create
    params['image']['link'].each do |obj|
      image = Image.new
      image.link.attach(obj)
      image.save
    end
    redirect_to root_path
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to root_path
  end

end
