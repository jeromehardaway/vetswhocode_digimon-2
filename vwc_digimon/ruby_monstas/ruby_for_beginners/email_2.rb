class Email
  attr_reader :subject
  
  def initialize(subject, header)
    @subject = subject
    @header = header
  end

  def date
    @header[:date]
  end

  def from
    @header[:from]
  end
end

email = Email.new("Practice Ruby", { :date => "2016-08-29", :from => "Future Self" })

puts "Subject: #{email.subject}"
puts "Date: #{email.date}"
puts "From: #{email.from}"
