class Application
  attr_accessor :environment

  def initialize
    @environment = :development
  end

  def connect_to_database
    puts "Connecting to #{@environment} database..."
  end

  def handle_request
    puts "Handling #{@environment} request..."
  end

  def write_to_log
    puts "Writing to #{@environment} log file..."
  end

  def in_production
    original_environment = @environment
    @environment = :production
    yield
  rescue Exception => exception
    puts exception.message
    ensure
      @environment = original_environment
      puts "Reset environment to #{@environment} "
  end
end

app = Application.new

# define a method named in_production in the Application class that takes a block and runs it in the context of the production environment. Remember to switch back to the original environment after the block runs and print out the environment at the end so you see it was reset to the original environment. (Don't worry about exceptions just yet. We'll handle those in a separate step

# The goal is to be able to call the in_production method with a block like so:
app.in_production do
  app.connect_to_database
  app.handle_request
  raise "Boom!"
  app.write_to_log
end
