## devtools-docker-selena-hili-or

# Instructions for group

**To get the SQL:**

1. Clone the repository to your device.
2. Install Docker desktop and enable WSL integration.
3. In Docker desktop, install Drupal via Docker Hub.
4. In a Linux environment set the directory to the location of your cloned repository. Enter the following lines:

```docker compose pull``` to extract and

```docker compose up -d``` to run the SQL.

Alternatvely you can run the container in Docker desktop after extraction.

**To access Drupal website:**

1. Go to your containers and click http://localhost:8080/ in the port column belonging to drupal-devtools.
2. Login to the site using the administrator account.

*Username: demoadmin*

*Password: secretpass*

3. With the demoadmin account, create your own account and set role to 'Administrator'. (from People in the sidebar)
From there we will each be able to make changes to the layout and add additional things.

