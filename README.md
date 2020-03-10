# docker-openvpn-mavproxy

Usage:
    docker-compose run -d mavproxy [Startup Options]

    ex -:
    docker-compose run -d mavproxy --master=udp:127.0.0.1:14550 --out=udp:192.168.2.255:14550 --logfile=test.log

    if you specify --logfile option log files would be stroed inside the logs folder

NOTE -: before run the docker-compose command please make sure to remove all files inside vpn folder and add your OpenVPN config file and the creds file.


How to deploy on Amazon EC2
1) install the docker-compose on EC2
2) clone the repo https://github.com/Suneth77/docker-openvpn-mavproxy.git
3) run docker-compose as usage