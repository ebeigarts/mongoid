# encoding: utf-8
module Mongoid #:nodoc:
  module Matchers #:nodoc:
    class Nin < Default
      # Return true if the attribute is not in the value list.
      def matches?(value)
        Array.wrap(@attribute).none? { |e| value.values.first.include?(e) }
      end
    end
  end
end
