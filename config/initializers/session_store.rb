if Rails.env === 'production' 
  Rails.application.config.session_store :cookie_store, key: '_tally-counter', domain: 'http://localhost:6000'
else
  Rails.application.config.session_store :cookie_store, key: '_tally-counter' 
end