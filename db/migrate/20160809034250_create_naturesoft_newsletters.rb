class CreateNaturesoftNewsletters < ActiveRecord::Migration[5.0]
  def change
    create_table :naturesoft_newsletters_newsletters do |t|
      t.string :email

      t.timestamps
    end
  end
end
