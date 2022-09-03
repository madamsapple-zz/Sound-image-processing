This is the project "Pizza stacker" for the second, sound synthesizer brief. It allows you to stack multiple triangle or sine waves on top of another, with varying frequencies and loudness levels. To resemble the idea of stacking up waves, I illustrated the sketch with a pizza and its layerings. I represented the triangle wave with the onion topping and the sine with basil topping (that you can add to your pizza). When changing the frequency, the cheese color turns darker (i.e. it is more cooked/baked), and when changing the volume, the pizza itself adjusts its size.

## Operation

First, choose either the onion or basil topping by pressing the 'o' or 'O' key for onion, or 'b'/'B' key on the keyboard for basil respectively. Then, slide the button on the frequency bar on the right to adjust however high or low you want your wave to sound. Then adjust the volume bar on the left to finally generate a wave at the desired amplitude level. You can adjust your frequency multiple times before going over to the volume bar; a new sound layer/stack is only generated when you move the volume slider button.

## Process 

I originally wanted to implement the same idea (layering up various audio samples similar to a loopstation instrument) but with live microphone-recordings that the user would make. Essentially, for me it was all about being able to practice or tinker with some form of harmonization with this method. There were a lot of issues that I encountered initially, such as recording empty files after speaking into the mic, so I decided to use prerecorded audio. Working with sound in general was a new challenge since I would experience disruptions or glitches in audio as it would merge with the ecosystem of purely visually-interactive parts of the code. One example of this was the sliding bars or scrollbars. While mapping the amplitude of waves to the bar's range, everything worked fine in theory but running the code was a different experience. As I slided over the bar, I could hear abrupt changes in loudness and a bit of the sound of the last decibel level would leak into the current decibel level. I tried switching to whitenoise as the prerecorded sample to determine whether it made things smoother, but instead it wasn't adjusting to the amplitude changes in the first place. As a result, I thought it would be best if I used waves in their rawest forms to clearly listen to how they interfere with one another. I personally like the triangle and sine waves the most in terms of sound, and hence I chose them.

For the visual design, I was able to relate to food in how we eat things like burgers, pizzas, or ice creams, that commonly feature topping and layering options. I just went with the pizza on a whim and thought of how I could categorize its different condiments into sound's features:

<img src="https://git.arts.ac.uk/storage/user/361/files/071c8aeb-dd60-4a0d-b7f2-e5a62bdbf5d1" width="451.6" height="644.6" /> 


At the current working stage, the glitches have reduced but haven't gone away completely. After stacking 6 or so waves, the audio sometimes makes abrupt cracking sounds (I'm assuming it is probably due to processing not being able to handle too many audio samples operating at once). I also noticed how the animations, such as the increasing size of the pizza or the sliding motion, have slightly slowed down after having added 2 wave types/timbres with each one producing multiple tracks of its own. When I was working with just the triangle wave, all such animations were quicker and didn't lag.

These are the two links to the video documenting their functioning:

https://ual.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=fd37de7e-7541-463b-a196-aebc00bb727c&start=0

https://ual.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=68a71ffc-2b8c-482a-8f3a-aebc00bc0597&start=0


Here's a screengrab of the sketch!
![image](https://git.arts.ac.uk/storage/user/361/files/fa8c5a46-bc0b-4d23-bcab-4bb2d9ff625e)

