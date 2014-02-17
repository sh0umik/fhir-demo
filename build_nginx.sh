git submodule init
git submodule update
sudo apt-get install libreadline-dev libncurses5-dev libpcre3-dev libssl-dev perl make
BLD=`pwd`/bin
cd ngx_openresty/

PATH=$PATH:/sbin/

make

cd  ngx_openresty-1.5.9.1rc1

./configure --prefix=$BLD \
  --with-luajit \
  --with-http_postgres_module
  -j4

make
make install
