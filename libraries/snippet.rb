require 'chef/provider/template'
require 'chef/provider/directory'
require 'chef/resource/template'

class Chef
  class Provider
    class TemplateSnippet < Template
      def load_current_resource
      end

      def action_create
      end

      def action_create_if_missing
      end

      def action_delete
      end
    end
  end

  class Resource
    class TemplateSnippet < Template

      def target_dir_from_path
        ::File.dirname(path)
      end

      def glob(glob=nil)
        set_or_return(
                      :glob,
                      glob,
                      :kind_of => [ String ]
                      )
      end

      def target_file(target_file=nil)
        set_or_return(
                      :target_file,
                      target_file,
                      :kind_of => [ String ]
                      )
      end

    end
  end
end

if $0 == __FILE__
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

  describe Chef::Provider::TemplateSnippet do
    before do
      @provider = Chef::Provider::TemplateSnippet.new
    end

    it "should have tests"

  end


  describe Chef::Resource::TemplateSnippet do
    before do
      @resource = Chef::Resource::TemplateSnippet.new
    end

    it "should have tests"

  end

end
