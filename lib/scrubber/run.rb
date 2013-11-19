require 'lib/scrubber/list'

class Run
  def initialize
    @lists = []
  end

  def <<(list)
    lists << list
  end

  def groups(parent_group = RSpec::Core::ExampleGroup)
    lists.map(&:groups).flatten.select {|group| group.superclass == parent_group}
  end

  def examples_for(group)
    lists.map(&:examples).flatten.select {|example| example.example_group == group}
  end

  private

  attr_reader :lists
end


