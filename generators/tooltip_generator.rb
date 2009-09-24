require File.expand_path(File.dirname(__FILE__) + "/lib/insert_commands.rb")
class TooltipGenerator < Rails::Generator::Base
  def manifest  
    record do |m|
      m.file "tooltip.css", "public/stylesheets/tooltip.css"
      m.file "tooltip.sass", "public/stylesheets/sass/tooltip.sass"
      m.insert_into "app/controllers/application_controller.rb", "helper :tooltip"
      m.insert_into "app/layouts/application.html.haml", "= yield :javascript"
      m.readme "INSTRUCTIONS"
    end
  end
end
