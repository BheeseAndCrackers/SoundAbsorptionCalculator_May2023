# Intro
this was my first project in MATLAB; a final project for a class on the basics of C, then we switched gears to learning MATLAB for data analysis.

I was interested in audio at the time (pursuing an audio engineering degree at the time), so I decided to write a room absorption and RT60 calculator.

# What It Does
The code uses input and switch statements to  calculate the total effective area of a rectangular room, given the dimensions of each surface, and having the user pick from a list of materials the surface was made out of.

as the user goes through the prompts, the code calculates the total effective area of the room by summing the product of the material's absorption coefficient and the surface area of the.. surface. (wall, ceiling, floor).

the code uses a different equation depending on the value of the total absorption, for the sake of being accurate.

at the end, the code displays a pie chart of each surface's contribution to the total absorption, exploding the biggest contributor, and also displays the RT60.
# Future Revisions 
I once tried to expand this project over to unity, wanting to create a 3D interactive/visual program with mouseovers and a cool UI, but I got way in over my head and stopped. (learning a new program from scratch on your own is *hard*.)

there are a few things that are needed to be done before that, however: 
* Expanding the calculations to account for the whole relevant frequency spectrum; not just 1,000 Hz as it is now
* having a large database of materials the user can search, or maybe input their own material name and absorption values.

when I will have the time or ability to teach myself unity for that, remains a mystery.