# dclong/jupyterhub-jdk [@DockerHub](https://hub.docker.com/r/dclong/jupyterhub-jdk/) | [@GitHub](https://github.com/dclong/docker-jupyterhub-jdk)

JupyterHub with JDK 11, Maven and Gradle in Docker. 

## Recommended Docker Images

<table class="tg">
<thead>
  <tr>
    <th class="tg-0pky">Area</th>
    <th class="tg-0lax">Docker Image</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0lax">Cloud IDE <a href="https://github.com/coder/code-server" target="_blank" rel="noopener noreferrer">code-server</a> (based on VSCode)</td>
    <td class="tg-0lax"><a href="https://github.com/legendu-net/docker-vscode-server" target="_blank" rel="noopener noreferrer">dclong/vscode-server</a></td>
  </tr>
  <tr>
    <td class="tg-0lax">Traditional ML</td>
    <td class="tg-0lax"><a href="https://github.com/legendu-net/docker-jupyterhub-ds" target="_blank" rel="noopener noreferrer">dclong/jupyterhub-ds</a></td>
  </tr>
  <tr>
    <td class="tg-0lax">Deep Learning</td>
    <td class="tg-0lax"><a href="https://github.com/legendu-net/docker-jupyterhub-pytorch" target="_blank" rel="noopener noreferrer">dclong/jupyterhub-pytorch</a></td>
  </tr>
  <tr>
    <td class="tg-0lax">Build portable Python using <a href="https://github.com/indygreg/python-build-standalone" target="_blank" rel="noopener noreferrer">python-build-standalone</a></td>
    <td class="tg-0lax"><a href="https://github.com/legendu-net/docker-python-portable" target="_blank" rel="noopener noreferrer">dclong/python-portable</a></td>
  </tr>
  <tr>
    <td class="tg-0lax">Build portable Anaconda Python environment</td>
    <td class="tg-0lax"><a href="https://github.com/legendu-net/docker-conda-build" target="_blank" rel="noopener noreferrer">dclong/conda-build</a></td>
  </tr>
  <tr>
    <td class="tg-0lax">Math / Calculus</td>
    <td class="tg-0lax"><a href="https://github.com/legendu-net/docker-jupyterhub-sagemath" target="_blank" rel="noopener noreferrer">dclong/jupyterhub-sagemath</a></td>
  </tr>
  <tr>
    <td class="tg-0lax">Editing <a href="https://github.com/legendu-net/blog" target="_blank" rel="noopener noreferrer">legendu.net/blog</a> using GitPod</td>
    <td class="tg-0lax"><a href="https://github.com/legendu-net/docker-gitpod/tree/blog" target="_blank" rel="noopener noreferrer">dclong/gitpod:blog</a></td>
  </tr>
  <tr>
    <td class="tg-0lax">Editing other GitHub repos using GitPod</td>
    <td class="tg-0lax"><a href="https://github.com/legendu-net/docker-gitpod" target="_blank" rel="noopener noreferrer">dclong/gitpod</a></td>
  </tr>
</tbody>
</table>

## Prerequisite
You need to [install Docker](http://www.legendu.net/en/blog/docker-installation/) before you use this Docker image.


## Usage in Linux/Unix

Please refer to the Section
[Usage](http://www.legendu.net/en/blog/my-docker-images/#usage)
of the post [My Docker Images](http://www.legendu.net/en/blog/my-docker-images/) 
for detailed instruction on how to use the Docker image.

The following command starts a container 
and mounts the current working directory and `/home` on the host machine 
to `/workdir` and `/home_host` in the container respectively.
```
docker run -d --init \
    --hostname jupyterhub-jdk \
    --log-opt max-size=50m \
    -p 8000:8000 \
    -p 5006:5006 \
    -e DOCKER_USER=$(id -un) \
    -e DOCKER_USER_ID=$(id -u) \
    -e DOCKER_PASSWORD=$(id -un) \
    -e DOCKER_GROUP_ID=$(id -g) \
    -e DOCKER_ADMIN_USER=$(id -un) \
    -v "$(pwd)":/workdir \
    -v "$(dirname $HOME)":/home_host \
    dclong/jupyterhub-jdk /scripts/sys/init.sh
```
The following command (only works on Linux) does the same as the above one 
except that it limits the use of CPU and memory.
```
docker run -d --init \
    --hostname jupyterhub-jdk \
    --log-opt max-size=50m \
    --memory=$(($(head -n 1 /proc/meminfo | awk '{print $2}') * 4 / 5))k \
    --cpus=$(($(nproc) - 1)) \
    -p 8000:8000 \
    -p 5006:5006 \
    -e DOCKER_USER=$(id -un) \
    -e DOCKER_USER_ID=$(id -u) \
    -e DOCKER_PASSWORD=$(id -un) \
    -e DOCKER_GROUP_ID=$(id -g) \
    -e DOCKER_ADMIN_USER=$(id -un) \
    -v "$(pwd)":/workdir \
    -v "$(dirname $HOME)":/home_host \
    dclong/jupyterhub-jdk /scripts/sys/init.sh
```

## [Detailed Information](http://www.legendu.net/en/blog/my-docker-images/#list-of-images-and-detailed-information) 

## [Use the JupyterHub Server](http://www.legendu.net/en/blog/my-docker-images/#use-the-jupyterhub-server)

## [Add a New User to the JupyterHub Server](http://www.legendu.net/en/blog/my-docker-images/#add-a-new-user-to-the-jupyterhub-server)

## [Known Issues](http://www.legendu.net/en/blog/my-docker-images/#known-issues)

## [About the Author](http://www.legendu.net/pages/about)
