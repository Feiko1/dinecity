ActionMailer::Base.smtp_settings = {
  address: 'smtp.postmarkapp.com',
  port: '25',
  domain: 'heroku.com',
  user_name: ENV['eb933cbd-11ed-47c5-8cd5-0a4764a773b3'],
  password: ENV['eb933cbd-11ed-47c5-8cd5-0a4764a773b3'], #CHECK this
  authentication: :cram_md5,
  enable_starttls_auto: true
}
