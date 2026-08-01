# Final Project - Docker Infrastructure for Drupal

## a. Who we are
Hili, Selena, and Or.

## b. What we were required to do
We were tasked with setting up a virtualized environment using Docker to run a Drupal website with a MySQL database. Additionally, we were required to implement automated data backup and restoration mechanisms using Bash scripts.

## c. What we did
* Configured a `compose.yaml` file to deploy the website and database services.
* Installed the Drupal site and populated it with content.
* Created Bash scripts for full project automation: environment setup, backup, restoration, and complete cleanup.

## d. Technologies we used
* Docker & Docker Compose
* Linux Ubuntu (Terminal)
* Bash Scripting
* MySQL
* Drupal

## e. Step-By-Step User Guide
To run our project and fully restore the website, follow these steps:

1. **Clone the repository:**
   Run the following command in your terminal:
   `git clone https://github.com/regenn95/devtools-docker-selena-hili-or.git`

2. **Enter the directory:**
   `cd devtools-docker-selena-hili-or`

3. **Set up the environment:**
   Run the setup script: 
   `./setup.sh`
   *(Note: Wait about 30 seconds after running this command for the database to fully initialize).*

4. **Restore the site data:**
   Run the restore script to inject the backup data: 
   `./restore.sh`

5. **Access the website:**
   Open a web browser and go to `http://localhost:8080`.

6. **Clean up the workspace (when finished):**
   To completely remove all containers, networks, and data volumes, run: 
   `./cleanup.sh`

## f. Additional information
Our scripts automatically handle the connections between containers, ensuring a seamless and full restoration of the website without requiring any manual database interventions.
