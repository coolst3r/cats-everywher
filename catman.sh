# Install Daemonize package
pip install daemonize

# Create a bash script to run the Python script
echo '#!/bin/bash' > catman.sh
echo 'chmod 777 neonscat.pyw' >> catman.sh
echo 'neonscat.pyw' >> catman.sh

# Make the bash script executable
chmod +x catman.sh

# Run the Python script as a daemon without user prompts
daemonize -c $PWD/run_script.sh -l $PWD/daemon.log -p $PWD/daemon.pid -v
