# shipchal
Wat heb je nodig

Step 1 — Installing Docker Compose:

   - sudo curl -L https://github.com/docker/compose/releases/download/1.23.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker- compose
   - sudo chmod +x /usr/local/bin/docker-compose
   - sudo snap install docker 

Step 2 — Running a Container with Docker Compose (om te testen dat het werkt):

   - $ mkdir hello-world --> cd hello-world --> nano docker-compose.yml -->  version: "2"
                                                                           services:
                                                                               my-test:
                                                                                   image: hello-world
   - docker-compose up -d   (-d om het op de achtergrond uitvoeren)

Step 3 — Running Docker GIT file:

   - $ mkdir docker-hub --> cd docker-hub
   - $docker-hub/ git clone https://github.com/benji19/shipchal.git
   - $docker-hub/ cd shipchal
   - $docker-hub/shipchal/ sudo docker-compose up -d
   
Step 4 — testing docker containers

   - docker ps       (laat alle lopende containers zien)
   - docker images   (laat gedownloade/gemaakte images zien)
   
Step 5 — surf in a browser

   surf naar je localhost/ip addres van je server met volgende poorten
      - :8010  www            (voor het tonen van de website waar gegevens verwerkt worden)
      - :8011  phpmyadmin     (voor de het beheren van de database)
      - :9010  portainer      (voor het manage van containers en images van docker)
