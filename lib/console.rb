M = Monologue

# make more conveniently accessible
module Repos
  M::Repos.keys.each do |entity_class|
    name = entity_class.name.underscore.split('/').second.to_sym
    self.class.class_eval do
      define_method(name) {
        M::Repos[entity_class]
      }
    end
  end
end
