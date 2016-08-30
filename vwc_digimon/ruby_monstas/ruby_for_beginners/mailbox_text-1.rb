class Mailbox
  attr_reader :name, :emails

  def initialize(name, emails)
    @name = name
    @emails = emails
  end
end

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

class MailboxTextFormatter
  def initialize(mailbox)
    @mailbox = mailbox
  end

  def format
    lines = [
      separator,
      format_row(["Date", "From", "Subject"]),
      separator,
      rows.collect { |row| format_row(row) },
      separator
    ]
    lines.join("\n")
  end
  
# this draws the lines across the columns -----

  def separator
    "+#{column_widths.map { |width| '-' * (width + 2)}.join("+")}+"
  end
  
#this determines the width of the columns

  def column_widths
    columns.map { |column| column.max_by { |cell| cell.length }.length }
  end
  
# this creates columns

  def columns
    rows.transpose
  end
  
# this creates rows

  def rows
    emails.map { |email| [email.date, email.from, email.subject] }
  end

  def emails
    @mailbox.emails
  end
  
# This formats the design in rows and columns. The other two draws it out

  def format_row(row)
    cells = 0.upto(row.length - 1).map do |index|
      row[index].ljust(column_widths[index])
    end
    "| #{cells.join(" | ")} |"
  end
end

emails = [
  Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
  Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" })
]
mailbox = Mailbox.new("Ruby Study Group", emails)
formatter = MailboxTextFormatter.new(mailbox)

puts formatter.format

# +------------+---------+------------------------+
# | Date       | From    | Subject                |
# +------------+---------+------------------------+
# | 2014-12-01 | Ferdous | Homework this week     |
# | 2014-12-01 | Dajana  | Keep on coding! :)     |
# | 2014-12-02 | Ariane  | Re: Homework this week |
# +------------+---------+------------------------+
#
