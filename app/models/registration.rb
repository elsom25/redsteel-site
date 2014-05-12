class Registration
  include ActiveModel::Model
  attr_accessor :email, :first_name, :last_name

  PRIMARY_LIST_KEY = '9e843427cc'.freeze

  validates :email,      presence: true, email: true
  validates :first_name, presence: true
  validates :last_name,  presence: true

  def initialize(attributes={})
    super
    @gibbon = Gibbon::API.new
  end

  def subscribe
    return false unless self.valid?

    mailchimp_hash = {
                id: PRIMARY_LIST_KEY,
             email: { email: @email },
        merge_vars: { FNAME: @first_name, LNAME: @last_name },
      double_optin: false
    }

    @gibbon.lists.subscribe mailchimp_hash
  end
end
