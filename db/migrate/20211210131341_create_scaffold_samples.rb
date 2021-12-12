class CreateScaffoldSamples < ActiveRecord::Migration[6.1]
  def change
    create_table :scaffold_samples do |t|
      t.string :some_text

      t.timestamps
    end
  end
end
