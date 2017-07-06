module DefaultPageContent
  extend ActiveSupport::Concern
  
  included do 
    before_filter :set_page_defaults
  end
    
  def set_page_defaults
    @page_titles = "DevCamp Portfolio | My Portfolio"
    @seo_keywords = "Tess Jorgensen Portfolio"
  end
end
