class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :autor
      t.string :conteudo
      t.string :text
      t.references :post, index: true

      t.timestamps
    end
  end
end
