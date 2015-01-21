class BillsMailer < ActionMailer::Base

  default from: "info@billshare.com",
  template_path: 'mailers/bills'

  def bill_created(bill)

    @bill = bill

    mail to: 'lgrayland@gmail.com',
    subject: 'HiYa Luke  bill created!!! '
  end
end
