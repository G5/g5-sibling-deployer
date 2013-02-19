# These helper methods can be called in your template to set variables to be used in the layout
# This module should be included in all views globally,
# to do so you may need to add this line to your ApplicationController
#   helper :layout
module LayoutHelper

  def app_display_name
    ENV["APP_DISPLAY_NAME"]
  end

  def title(page_title, show_title = true)
    content_for(:title) { h(page_title.to_s) }
    @show_title = show_title
  end

  def show_title?
    @show_title
  end

 def header_right(page_header_right, show_header_right = true)
    content_for(:header_right) { h(page_header_right.to_s) }
    @show_header_right = show_header_right
  end

  def show_header_right?
    @show_header_right
  end

  def stylesheet(*args)
    content_for(:head) { stylesheet_link_tag(*args) }
  end

  def javascript(*args)
    content_for(:head) { javascript_include_tag(*args) }
  end

  def flash_div(level)
    if flash[level].present?
      bootstrap_level = (level.to_s == "notice" ? "info" : level)
      content_tag "div", class: "alert alert-#{bootstrap_level}" do
        content_tag "p", flash[level]
      end
    end
  end

end
