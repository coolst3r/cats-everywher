# Install Daemonize package
pip install daemonize

# Create a bash script to run the Python script
echo '#!/bin/bash' > run_script.sh
echo 'chmod 777 your_script.py' >> run_script.sh
echo 'python your_script.py' >> run_script.sh

# Make the bash script executable
chmod +x run_script.sh

# Run the Python script as a daemon without user prompts
daemonize -c $PWD/run_script.sh -l $PWD/daemon.log -p $PWD/daemon.pid -v
