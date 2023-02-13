require_relative './dance_module'
require_relative './meta_dancing_module'
require_relative 'fancy_dance'

class Dancer

#Namespacing Modules - contains nested modules...look at meta_dancing_module.rb

extend FancyDance::ClassMethods
# extend means we are extending a class method from the module
include FancyDance::InstanceMethods


#normal module
    include Dance
  
    attr_accessor :name
  
    def initialize(name)
      @name = name
    end
  end
