# MOVIE STUDIO Database

A Movie Studio Database Design and CLI made in Python. The repository contains the whole Database Design Project

# Group Members

T.H.Arjun - 2019111012
Gokul Vamsi Thota - 2019111009
Mukkara Rakesh Reddy - 2019101087

## Instructions to run the script:

1. Extract the zip file into some folder.
2. After ensuring that the docker is running, Run the command `mysql -h 127.0.0.1 -u root -p --port=5005 < moviestudio.sql` so that the dump file is correctly loaded.
3. Run the command `python3 MiniWorld.py`.
4. When the script is being run, it initially asks for the username and password of SQL Server to connect to, enter the relevant information.
5. After connection takes place, follow the instructions displayed and enter the valid options/values (queries) as suggested and required.
6. If not using docker/using another port, the port argument in connection needs to be changed.

## Important things to note:

1. A Main director is called successful if atleast one of his films (associated with studio) gained atleast the average profit earned by a movie that is produced by the studio.
2. An Actor's experience value is calculated as the product of number of films he acted in and that are associated with the studio, and (number of awards he won so far + 1). The query also shows the current average.
3. There is a 'requires' function to represent the 'REQUIRES' relationship, which takes Set's Location Depicted; Actor's, Movie's and Director's IDs and inserts their necessary combinations into the 'REQUIRES' table.

**All requirements mentioned has been implemented, the first options are the main requirements from Requirements Doc, the rest of it is insert, delete, update for individual tables**
