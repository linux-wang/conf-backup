netsh interface ip set address name="本地连接" source=static addr=x.x.x.x mask=255.255.255.0 gateway=x.x.x.x
netsh interface ip set dns name="本地连接" source=static addr=8.8.8.8
netsh interface ip set dns name="本地连接" source=static addr=114.114.114.114
