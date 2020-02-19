# **docker-compose for single node without swarm mode**

**If you want to deploy elasticsearch, kibana in "swarm mode", please go to [maxyermayank/docker-compose-elasticsearch-kibana](https://github.com/maxyermayank/docker-compose-elasticsearch-kibana)**


**更改系統虛擬機器記憶體大小**

**Notice**

每次重新該機會重設，可加入“/etc/sysctl.conf”中。

```bash
sudo sysctl -w vm.max_map_count=26144
```

# **Overview**
Docker Compose for 3 Node Elasticsearch () Cluster and Kibana () Instance for development purposes.

- [x] 3 Node Elasticsearch version 
- [x] Kibana version 
- [x] Audit Beat version 
- [x] Metric Beat version 
- [x] Heart Beat version 
- [x] Packet Beat version 
- [x] File Beat version 
- [x] APM Server version 
- [x] APM Search 
- [x] NGINX

# **NOTES**
- If you need Open Source version then change Elasticsearch and Kibana Images to elasticsearch-oss and kibana-oss respectively.
- Kibana is being served behind Nginx Proxy so you can secure access of kibana for your purpose.

## **Requirements**
- [x] Docker 19.03.21
- [x] Docker-compose 1.25.3, build d4d1b42b

### **Start Stack in Daemon Mode**
```
docker-compose up -d
```

### **Check status of docker-compose cluster**
```
docker-compose ps -a
```

### **Stop Compose Stack**
```
docker-compose down
```

### **Cluster Node Info**
```
curl http://localhost:9200/_nodes?pretty=true
```

### **Access Kibana**
```
http://localhost:5601
```

### **Accessing Kibana through Nginx**
```
http://localhost:8080
```

### **Access Elasticsearch**
```
http://localhost:9200
```

# **Reference**
* [maxyermayank/docker-compose-elasticsearch-kibana](https://github.com/maxyermayank/docker-compose-elasticsearch-kibana)

# **Resources**
* [Hands on Elasticsearch](https://medium.com/@maxy_ermayank/hands-on-elasticsearch-8fa59d8aebfc)
* [Elasticsearch Resources](https://medium.com/@maxy_ermayank/elasticsearch-resources-27d24f01c1dc)
* [Open Distro Elasticsearch](https://medium.com/@maxy_ermayank/tl-dr-aws-open-distro-elasticsearch-fc642f0e592a)
