alias be='bundle exec'
alias brake='bundle exec rake'
alias server='ruby -run -ehttpd'
alias spec='SKIP_EMBER=true SELENIUM=true bundle exec rspec'
alias rspec='SKIP_EMBER=true SELENIUM=true bundle exec rspec'
alias spec_under_development='SKIP_EMBER=true SELENIUM=true bundle exec rspec `git diff develop --name-only spec/|grep .rb$|grep -v /factories/|grep -v /fixtures/|grep -v /vcr_cassettes/|grep -v rails_helper.rb|grep -v spec_helper.rb`'
