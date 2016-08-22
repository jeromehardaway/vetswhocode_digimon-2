class SportyClient
  def post(message)
    raise "Not signed in!" unless @user
    # post message to remote service
    puts "#{@user} posted message: #{message}"
  end

  def timeline
    raise "Not signed in!" unless @user
    # get timeline from remote service
    puts "#{@user} fetched timeline..."
  end

  def sign_in(user)
    # sign in to remote service
    @user = user
    puts "#{user} signed in."
  end

  def sign_out(user)
    # sign out of remote service
    puts "#{user} signed out!"
  end

  def as_signed_in_user(user)
    sign_in(user)
    begin
      yield
    ensure
      sign_out(user)
    end
  end

  def self.open(user)
    client = self.new
    client.sign_in(user)
    begin
      yield(client)
    ensure
      client.sign_out(user)
    end
  end
end

# client = SportyClient.new

# client.sign_in("broncos_fan")
# client.post("Ready for the new season...")
# client.post("Broncos are going all the way!")
# client.timeline
# client.sign_out("broncos_fan")

# client.as_signed_in_user("broncos_fan") do
#   client.post("Ready for the new season...")
#   client.post("Broncos are going all the way!")
#   client.timeline
# end

# Test that the user is always signed out as the last step, regardless of whether the block completes successfully or raises an exception. For example, try the following code:
# client.as_signed_in_user("Seahawks_12th_man") do
#   client.post("Go Hawks!")
#   raise "You're a Hawks fan!"
# end

# user was signed out successfully

SportyClient.open("broncos_fan") do |client|
  client.post("Ready for the new season...")
  client.post("Broncos are going all the way!")
  client.timeline
end
