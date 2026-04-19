# Database Setup Instructions

To set up the project database, please follow these steps:

1. Open MySQL Workbench.
2. Create a new schema named: marvelstoredb
   (Command: CREATE DATABASE marvelstoredb;)
3. Go to 'Server' > 'Data Import'.
4. Select 'Import from Self-Contained File' and choose the 'marvelstoredb.sql' file provided in this folder.
5. Set the 'Default Target Schema' to 'marvelstoredb'.
6. Click 'Start Import'.

Note: 
- The backend (Spring Boot) is configured to connect to this database on port 3306.
- Ensure your local MySQL username is 'root' and the password matches the one set in the backend 'application.properties' file.
- The dump includes pre-loaded product data for the Marvel store (Clothes, Action Figures, Keychains, etc.) and sample order history for testing.