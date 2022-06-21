class CreateKaigos < ActiveRecord::Migration[6.0]
  def change
    create_table :kaigos do |t|

      t.date :date
      t.integer :kt_id
      t.integer :bp1
      t.integer :bp2
      t.integer :pulse
      t.integer :breakfast_amount_id
      t.integer :lunch_amount_id
      t.integer :supper_amount_id
      t.integer :bath_id
      t.integer :sleeping_id
      t.integer :urinary_id
      t.integer :defecation_id
      t.text :recode

      t.timestamps
    end
  end
end
