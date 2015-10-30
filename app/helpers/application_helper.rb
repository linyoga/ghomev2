module ApplicationHelper
  
  def notice_message
    alert_types = { notice: :success, alert: :danger}

    close_button_options ={ class: "close", "data-dismiss" => "alert", "aria-hidden" => true}
    close_button = content_tag(:button, "x", close_button_options)

    alerts = flash.map do |type, message|
      alert_content = close_button + message

      alert_type =  alert_types[type.to_sym] || type
      alert_class = "alert alert-#{alert_type} alert-dismissable"

      content_tag(:div, alert_content, class: alert_class)
    end

    alerts.join("\n").html_safe
  end

  def markdown(content)
    markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML, {
      autolink:            true,
      space_after_headers: true,
      fenced_code_blocks:  true,
      superscript:         true,
      underline:           true,
      highlight:           true,
      footnotes:           true,
      quote:               true,
      tables:              true
    })
    markdown.render(content).html_safe
  end

end
