module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_filter :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Portfolio2017 | My Portfolio Website"
    @seo_keywords = "Rick Richards portfolio"
  end

end