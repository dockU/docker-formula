{% from "docker/map.jinja" import docker with context %}

pip:
  pkg:
    - installed
    - name: {{ docker.pip }}

docker-py:
  pip.installed:
    - name: docker-py
    - require:
      pkg: pip
