module ApplicationHelper

  def nav_link(link_text, link_path, html_options={})
    class_name = if current_page?(link_path) then 'active' else '' end

    content_tag(:li, class: class_name) do
      link_to link_text, link_path, html_options
    end
  end

end
