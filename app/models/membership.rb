require 'fnz_client/service_configuration'
class Membership < LogicalModel
  include FnzClient::ServiceConfiguration  
  set_api_key "app_key", Fnz::API_KEY

  attribute :payment_type                 # The payment type name
  attribute :begins_on                    # The starting date
  attribute :ends_on                      # The finishing date
  attribute :value                        # The value

  has_many :installments, class: 'Installment'

  def self.find_current_membership(account, contact_id)
    self.set_resource_path "/api/v0/businesses/#{account}/contacts/#{contact_id}/current_membership"
    return self.find("")
  end
end