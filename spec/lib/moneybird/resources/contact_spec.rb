require "spec_helper"

describe Moneybird::Resource::Contact do
  let(:client) { Moneybird::Client.new('bearer token') }
  let(:contact) { Moneybird::Resource::Contact.build(hash_response(:contact).merge('custom_fields' => [hash_response(:custom_field)])) }

  it "has events" do
    contact.events.first.must_be_instance_of Moneybird::Resource::Generic::Event
  end

  it "has custom_fields" do
    contact.custom_fields.first.must_be_instance_of Moneybird::Resource::CustomField
  end
end
