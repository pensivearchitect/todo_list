# override the route params because assert_routing format expects a string
# but this class by default coerces it into a key without a variant
module Shoulda
  module Matchers
    module ActionController
      class RouteParams
        def symbolize_or_stringify(_key, value)
          stringify(value)
        end
      end
    end
  end
end
