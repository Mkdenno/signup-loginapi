# config/initializers/cors.rb

Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://localhost:3000'
      resource '*', headers: :any, methods: [:get, :post, :patch, :put,:delete, :options, :head],
      credentials: true
    end
    
    allow do
        origins 'http://masiror.heroku.com'
        resource '*', headers: :any, methods: [:get, :post, :patch, :put,:delete, :options, :head],
        credentials: true
      end
  end