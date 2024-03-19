Prerequisites
-------------


- [Oracle SQL Instant Client](https://www.oracle.com/database/technologies/instant-client/downloads.html)
- [Docker](https://www.docker.com/get-started/)

Installing
----------

### Windows

#### Docker

1. Download [Docker for Windows](https://www.docker.com/get-started/).
2. Install and restart.

#### SQL*Plus Client

1. Goto [Instant Client for Microsoft Windows](https://www.oracle.com/database/technologies/instant-client/downloads.html) and download,
   - Basic Package
   - SQL*Plus Package.
2. Unzip both into the same folder.
3. Move the folder into somewhere convenient.

##### Add to PATH

1. Open Start and search `Path`. Look for `Edit your environment variable`
2. Click `Edit your environment variable`. 
3. Click `Environment variable`.
4. At top, double click `PATH`.
5. Press `Add` on the right side toolbars.
6. Put the file path of the SQL*Plus Client folder.
7. Press Enter and close.

Running the database
--------------------

### Windows

1. Open command prompt with admin, and move to this folder.
2. Run 
   ```cmd
   docker compose up
   ```
3. Log into the database with
   ```cmd
   sqlplus database/database@localhost
   ```
4. Press `Ctrl + C` to close the database once done.
