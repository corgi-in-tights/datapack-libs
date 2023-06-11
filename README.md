# Datapack Utils
A list of some (potentially) useful datapacks to you, some are made by me, some are made by others and packaged/optimized by me, feel free to nab any of the datapacks above

 1. Marker Sort: Basic sorting library that uses markers with stored values to sort two different arrays at once, keys and values. Essentially a sorted `hashmap`.
**Usage:**
	- Drop your keys (must be +integers) into the storage `markersort:data keys`, these are the sorting values. So for example, if I wanted to sort by kills, I would put them in here.
	- Drop your values - anything thats connected to the key, so usernames, kill ratios, etc. into `markersort:data values`. Imagine it like a hashmap: {Key: Value}, but not really. Can be any format (list, short, long, int).
	- `/function markersort:event/ascending` and `descending` 
	- Comments are included throughout, check the `examples/` for some demonstrations on how to use it, it's pretty simple.
	
	*Credits go to TheMrZZ#9307 for posting this on MCC #resources, just thought it's neat so I formatted it into a quick lib.*



2. JMC Speedcode (useful macros for JMC that i use - https://jmc.wingedseal.com): TBA



3. TimeIt (very smol timers lib): TBA



4. Entity Logic (for custom entities, action chains, animations with objmc, etc, requires TimeIt): TBA 



5. CI Actions (override interact and attack actions with your own when holding a specific item): TBA 

5.5. CI Actions Hooks (seperate library specifically for CI Actions, creates hooks for CI Animations & Whorefer): TBA 



6. CI Animations (add custom item animations using objmc, seperate hand and world animations, make two-hand weapons, etc)



7. Barpes (particle effects core shaders): TBA



8. Whorefer (make boss fights easy again, requires TimeIt, Entity Logic & if you're using CI Actions -> CI Action Hooks): TBA


