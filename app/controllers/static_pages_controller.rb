class StaticPagesController < ApplicationController
  def home
  end

  def new
  end

  def help
    @feature_requests = FeatureRequest.all
    @feature_request = FeatureRequest.new
  end
end
