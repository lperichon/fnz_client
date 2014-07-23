require 'fnz_client/service_configuration'
class Installment < LogicalModel
  include FnzClient::ServiceConfiguration

  belongs_to :membership

  attribute :due_on                       # The due date
  attribute :value                        # The value
  attribute :status                       # The status    
end