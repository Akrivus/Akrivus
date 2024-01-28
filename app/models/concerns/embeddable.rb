module Embeddable
  extend ActiveSupport::Concern

  included do
    raise "Class must have 'embedding' and 'content' attribute to be embeddable." unless self.attribute_names.intersect? %w[embedding content]
    require 'net/http'

    has_neighbors :embedding
    before_save :fetch_embedding, if: :content_changed?

    def fetch_embedding
      self.embedding = self.class.embed(self.content)
    end
  end

  class_methods do
    def search_neighbors(prompt)
      embedding = self.embed(prompt)
      self.nearest_neighbors(:embedding, embedding, distance: 'euclidean').first(5)
    end

    def embed(input)
      res = Net::HTTP.post(
        URI('https://api.openai.com/v1/embeddings'),
        {
          'input' => input,
          'model' => 'text-embedding-3-small',
          'dimensions' => 100
        }.to_json, 
        {
          'Authorization' => "Bearer #{ENV.fetch('OPENAI_API_KEY')}",
          'Content-Type'  => 'application/json'
        })
      json = JSON.parse(res.body)
      data = json['data'].first
      return data['embedding']
    end
  end
end