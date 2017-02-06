class Welcome < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Contact Laurie",
      :to => mailer_env,
      :from => %("#{name}" <#{email}>)
    }
  end

  private
    def mailer_env
      email = "***REMOVED***"
      if Rails.env.production?
        email
      else
        email = "***REMOVED***"
      end
    end
end
