class BatchFileToReceiptJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    BatchFile.last.file.attachment.open do |b|
      CSV.foreach(b) do |c|
        r = Receipt.new(
          no: c[0],
          customer_name: c[1],
          price: c[2].to_i,
          issuer_name: c[3],
          issuer_address: c[4],
          proviso: c[5],
          billing_date: Time.zone.parse(c[6]),
          uuid: c[7].present? ? c[7] : SecureRandom.uuid
        )
        r.save
      end
    end
  end
end
