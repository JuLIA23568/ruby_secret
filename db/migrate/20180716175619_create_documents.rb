class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.references :company, foreign_key: true
      t.string :name
      t.text :content


      #Ensure that document names are unique within companies
      t.index [:company_id, :name], unique: true
      t.timestamps
    end
  end
end
