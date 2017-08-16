source 'https://gems.ruby-china.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.1.1'
gem 'mysql2'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.0'
# Use Redis adapter to run Action Cable in production
gem 'redis'
gem 'sidekiq'
gem 'mini_magick'
gem 'case_transform'
gem 'jsonapi-renderer'
gem 'active_model_serializers'
gem 'kaminari'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# GraphQL
gem 'graphql'
gem 'graphql-libgraphqlparser', '~> 0.5.0'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

#Omniauth
gem 'devise_token_auth', '0.1.42'
gem 'devise', '~> 4.3.0'

gem 'omniauth-qq-connect'
gem 'omniauth-weibo-oauth2'

# upload file
gem 'carrierwave-qiniu', '~> 1.1.0'
gem 'carrierwave', '~> 1.0'
gem 'carrierwave-i18n'
gem 'qiniu'

# lock nokogiri
gem 'nokogiri', '1.6.8'

# api doc
gem 'apipie-rails'

# Fix rake task can't run in docker
gem 'listen', '~> 3.0.5'

gem 'activerecord-session_store'

gem 'paper_trail', '7.0.3'

group :development, :test do
  gem 'annotate'
  gem 'awesome_print'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'pry'
  gem 'pry-nav'
  gem 'rspec-rails', '~> 3.6.0'
  gem 'rspec', '~> 3.5'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'stub_env'
end

group :test do
  gem 'fakeredis'
  gem 'timecop'
end

group :development do
  gem 'thin'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'unicorn'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
