# frozen_string_literal: true

require "simpleidn"
require "json"

require "root_domain/version"

module RootDomain
  def self.call(input)
    input = SimpleIDN.to_ascii(input)

    find(slds, input) || find(tlds, input)
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

  def self.slds
    @slds ||= JSON.parse(File.read("#{__dir__}/../data/slds.json"))
  end

  def self.tlds
    @tlds ||= JSON.parse(File.read("#{__dir__}/../data/tlds.json"))
  end
end
