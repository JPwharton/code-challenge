# code-challenge

## Overview ##

This example project contains a simple UI that consists of a search bar with images and their titles to photos on flickr. 
The project uses MVC patterns and ultimatley generates a "Post" model which uses the lates swift 4 syntax Codable protocol to allow for simple JSON decoding.  The model object is created on succesful fetching of the data and is then populated in the table view cells.  The SDWebImage sdk was used to improve scrolling performance and limit requests by caching images. 
