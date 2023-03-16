# Be sure to restart your server when you modify this file.

if Rails.env=='production'

Rails.application.config.session_store :cookie_store, :key => '_authenthication_app', domain: 'masiror.heroku.com'

else
    Rails.application.config.session_store :cookie_store, :key => '_authenthication_app'
end



# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# Rails.application.config.session_store :active_record_store