class ProfileController < ApplicationController
  before_action :authenticate_model!

  def show
    @model = current_model
  end
end
