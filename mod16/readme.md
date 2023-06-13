# Módulo 16 - Containers com ACR, ACI e App Services

# Principais comandos do Docker
 - Ver versão
    ```
        docker version
    ```
 - Listar imagens
    ```
        docker image || docker image list
    ```
 - Procurar
    ```
        docker search(parâmetro)
    ```
 - Pull da imagem
   ```
        docker image pull(imagem)
   ```
 - Rodar imagem
   ```
        docker run nomeImagem
        docker run -it -p 8080:80 ngnix // rodar em portar mapeada
   ```
 - Verificar container
    ```
        docker ps
        docker ps -a // Verificar todos os containers
    ```
 - Stats Container
     ```
        docker stats(id ou alias)
    ```
 - Inspecionar imagem
    ```
        docker inspect(id ou alias)
    ```
 - Deletar imagem
    ```
        docker rmi (imagem)
    ```
 - Comando container
    ```
        docker exec(id ou nome)
    ```
 - Iniciar container
    ```
        docker start(id)
    ```
 - Parar container
    ```
        docker stop(id)
    ```
