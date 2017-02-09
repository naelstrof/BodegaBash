# Bodega Bash Design Document

## Mechanics

![mechanics are hard](https://i.ytimg.com/vi/a8rpifNUEYo/hqdefault.jpg)

The control stick should do a variety of things, in mid-air it'll control your yaw and pitch. On the ground the control stick should move the character in ANY direction. Though moving sideways should be slower or feel awkward (as well as it should rotate you slightly). Short hopping should be used for quick rotations. In order to move sideways. Double tapping in any direction, at any time, should cause a dodge.

Tapping A should cause a forward dash. A dash cancels any sliding and makes sure that the character is going at LEAST x speed. (Speed is maintained if already going faster than a dash).
Holding A causes a slide, on release it should cause a forward dash.
There is a cooldown to dashing that requires a rythmn to use properly. Spamming A to dash should be inefficient compared to tapping with a rythmn.
Running into a wall while dashing or sliding (without rebound) causes a hurt state.

Flicking the stick away from a wall on collision (within 20 frames) should cause the character to dash away from the wall at the angle of flick. (In mid-air it'd cause a wall jump). Missing the 20 frame window should cause a 60 frame cooldown where flicking doesn't cause a "rebound". You cannot rebound during a slide. A rebound should increase your speed slightly as well.
It'll be important to determine the normal of the wall, and to compare it with the direction of the flick to make sure that the move is a valid one. This can be done to cause your character to do a completely 180 if done properly.

Tapping X will cause a short hop, in midair you'll be allowed to rotate freely in order to change directions (just yaw). Landing while not facing forward will initiate a slide. At most this move should be used to rotate 100 degrees or so quickly.

Pressing and holding X for longer than 5-6 frames should cause a full-hop. It has the same properties as a short hop, but doesn't maintain your momentum as well. (probably does so innately anyway).

Holding R should make you go forward. L should be the brakes.
