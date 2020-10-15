# Self-hosted services

## Dependencies

-   docker-compose (remote only)
-   ansible (controller only)
-   openssh
-   rsync

## Create inventory

```
[docker_swarm_manager]
raspi swarm_labels='["local", "small"]'
big_server swarm_labels='["big"]'


[docker_swarm_worker]
big_server_2 swarm_labels='["local", "big"]'
```

## Deploy

-   Run `ansible-galaxy install -r requirements.yml`
-   Run `ansible-playbook 0*.yml`
