json.array!(@konfirmasis) do |konfirmasi|
  json.extract! konfirmasi, :id, :bank_pengirim, :bank_penerima, :rekening_pengirim, :nama_pengirim, :nominal, :tanggal, :waktu
  json.url konfirmasi_url(konfirmasi, format: :json)
end
