# Create Redis Cluster

```bash
redis-cli --cluster create \
10.244.3.90:6379 \
10.244.2.92:6379 \
10.244.1.9:6379 \
-a redis
```



[如何在K8s上部署Redis集群](https://www.yisu.com/zixun/445279.html)
[Set up a Redis Cluster for Production environments](https://success.outsystems.com/Support/Enterprise_Customers/Installation/Configuring_OutSystems_with_Redis_in-memory_session_storage/Set_up_a_Redis_Cluster_for_Production_environments)