require 'traceur'
require "explore_rb/version"

module ExploreRb

  def self.extended base
    puts "Use the following commands to look around:"
    puts "  classes, objects, get_objects, symbols, gems,"
    puts "  local_variables, draw_this, start_garbage_collection"
    puts "  stop_garbage_collection, load_paths, help"
  end

  def classes
    (Object.constants - [:RUBY_COPYRIGHT, :RUBY_DESCRIPTION, :RUBY_ENGINE, :RUBY_PATCHLEVEL, :RUBY_PLATFORM, :RUBY_RELEASE_DATE, :RUBY_REVISION, :RUBY_VERSION, :CROSS_COMPILING ]).sort
  end

  def objects
    objects = Hash.new {0}
    ObjectSpace.each_object{|obj| objects[obj.class] += 1 }
    objects
  end

  def get_objects klass
    requested_klass = []
    ObjectSpace.each_object{|o| requested_klass << ObjectSpace._id2ref(o.object_id) if o.class == klass}
    requested_klass
  end

  def symbols
    Symbol.all_symbols
  end

  def gems
    gems = {}
    Gem::Specification.each{|s| gems[s.name]= s.gem_dir.gsub(ENV['HOME'], "~") }
    gems
  end

  def draw_this &block
    path = "#{ENV['HOME']}/Desktop"
    Traceur.watch_paths('.+', path, &block)
    puts "File saved in #{path}."
  end

  def start_garbage_collection
    ENV['RUBY_GC_MALLOC_LIMIT']='0'
    GC.stress=true
    GC.start
  end

  def stop_garbage_collection
    GC.stress=false
  end

  def load_paths
    # $: returns a reference.
    # For demo purposes we want a value.
    Array.new $:
  end

end

# add exploreRb methods to the main object
self.extend ExploreRb
