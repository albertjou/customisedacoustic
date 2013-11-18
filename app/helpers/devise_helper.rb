module DeviseHelper
  def devise_error_messages!
    return "" if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    sentence = I18n.t("errors.messages.not_saved",
                      :count => resource.errors.count,
                      :resource => resource.class.model_name.human.downcase)

    html = <<-HTML
    <div class="row">
      <div class="small-11 large-7 columns small-centered">
        <div id="error_explanation">
          <div class="alert-panel" data-alert>
            <div class="alert-panel-title">
              #{sentence}
            </div>
            <div class="alert-panel-message">
              <ul>#{messages}</ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    HTML

    html.html_safe
  end
end