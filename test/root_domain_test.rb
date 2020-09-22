# frozen_string_literal: true

require "test_helper"

class RootDomainTest < Minitest::Test
  {
    "example.com" => "example.com",
    "www.example.com" => "example.com",
    "www.example.com.br" => "example.com.br",
    "🤯.com" => "xn--oq9h.com",
    "subdomain.apps.🤯.com" => "xn--oq9h.com",
    "funk.9guacu.br" => "funk.9guacu.br",
    "www.funk.9guacu.br" => "funk.9guacu.br",
    "omakase.yanagawa.fukuoka.jp" => "omakase.yanagawa.fukuoka.jp",
    "www.omakase.yanagawa.fukuoka.jp" => "omakase.yanagawa.fukuoka.jp"
  }.each do |input, output|
    test "expect #{input} to be #{output}" do
      assert_equal output, RootDomain.call(input)
    end
  end
end
