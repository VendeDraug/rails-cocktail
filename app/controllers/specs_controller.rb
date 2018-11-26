class SpecsController < ApplicationController

  def index
    @specs = Spec.all
  end

end
