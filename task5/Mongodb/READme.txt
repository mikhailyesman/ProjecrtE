rs.initiate() db.isMaster()
rs.add("slave:27017")
rs.add("arbiter:27017", {arbiterOnly: true})
rs.status()
