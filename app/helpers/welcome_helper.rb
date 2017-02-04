module WelcomeHelper

  def js_page_refresh
    respond_to do |format|
    format.js { render inline: "location.reload();" }
    end
  end
end
