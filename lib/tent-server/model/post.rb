module TentServer
  module Model
    class Post
      include DataMapper::Resource

      property :id, Serial
      property :entity, URI
      property :scope, Enum[:public, :limited, :direct], :default => :direct
      property :type, URI
      property :licenses, Array
      property :groups, Array
      property :recipients, Array
      property :content, Json
      property :published_at, DateTime
      property :received_at, DateTime
    end
  end
end