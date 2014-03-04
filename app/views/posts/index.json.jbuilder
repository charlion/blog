json.array!(@posts) do |post|
  json.extract! post, :id, :titulo, :conteudo, :text
  json.url post_url(post, format: :json)
end
