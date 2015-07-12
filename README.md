#gPin (An app similar to pinterest)

Create a rails app that allows you to do full CRUD on a pin. A pin is simply defined as a url you're interested in, a comment about the url and optionally an image.

##Requirements

* Avoid using link_to whenever possible (adding a destroy link should be the only exception). Link_to is great, but it's important to understand what you're doing first  
* Add a nav bar to all pages that lets you get around more easily.  
* Every pin on index page should be a link to the page. Or contain a link to the show page next to it. The UI is up to you.  
* Add validations to your model. Make sure that a url and a comment are present. An image is optional. Optionally, add any other validations that you think make sense.  
##Bonus

* Investigate partials. Use a partial for the nav bar instead of copying it to every page. Also try using a partial for the new page and the edit page. They are very similar  
* Make the index page a little more interesting. Instead of showing an image, remove the image from your table and show the page that is being linked in an iframe.  
* Add javascript and css. Style the page and make it a little more dynamic.  