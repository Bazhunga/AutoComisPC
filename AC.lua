scriptId = 'com.AutoComis.examples.myFirstScript'

--Unlock Mechanism
function unlock()
	unlocked = true
	extendUnlock()
end

function extendUnlock()
	unlockedSince = myo.getTimeMilliseconds()
end

function onPoseEdge(pose, edge)
    -- Unlock
    if pose == "thumbToPinky" then
        if edge == "off" then
            -- Actually unlock when pose is released in case the user holds it for a
            -- while.
            unlock()
        elseif edge == "on" and not unlocked then
            -- Vibrate twice on unlock.
            -- We do this when the pose is made for better feedback.
            myo.vibrate("short")
            myo.vibrate("short")
            extendUnlock()
        end
    end
    if unlocked
    	if pose = "fist"
    		myo.debug("You see this pose? It's the screw you pose!")
    		myo.vibrate("short")

    	if pose = "fingersSpread"
    		myo.debug("This pose is extremely apologetic! I'm so sorry...")
    		myo

    	if pose = "waveIn"
    		myo.debug("This pose indicates that I want to turn left :)")

    	if pose = "waveOut"
    		myo.debug("I WANNA TURN RIGHT YO BEEP BEEP")
    end

end

