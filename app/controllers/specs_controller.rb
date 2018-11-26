class SpecsController < ApplicationController
  before_action :set_spec, only: [:show, :edit, :update, :destroy]

  def index
    @specs = Spec.all
  end

  def show
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy
    @spec.destroy
  end

  private
  def set_spec
    @spec = Spec.find(params[:id])
  end
end
