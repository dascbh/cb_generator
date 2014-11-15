#class Notifier < ActionMailer::Base
#  default from: "from@example.com"
#end

class Notifier < ActionMailer::Base
 
  def support_notification(sender)
    @sender = sender
    mail(:to => "administrator[at]yourdomain.com",
         :from => sender.email,
         :subject => "New #{sender.support_type}")
 end
end
