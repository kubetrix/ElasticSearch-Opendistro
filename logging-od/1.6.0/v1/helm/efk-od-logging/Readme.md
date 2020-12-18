**Using below scripts you will be able to install EFK-OD solution in logging-od namespace or you can change after passing new namespace name.**

**For changing any other value which is present under values file/folder use helm set command and overwrite the same.**

**Note**:- Don't modify any templates for parameterizing more values, As all the required field is already added in Values file, 
       Other fields its good if not modified. As based on the load testing all the parameters was finallized, if doing some change then might be in peak load some issue will occur.
       So if planning for any change, please run the load test with all type of log templates(Mainly in fluentd config - with Json, Non Json templates).


**<<<<< Installation of EFK >>>>>**



***ElasticSearch, ElasticHQ and Curator***

helm template . --values values.yaml --values values/nonprod/values-elastic.yaml --values values/nonprod/values-kibana.yaml --values values/nonprod/values-fluentd.yaml --set allow.elasticsearchEnable=true  --set allow.hqEnable=true --set allow.curatorEnable=true  --set namespace=logging-od | k apply -f -

***Kibana installation***

helm template . --values values.yaml --values values/nonprod/values-elastic.yaml --values values/nonprod/values-kibana.yaml --values values/nonprod/values-fluentd.yaml --values values/nonprod/certs/wmstestk8s-nginx-certs.yaml  --set allow.kibanaEnable=true --set allow.elasticsearchEnable=false  --set namespace=logging-od | k apply -f -

***Fluentd installation***

helm template . --values values.yaml --values values/nonprod/values-elastic.yaml --values values/nonprod/values-kibana.yaml --values values/nonprod/values-fluentd.yaml  --set allow.elasticsearchEnable=false  --set allow.fluentdEnable=true --set namespace=logging-od | k apply -f -


**<<<<< Uninstallation of EFK >>>>>**

***ElasticSearch, ElasticHQ and Curator***

helm template . --values values.yaml --values values/nonprod/values-elastic.yaml --values values/nonprod/values-kibana.yaml --values values/nonprod/values-fluentd.yaml --set allow.elasticsearchEnable=true  --set allow.hqEnable=true --set allow.curatorEnable=true  --set namespace=logging-od | k delete -f -

***Kibana uninstallation***

helm template . --values values.yaml --values values/nonprod/values-elastic.yaml --values values/nonprod/values-kibana.yaml --values values/nonprod/values-fluentd.yaml --values values/nonprod/certs/wmstestk8s-nginx-certs.yaml  --set allow.kibanaEnable=true --set allow.elasticsearchEnable=false  --set namespace=logging-od | k delete -f -

***Fluentd uninstallation***

helm template . --values values.yaml --values values/nonprod/values-elastic.yaml --values values/nonprod/values-kibana.yaml --values values/nonprod/values-fluentd.yaml  --set allow.elasticsearchEnable=false  --set allow.fluentdEnable=true --set namespace=logging-od | k delete -f -
