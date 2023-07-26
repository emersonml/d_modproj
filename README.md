# d_modproj
modelo de projeto com docker 


# 1 Passo: crie primeiro o NETWORK antes de executar o docker compose

# cmdS:
 # CRIA NETWORK NO DOCKER E SET RANGE DE IP 
  docker network create --driver bridge --subnet=10.0.0.0/24 --gateway=10.0.0.1 d_modproj
 # CRIA IMAGEM A PARTIR DO DOCKEFILE E EXECUTA YARN PELO DOCKER-COMPOSE PARA BAIXAR A PASTA node_modules. Obs ainda nao start 
  docker-compose up -d
 # COMENTE O command: yarn NO ARQUIVO DOCKER-COMPOSE. ASSIM ASSIM O ULTIMO "CMD" É DO DOCKERFILE.


# cmds uteis:
  docker network ls
  docker inspect cont | grep IPAddress


    

    
        "start": "yarn",

    "start": "vite --host=${HOST:-localhost} && yarn dev",
