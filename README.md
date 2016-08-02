# listener
A simple listener

# Transcript from 2 telnet sesions:
# Start in this window:
$ ruby server.rb
listening on port 3001
Got Hi there
1 - Mon Aug  1 10:31:44 2016
Got How are you?
2 - Mon Aug  1 10:31:52 2016

# Second window:
$ telnet localhost 3001
Trying 127.0.0.1...
Connected to localhost.
Escape character is '^]'.
Hi there
1 Mon Aug  1 10:31:44 2016
How are you?
2 Mon Aug  1 10:31:52 2016

You can specify the port as an argument, 3001 is the default.

If your connection closes the socket every time you can edit the server.rb file and change where the socket open and closes occur to match.
