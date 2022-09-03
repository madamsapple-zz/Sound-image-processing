This is the project for the third and final brief (forest scene), named as "Night at the Forest". It tries to recreate a natural scene in a forest where leaves are gently blowing in the wind and fall to the ground.

## Operation
Open the folder with the code in Processing so that all the assets as well as accompanying files are loaded for you. Run the "nightattheforest.pde" file and you should be seeing a window with a dark blue night sky. Press the 'a' key to simulate a single falling leaf in the forest. If you want to orchestrate a more natural effect, repeatedly press/hold down the 'a' key to simulate multiple leaves falling in random motion. All leaves eventually collect at the bottom of the screen. If you want to reset the sketch and remove the leaves at the bottom, press the 's' key. If you can, you might notice tiny, glowing embers or dots in the bottom half of the window. The leaves also change their hue midair as they fall to the floor.

## Development
I started off my sketch with a single leaf. I drew it using individual vertices and tried applying different vector forces to it. I was taking the help of lectures explaining how objects can move around with vector forces. Once I got the gist of how position, velocity, and acceleration vectors can be applied, I began experimenting with the tutorial code on my own.

![gif_doc](https://git.arts.ac.uk/storage/user/361/files/886bac1e-9dd1-417a-8717-b74583a87f85)

Luckily my sketch was working alright for a single leaf. I made sure to make the vertices positions dynamic so that they move with and are applied to the whole figure. I used randomness and arbitrarily declared the beginning x and y positions, amount of acceleration, horizontal velocity, etc. I also made a leaf class as opposed to declaring a shape in the draw loop itself. This was all in preparation of the main aim only - simulating a natural leaf fall. Yet, for me, the bottleneck of this brief was figuring out how to multiply the leaves across the screen. Although currently I have to repeatedly press keys to simulate multiple leaves falling, the sketch still functions properly for every fall unlike the problems I encountered earlier. I tried to restructure my code, populate the leaf objects into Array Lists, and made up different classes. I was mostly referring to this particle system sketch for cues https://git.arts.ac.uk/tarmitage/sip-2022/tree/main/week9/code_examples/particle_system , adapting it to my project's context. This included omitting aspects such as decay, lifespan, the expired method, or adjusting the display around to my custom leaf shape. Yet after multiple runs and constant back and forth with trying to amend potential mistakes, I was just not able to multiply the leaves! Either multiple leaves would show up but flicker rapidly while looping, or I would witness just one leaf falling. Sometimes the sketch would go into a not responding state or just appear blank. I thoroughly checked forums but to no avail. I took a break from programming and started switching up the code again randomly, just to see if any combination would work. At one point I simply changed the location of the 3 main PVector values from being outside the class "leaf" to inside it. And it worked! I was vastly surprised at how simple and inconspicuous the change was, but was glad everything functioned fine. 

## Visual Design
I stumbled upon autumn leaves while searching for a suitable sprite image for the leaf, which also brings me to the point I forgot to mention: I changed my custom made leaf to simply using an image sprite halfway through. It was during the above mentioned ordeal that I was doubting everything and just thought that it would make things easier (and prettier!) if I used an image instead. I used 2 autumn leaf sprites and changed the background to a nice dark-blue evening sky, showcasing a white moon. I felt like it gave me a bit of a halloween theme when I was changing the style! I also saw the opportunity to do something simple yet impactful: changing the tint of the sprites. I swapped their tint values with their changing x and y positions, hence introducing the color change in midair as they fall. I added some haunted dark trees as well.

Here is the link to the video documentation! :
https://ual.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=a757581a-dcab-4363-9852-aebc00f4d279&start=0

Here are some screengrabs:

![image](https://git.arts.ac.uk/storage/user/361/files/6b8aed37-9615-46ef-99c0-0ffc01095203)
![image](https://git.arts.ac.uk/storage/user/361/files/42f06815-413e-4ecf-b6eb-b5f78fced658)

 

