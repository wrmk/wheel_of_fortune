class CreateMainScenes < ActiveRecord::Migration[6.0]
  def change
    create_table :main_scenes do |t|
      t.string :word

      t.timestamps
    end
  end
end
