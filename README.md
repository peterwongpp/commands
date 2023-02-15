To add a command that is trigger-able from spotlight:

### Method 1) write shell scripts directly

1. create a file with extension `.command`.
2. write the shell scripts in the file.
3. suggest to add the following code to clost the terminal automatically.
    -     osascript -e 'tell application "Terminal" to quit' &
          exit
4. Run `chmod +x <yourfile>.command` to make it executable.

Example:

    # lan.command
    # to list available network services:
    # networksetup listallnetworkservices

    networksetup -setnetworkserviceenabled "USB 10/100/1000 LAN" off
    networksetup -setnetworkserviceenabled Wi-Fi on

    osascript -e 'tell application "Terminal" to quit' &
    exit

    # wifi.command
    # to list available network services:
    # networksetup listallnetworkservices

    networksetup -setnetworkserviceenabled "USB 10/100/1000 LAN" off
    networksetup -setnetworkserviceenabled Wi-Fi on

    osascript -e 'tell application "Terminal" to quit' &
    exit

### Method 2.1) write apple script (Visual Studio Code with Apple Script extension)

1. create a file with extension `.applescript`.
2. Write the script in the file.
3. Execute Compile Application in command palette (command + shift + p).
   1. Make sure the extension settings: uncheck `Execute Only`, `Startup Screen` and `Stay Open`.
   1. the command will compile and output a `.app` application, which is executable from spotlight.

`.applescript` files can run with command line too: `osascript filename.applescript`

### Method 2.2) write apple script (Script Editor)

1. new a file with Script Editor, and export as format Text so that plain editor could read the content as well.
2. Write the script in the file.
3. File > Export
   1. File Format: Application
   2. Uncheck Options: Show startup screen, Stay open after run handler and Run-only
   3. Code Sign: Don't Code Sign
