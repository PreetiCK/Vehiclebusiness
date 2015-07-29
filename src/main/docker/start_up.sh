echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>
	<Context><WatchedResource>WEB-INF/web.xml</WatchedResource>
	<Resource name=\"jdbc/VehicleRental\" auth=\"Container\" type=\"javax.sql.DataSource\" username=\"root\" password=\"${DB_PASSWORD}\" driverClassName=\"com.mysql.jdbc.Driver\" url=\"jdbc:mysql://${DB_IP}:${DB_PORT}/${DB}?autoReconnect=true\"  initialSize=\"34\" maxActive=\"-1\" maxIdle=\"-1\" maxWait=\"-1\" minIdle=\"-1\"/>
	</Context>" > /etc/tomcat7/context.xml ;
service tomcat7 start ;
tail -f /var/lib/tomcat7/logs/catalina.out
