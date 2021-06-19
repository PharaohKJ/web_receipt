class BatchFileToReceiptJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    BatchFile.last.file.attachment.open do |b|
      CSV.foreach(b) do |c|
        r = Receipt.new(
          customer_name: c[1],
          no: Time.now.to_i,
          price: Time.now.to_i,
          issuer_name: c[2],
          issuer_address: c[3],
          proviso: c[1],
          billing_date: Time.zone.parse(c[0]),
          uuid: c[4].present? ? c[4] : SecureRandom.uuid
        )
        r.save
      end
    end
  end
end
