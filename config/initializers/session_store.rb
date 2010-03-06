# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_feed_scrape_session',
  :secret      => '071e7175a9442c42a951db45e3043794979c5664421946f69990d2351a5701dfbc68f9bfb181e3f9159e6c1cd10df6e14dd64b79bdc98d25e3558a6d72bf8b09'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
