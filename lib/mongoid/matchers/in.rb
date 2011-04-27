# encoding: utf-8
module Mongoid #:nodoc:
  module Matchers #:nodoc:
    class In < Default
      # Return true if the attribute is in the values.
      def matches?(value)
        Array.wrap(@attribute).any? { |e| value.values.first.include?(e) }
      end
    end
  end
end
