module ApplicationHelper
  def custom_fonts
    if @page
      @page.fonts.map do |font|
        stylesheet_link_tag font, type: 'text/css', rel: 'stylesheet'
      end.join('/br').html_safe
    end
  end
end
