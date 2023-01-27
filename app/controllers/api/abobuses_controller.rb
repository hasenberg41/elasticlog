# frozen_string_literal: true

module Api
  class AbobusesController < ApplicationController
    %w[nikita vlad veronika artyom artem rustem].each do |abobus|
      define_method(abobus) { render json: params }
    end
  end
end
