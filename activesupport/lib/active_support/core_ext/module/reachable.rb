require 'active_support/core_ext/module/is_null'
require 'active_support/core_ext/string/inflections'

class Module
  def reachable? #:nodoc:
    !anonymous? && name.safe_constantize.equal?(self)
  end
end
