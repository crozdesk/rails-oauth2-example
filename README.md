# rails-oauth2-example

Very simple Rails integration example of Crozdesk OAuth.

## Running

Edit `config/secrets.yml` and update `omniauth_provider_key` and `omniauth_provider_secret` with the keys for your Crozdesk app.

Make sure to change your callback url in your Crozdesk app's settings to
```
http://localhost:3000/users/auth/crozdesk/callback
```
before you continue.

You can get the consumer keys and change the callback url here: https://crozdesk.com/users/developers

To start the app run the following:
```bash
bundle install
rake db:migrate
rails server
```

Now you should be ready to go, visit http://localhost:3000 and click the login button.
