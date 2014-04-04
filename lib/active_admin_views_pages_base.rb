class ActiveAdmin::Views::Pages::Base < Arbre::HTML::Document
 
  private
 
  # Renders the content for the footer
  def build_footer
    div :id => "footer" do
      para "Copyright &copy; #{Date.today.year.to_s} #{link_to('applyexams.com', 'http://www.applyexams.com')}. Powered by APPLYEXAMS.COM".html_safe
    end
  end
 
end