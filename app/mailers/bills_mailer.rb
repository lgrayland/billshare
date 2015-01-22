class BillsMailer < ActionMailer::Base

  default from: "info@billshare.com",
  template_path: 'mailers/bills'

    def send_group_bill(bill, group, user)
      @bill = bill
      @group = group
      @user = user
      mail(to: @user.email, subject: "Your subject")
    end
end
