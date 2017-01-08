FROM docker

CMD ["mongo", "-p", "27017", 'db = connect("localhost:27017/admin"); db.createUser({user: "admin", pwd: "p@ssw0rd1", roles: [{role: "userAdminAnyDatabase", db: "admin"}]});']

CMD ["mongod", "--auth"]