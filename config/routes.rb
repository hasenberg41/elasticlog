# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    %w[nikita vlad veronika artyom artem rustem].each do |abobus|
      get "/#{abobus}", to: "abobuses##{abobus}"
    end
  end
end
