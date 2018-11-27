class SpecsController < ApplicationController
  before_action :set_spec, only: [:show, :edit, :update, :destroy]

  def index
    @specs = Spec.all
  end

  def show
  end

  def new
    @spec = Spec.new
  end

  def create
    @spec = Spec.new(spec_params)
    if @spec.save
      redirect_to specs_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @spec.update(spec_params)
    redirect_to spec_path(@spec)
  end

  def destroy
    @spec.destroy
    redirect_to specs_path
  end

  private
  def set_spec
    @spec = Spec.find(params[:id])
  end

  def spec_params
    params.require(:spec).permit(:title, :description, :tags)
  end
end
