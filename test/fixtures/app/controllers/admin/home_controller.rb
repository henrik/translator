module Admin
  class HomeController < ActionController::Base

    # Sets up view paths so tests will work
    before_filter :fix_view_paths

    def index
      @page_title = t('title')
      render
    end

    protected

    def fix_view_paths
      # Append the view path to get the correct views/partials
      self.append_view_path("#{File.dirname(__FILE__)}/../../views")
    end

  end
end
