module ApplicationHelper
  
  def widget_rating_component(widget, suppress_cta: false)
    render partial: "widgets/rating",
           locals: { widget: widget, suppress_cta: suppress_cta }
  end
  
  def styled_widget_id(formatted_id) 
    # content_tag(:span,
    # formatted_id,
    # style: "font-family: monospace")
    %{
    <span style="font-family: monospace">
      #{ formatted_id }
    </span>
  }.html_safe
  end

end
