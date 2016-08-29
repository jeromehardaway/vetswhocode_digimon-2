class Email
  attr_reader :subject, :date, :from

  def initialize(subject, date, from)
    @subject = subject
    @date = date
    @from = from
  end
end

email = Email.new("Practice Ruby", "2016-08-29", "Future Self")

puts "Subject: #{email.subject}"
puts "Date: #{email.date}"
puts "From: #{email.from}"
