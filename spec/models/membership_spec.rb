require 'spec_helper'

describe Membership do

  before do
    mock_show({:attributes => {
        "membership" => {
          "value" => "540.0",
          "begins_on" => "2014-03-01",
          "ends_on" => "2014-07-31",
          "payment_type" => "Efectivo",
          "installments" => [
              {
                  "value" => "540.0",
                  "due_on" => "2014-03-31",
                  "status" => "complete"
              },
              {
                  "value" => "540.0",
                  "due_on" => "2014-04-30",
                  "status" => "complete"
              },
              {
                  "value" => "540.0",
                  "due_on" => "2014-05-31",
                  "status" => "complete"
              },
              {
                  "value" => "540.0",
                  "due_on" => "2014-06-30",
                  "status" => "complete"
              }
          ]
        }
      }
    })
  end

  let(:membership){Membership.find_current_membership('account_name','contact_id')}

  describe "#value" do
    it "should be 540" do
      membership.value.should = 540
    end
  end

end