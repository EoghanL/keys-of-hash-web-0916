require 'pry-byebug'
class Hash
  def keys_of(*arguments)
    arguments.each_with_object([]) do |arg, results|
      self.select { |key, val| results << key if val == arg }
    end
  end
end
