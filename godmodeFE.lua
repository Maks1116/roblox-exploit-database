--/Change 'YourUsername' to your ROBLOX name, and 'HealthAmountGoesHere' to your new Health value.
getglobal game
getfield -1 GetService
pushvalue -2
pushstring Workspace
pcall 2 1 0
getfield -1 YourUsername
getfield -1 Humanoid
pushnumber HealthAmountGoesHere
setfield -2 Health
emptystack