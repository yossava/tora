class CreateKonfirmasis < ActiveRecord::Migration
  def change
    create_table :konfirmasis do |t|
      t.string :bank_pengirim
      t.string :bank_penerima
      t.string :rekening_pengirim
      t.string :nama_pengirim
      t.integer :nominal
      t.string :tanggal
      t.string :waktu

      t.timestamps null: false
    end
  end
end
