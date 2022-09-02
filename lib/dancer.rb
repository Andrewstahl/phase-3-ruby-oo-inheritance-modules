require_relative './dance_module'
require_relative './fancy_dance'
require_relative './meta_dancing_module'

class Dancer
  extend MetaDancing
  include Dance
  extend FancyDance::InstanceMethods
  include FancyDance::ClassMethods

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end