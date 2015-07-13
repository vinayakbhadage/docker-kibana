4. Install [Kibana](https://www.elastic.co/products/kibana)
	1. check out 
	
			git clone https://github.com/vinayakbhadage/docker-kibana.git

	2. Build the image

			git build -t doker-kibana .

	3. Run the kibana with Elastic search image

        **your-ES-IP-or-host-name:** please provide elasticsearch IP address or host name. 

		    docker run -d -e ELASTICSEARCH_PORT_9200_TCP_ADDR=***your-ES-IP-or-host-name** -p 5601:5601 docker-kibana