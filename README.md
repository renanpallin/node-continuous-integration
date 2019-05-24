# Iniciar no startup
```
	pm2 startup systemd -u >>USER<< --hp >>HOME<<
	pm2 save # cria o arquivo de dump para iniciar corretamente
```
Agora pode reiniciar numa boa