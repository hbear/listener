# This is a listener.  Use it to demonstrate that you can send to the port it is listening on.
# Open and close for each connection, use the accept and close inside the loop
# Single open use the ones outside the loop

require 'socket'

port = ARGV[0] || 3001
puts "listening on port #{port}"
counter = 1

server = TCPServer.open(port)

client = server.accept       # Wait for a client to connect
loop {                         # Servers run forever
#  client = server.accept       # Wait for a client to connect
  puts "Got #{client.gets}"     # Read from the socket
  out = Time.now.ctime + "\n"
  puts "#{counter} - #{out}"
  client.puts "#{counter} #{out}"  # Write to the socket
  counter += 1
#  client.close                 # Disconnect from the client
}
client.close                 # Disconnect from the client
