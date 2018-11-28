# shipchal
Wat heb je nodig

Step 1 — configer netplan to conect with putty:

   Ubuntu:(
   - $ cd /etc/netplan
   - etc/netplan$ cp 50*.yaml 99.yaml
   - etc/netplan$ sudo nano 99.yaml
      voog een poort toe door de bestaan de regels te copyeren en de adaptor naam teveranderen (vb enp0s3 => enp0s8)
      
         network:
             ethernets:
                 enp0s3:
                     addresses: []
                     dhcp4: true
                 enp0s8:
                     addresses: []
                     dhcp4: true
                     nameservers:
                         addresses: []
                         search: []
          version: 2
       
   - etc/netplan$ sudo netplan appely
   - $ ip a  (ipv4 adres zoeken om met te conecteren)
   )
   
   debian:(
   - $ cd /etc/network
   - cd /etc/network$ sudo nano interfaces
   
         auto enp0s3
         allow-hotplug enp0s3
         iface enp0s3 inet dhcp
        
         auto enp0s3
         allow-hotplug enp0s3
         iface enp0s3 inet dhcp
   )
         
         
Step 2 — Installing Docker Compose:

Ubuntu:
   - sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
   - sudo chmod +x /usr/local/bin/docker-compose
   - sudo snap install docker 
   
Debian:

      - $ su root
      - root@user:/home/user# apt-get install sudo
      - root@user:/home/user# adduser username sudo
      - root@user:/home/user# exit
   
      - $ sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
      - $ sudo chmod +x /usr/local/bin/docker-compose
      - $ sudo apt-get install snapd
      - $ sudo snap install docker 

Step 3 — Running a Container with Docker Compose (om te testen dat het werkt):

   - $ mkdir hello-world --> cd hello-world --> nano docker-compose.yml -->  
   
         version: "2"
            services:
                my-test:
                    image: hello-world
              
   - docker-compose up -d   (-d om het op de achtergrond uitvoeren)

Step 4 — Running Docker GIT file:

   - $ mkdir docker-hub --> cd docker-hub
   - docker-hub$ git clone https://github.com/benji19/shipchal.git
   - docker-hub$ cd shipchal
   - docker-hub$ shipchal/ sudo docker-compose up -d
   
Step 5 — testing docker containers

   - docker ps       (laat alle lopende containers zien)
   - docker images   (laat gedownloade/gemaakte images zien)
   
Step 6 — surf in a browser

   surf naar je localhost/ip addres van je server met volgende poorten:
   
      - :8007  www            (voor het tonen van de website waar gegevens verwerkt worden)
      - :8008  phpmyadmin  user: user  wachtwoord: R1234-56  (voor de het beheren van de database)
      - :9009  portainer   user: user  wachtwoord: R1234-56  (voor het manage van containers en images van docker)
