class Registration
  include ActiveModel::Model
  attr_accessor :email, :first_name, :last_name

  validates :email,      presence: true, format: /@/
  validates :first_name, presence: true
  validates :last_name,  presence: true

  def initialize(attributes={})
    super

    @email = email.try(:downcase)
    @first_name = first_name.try(:titleize)
    @last_name = last_name.try(:titleize)

    @gibbon = Gibbon::API.new
  end

  def subscribe!
    return unless self.valid?

    mailchimp_hash = {
                id: Rails.application.secrets.mailchimp_list_key,
             email: { email: @email },
        merge_vars: { FNAME: @first_name, LNAME: @last_name },
      double_optin: false
    }

    @gibbon.lists.subscribe mailchimp_hash
  end
end
