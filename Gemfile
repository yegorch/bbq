source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'rails', '~> 6.1.3', '>= 6.1.3.1'
gem 'devise'
gem 'webpacker', '~> 5.2.1'
gem 'devise-i18n'
gem 'russian'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'listen'
  gem 'sqlite3', '~> 1.4'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

