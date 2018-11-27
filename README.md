# shipchal
Wat heb je nodig

Step 1 — Installing Docker Compose:

   - sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-      compose
   - sudo chmod +x /usr/local/bin/docker-compose

Step 2 — Running a Container with Docker Compose (om te testen dat het werkt):

   - mkdir hello-world --> cd hello-world --> nano docker-compose.yml -->  version: "2"
                                                                           services:
                                                                               my-test:
                                                                                   image: hello-world
   - docker-compose up -d   (-d om het op de achtergrond uittevoeren)


