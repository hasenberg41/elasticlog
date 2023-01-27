# frozen_string_literal: true

namespace :simulate do
  task traffic: :environment do
    require 'open-uri'
    routes = Rails.application.routes.routes.map do |route|
      path = route.path.spec.to_s
      path.split('(').first if path =~ /api/
    end.compact
    # rubocop:disable Security/Open
    loop do
      url = "http://localhost:3000#{routes.sample}"
      puts url
      open(url).read
    end
    # rubocop:enable Security/Open
  end
end
