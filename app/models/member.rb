
class Member

 attr_reader :name, :power, :bio

 members = []

 def initialize(args)
   @name = args[:name]
   @power = args[:power]
   @bio = args[:bio]
   COURSES << self
 end

 def self.all
   members
 end



end
