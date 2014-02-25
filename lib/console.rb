M = Monologue

# make conveniently accessible
def create_session
  ORMivore::Session.new(M::Repos)
end
