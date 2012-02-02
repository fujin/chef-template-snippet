require "rubygems" unless RUBY_VERSION =~ /1.9/
require "bundler"
begin
  Bundler.setup(:test)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require "rspec/autorun"
Dir[File.join(File.dirname(__FILE__), "..", "libraries", "*.rb")].sort.each { |lib| require lib }
