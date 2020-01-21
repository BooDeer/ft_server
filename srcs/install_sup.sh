cd /
apt-get -y install supervisor;
mkdir -p /var/log/supervisor;
mkdir -p /etc/supervisor/conf.d;
mv supervisord.conf /etc/supervisord.conf;


#ssl

cp /certpub.pem /etc/nginx/
cp /certprv.key /etc/nginx/