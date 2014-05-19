class Registration
  include ActiveModel::Model

  attr_reader :email, :first_name, :last_name
  def email=(val);      @email = val.try(:downcase);      end
  def first_name=(val); @first_name = val.try(:titleize); end
  def last_name=(val);  @last_name = val.try(:titleize);  end

  validates :email,      presence: true, format: /@/
  validates :first_name, presence: true
  validates :last_name,  presence: true

  def initialize(attributes={})
    super
    @gibbon = Gibbon::API.new
  end

  def subscribe
    return unless self.valid?

    mailchimp_hash = {
                id: Rails.application.secrets.mailchimp_list_key,
             email: { email: @email },
        merge_vars: { FNAME: @first_name, LNAME: @last_name },
      double_optin: false
    }

    @gibbon.lists.subscribe(mailchimp_hash)
    true
  rescue Gibbon::MailChimpError => e
    @errors.add(:base, "Error #{e.code}: #{e.message}")
    false
  end

  def error_message
    @errors.full_messages.join(', ')
  end

  def notice
    "#{@first_name}, we've signed up #{@email} successfully! Thanks!"
  end
end
