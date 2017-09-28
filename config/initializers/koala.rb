# In Rails, you could put this in config/initializers/koala.rb
Koala.configure do |config|
  config.access_token = EAACEdEose0cBAIVkP7HFhtGZAhlg1JUTQ4EXj2gQtiMdqrxNZBr7wuZBlfnZCAL3v13GkOGs36bzHStE9GqmCSEz2QBr6Lue6v3J97MVmQ0EXuTGatiQ5bDFbF8SvODyjiRYYLbnFlRoTzKEOnZAwZBQ2ZC3WTE8RWuhGZCyBE11gNtxntb57OTn1CZAXzWIVdgGexjZCdHsi7mgZDZD
  config.app_access_token = MY_APP_ACCESS_TOKEN
  config.app_id = MY_APP_ID
  config.app_secret = MY_APP_SECRET
  # See Koala::Configuration for more options, including details on how to send requests through
  # your own proxy servers.
end
