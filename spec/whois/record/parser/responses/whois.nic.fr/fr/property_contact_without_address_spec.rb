# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.fr/fr/property_contact_without_address.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.fr.rb'

describe Whois::Record::Parser::WhoisNicFr, "property_contact_without_address.expected" do

  before(:each) do
    file = fixture("responses", "whois.nic.fr/fr/property_contact_without_address.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should have(1).items
      @parser.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      @parser.registrant_contacts[0].id.should            == "ANO00-FRNIC"
      @parser.registrant_contacts[0].name.should          == "Ano Nymous"
      @parser.registrant_contacts[0].organization.should  == nil
      @parser.registrant_contacts[0].address.should       == nil
      @parser.registrant_contacts[0].city.should          == nil
      @parser.registrant_contacts[0].zip.should           == nil
      @parser.registrant_contacts[0].state.should         == nil
      @parser.registrant_contacts[0].country.should       == nil
      @parser.registrant_contacts[0].country_code.should  == nil
      @parser.registrant_contacts[0].phone.should         == nil
      @parser.registrant_contacts[0].fax.should           == nil
      @parser.registrant_contacts[0].email.should         == nil
      @parser.registrant_contacts[0].updated_on.should    == Time.parse("2007-09-03 00:00:00 UTC")
    end
  end
end