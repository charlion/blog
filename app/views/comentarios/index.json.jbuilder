json.array!(@comentarios) do |comentario|
  json.extract! comentario, :id, :autor, :conteudo, :text, :post_id
  json.url comentario_url(comentario, format: :json)
end
