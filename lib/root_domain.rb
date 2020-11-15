# frozen_string_literal: true

require "email_data"
require "simpleidn"
require "json"

require "root_domain/version"

module RootDomain
  def self.call(input)
    input = SimpleIDN.to_ascii(input)

    find(EmailData.slds, input) || find(EmailData.tlds, input)
  end

  def self.find(source, input)
    components = input.split(".")

    0.upto(components.size - 1) do |index|
      if source.include?(components[index..-1].join("."))
        return components[(index - 1)..-1].join(".")
      end
    end

    nil
  end
end
