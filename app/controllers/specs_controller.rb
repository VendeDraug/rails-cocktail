class SpecsController < ApplicationController
  before_action :set_spec, only: [:show, :edit, :update, :destroy]

  def index
    @articles = if params[:tag]
      Article.tagged_with(params[:tag])
    else
      @specs = Spec.all
    end
  end

  def show
  end

  def new
    @spec = Spec.new
  end

  def create
    if @spec.save
      redirect_to specs_path, notice: 'Spec created!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @spec.update(spec_params)
      edirect_to spec_path(@spec), notice: 'Spec updated!'
    else
      render :edit
    end
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
    params.require(:spec).permit(:title, :description)
  end
end
