# Humorous Post-mortem
## Issue Summary 
An intersting thing happened today on the website.

On March 15, 2025, from 10:35 AM to 12:10 PM WAT (1 hour, 35 minutes), our website took an unexpected coffee break. About 60% of users were left staring at loading screens, questioning their life choices. The culprit? Our database was overwhelmed with connections, struggling to keep up like a phone line during a reality show vote.

## Timeline
10:35 AM WAT - Our monitoring system screamed for help: "The website is slow!" Engineers rushed in, thinking, "Did we just go viral?!", but logs revealed the database was holding onto connections like a traffic jam during rush hour.
11:00 AM WAT - The database team suspected a long query was causing trouble. They restarted the database—because turning it off and on again works, right? Nope. So, they called in the infrastructure squad to check the server health and found out our connection pool was accepting too many connections at once, overwhelming the database.
12:10 PM WAT - They adjusted database settings to limit connections and restarted services. Thus the crisis was averted, and the website returned from its unplanned vacation.

## Root Cause and Resolution 
Our API was allowing way too many database connections, overloading the system. The database had a meltdown, and users suffered.
To fix it, we:
- Put the database on a connection diet by lowering the allowed connections.
- Restarted services to shake off stuck connections.
- Improved connection handling to prevent future traffic jams.

## Corrective and Preventative Measures 
To avoid another "database siesta," we will:
- Better database management: Make sure connections don’t overstay their welcome.
- Improved monitoring: Set up alerts before things get out of hand.
- Traffic stress testing: Simulate high usage to make sure we’re prepared.
- Clear documentation: So future engineers won’t repeat our mistakes.
Next time, we’ll make sure our database keeps working—no coffee breaks allowed!
