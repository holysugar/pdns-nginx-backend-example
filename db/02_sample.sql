USE pdns;

INSERT INTO records (domain_id, name, content, type,ttl,prio)
             VALUES (1,'example.com','localhost soa@example.com 1','SOA',86400,NULL);
INSERT INTO records (domain_id, name, content, type,ttl,prio)
             VALUES (1,'web1.example.com','172.16.0.10','A',120,NULL);
INSERT INTO records (domain_id, name, content, type,ttl,prio)
             VALUES (1,'web2.example.com','172.16.0.11','A',120,NULL);

INSERT INTO records (domain_id, name, content, type,ttl,prio)
             VALUES (1,'backend.example.com','web1.example.com','CNAME', 2,NULL);
