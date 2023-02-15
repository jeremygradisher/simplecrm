# SimpleCRM<br>
## Customer Relationship Management for Projects

Saves projects, statuses, contacts, descriptions, many types of docs such
as proposals, contracts, invoices. You can add whatever services you would like.
This works very well for team meetings. User auth with Devise. Heroku for the server,
AWS S3 bucket for doc and image storage.

---
# If cloning this realize a couple of things:

-it uses AWS for file storage - just needs an S3 bucket and credentials<br>
$ heroku config:set S3_ACCESS_KEY=xxxxxxxxxxxxxxxxxx<br>
$ heroku config:set S3_SECRET_KEY=xxxxxxxxxxxxxxxxxx<br>
$ heroku config:set S3_BUCKET=xxxxxxxxxxxxxxxxxx

###Sendgrid
-can be changed in app/models/user.rb - eliminate :confirmable and there is no need for sendgrid.

-it's using sendgrid for sign-up email confirmations (.baschrc)<br>
export SENDGRID_USERNAME=xxxxxxxxxx<br>
export SENDGRID_PASSWORD=xxxxxxxxxx

-send grid port (config/environment.rb) :port => '587' for heroku sign-ups :port => '2587' for Cloud9 sign-ups

-config/environments/development.rb and production has something that needs to be addressed:

development:<br>
config.action_mailer.default_url_options = { :host => 'hxxp://asdf-associate-tracker-jxxxxxxxxxxxer.c9users.io'}

production:<br>
config.action_mailer.default_url_options = { :host => 'asdf-associate-tracker.herokuapp.com', :protocol => 'https'}
  
-config/initializers/devise.rb - where the email notifications are coming from:<br>
config.mailer_sender = 'no-reply@youremailg.com'



