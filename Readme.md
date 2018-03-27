# Dorabella.rb

## What & why?
Dorabella.rb is a Ruby script to assist with my (probably unhealthy) obsession with unsolved ciphers and mysteries. As the name implies, Dorabella is the name of the cipher this script tries to help with cracking. There's plenty of sites out there that explain it, like the [Wikipedia entry](https://en.wikipedia.org/wiki/Dorabella_Cipher).

I'm trying to get in the habit of throwing more of my personal scripts and tools on GitHub. For the longest time I've kept these to myself thinking they're mostly useless to anyone else. Nowadays I'm trying to share anything that might be useful to even a single person.

I don't have any formal training or education in this area, but that doesn't prevent me from taking a stab at things like this. My approach may not be the best, and could be entirely wrong, so feel free to open up issues here.

Again, there are several sites explaining the Dorabella Cipher, but I'll name one here that was the inspiration for the script. [https://www.benzedrine.ch/dorabella.html](https://www.benzedrine.ch/dorabella.html) is one of many sites I was browsing when renewing my interest in this particular cipher. The way this site laid out the plaintext and key is what prompted me to write a script that could recreate that with any of the many possible sequential key positions.

So far, this script has been pretty much hack-as-you-go. The hashes vary, beginning with an array of sequential keys starting at 12:00 and moving clockwise into one of eight positions. Then, another hash considers the possibility that instead of going top to bottom/left to right (a-b-c), Elgar may have gone bottom to top/right to left (c-b-a), and continues to explore that possibility in another set of eight sequential positions.

The "alt" hashes explore the possibility that he may have alternated between one or the other, though still in a sequential method. After all, Dora Penny was not a cryptologist yet should have been able to crack this cipher.

Hashes ending in 'cw' are clockwise, while those ending in 'ccw' are counter-clockwise. The 1:1 key/plaintext that aligns to Elgars post-Dorabella notes illustrated with the site linked above is shown with seq_combos_cw[7]. The only difference is the visualization of the key itself because I felt the outside of the humps should be pointing in that direction.
