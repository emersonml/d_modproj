# d_modproj
modelo de projeto com docker 


# 1 Passo: Crie primeiro o NETWORK antes de executar o docker compose

 # 1. CRIAR PRIMEIRO o NETWORK antes de executar o docker compose. 
  ## CRIA NETWORK NO DOCKER E SET RANGE DE IP 
  docker network create --driver bridge --subnet=10.0.0.0/24 --gateway=10.0.0.1 net_modproj
 # 2. CRIA IMAGEM A PARTIR DO DOCKEFILE E EXECUTA YARN PELO DOCKER-COMPOSE PARA BAIXAR A PASTA node_modules. 
  ## Obs Certifique-se que a linha comando:yarn esteja descomentada.
  docker-compose up -d
 # COMENTE A LINHA command: yarn NO ARQUIVO DOCKER-COMPOSE. ASSIM O ULTIMO "CMD" É DO DOCKERFILE.


# cmds uteisS:
  docker network ls
  docker inspect cont | grep IPAddress

  ##


