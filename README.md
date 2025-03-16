<img src=./image.png width=50%>

# TreasurdLife Hubsite requests failure report
On March 15, 2025, from 10:35 AM to 12:10 PM West African Time (1 hour, 35 minutes), our website had issues where it was slow or not working for many users. About 60% of users could not load pages properly. The problem happened because our database was getting too many connections and couldn’t handle them all.

## Timeline
At 10:35 AM, our monitoring system alerted us to slow website performance. By 10:40 AM, engineers suspected a high volume of visitors, noting the database was struggling with too many connections. 
By 11:00 AM, the database team checked for long-running queries. After restarting the database at 11:15 AM, the issue remained unresolved. The infrastructure team then found that the connection pool was overloaded. 
They adjusted the settings to limit connections and restarted the services. By 12:10 PM, the website was functioning normally again.

## Root cause and resolution
The issue arose from our system allowing too many simultaneous connections to the database, causing it to reach its limit and making the website slow or unresponsive.
To resolve this, we:
1. Limited the number of concurrent connections.
2. Restarted services to clear stuck connections.
3. Enhanced our management of database connections to avoid future overloads.

## Measures against such problem in future
To prevent future issues, we will:
- Ensure connections are properly closed.
- Set up alerts for excessive connections.
- Verify that the database can handle traffic.
- Simulate heavy usage to test our configurations.
- Provide clear instructions for managing database connections. 
These actions will help keep the website running smoothly.
