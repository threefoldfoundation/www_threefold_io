# www.threefold.io development script

We first define our website and add our zola template to it.

```js
!!website.define 
    name:'www2_threefold' 
    title:'Threefold Development'
    description: "ThreeFold is the world’s first system enabling anyone to become a cloud and internet service provider."

!!website.template_add 
    url:'https://github.com/freeflowuniverse/webcomponents/tree/main/zola'
    pull: true
```

Then we add the [doctrees]() we will use for the website. When we add a doctree, all [collections]() from the doctree are imported and available to be used in building our website.

We use the following doctrees in our website:
- `threefoldfoundation/threefold_data` for blogs, people and news. 
- `threefoldfoundation/www_threefold_io` for site content for pages.
  
```js
// add collections to the website using their github url
!!website.doctree_add 
    url:'https://github.com/threefoldfoundation/www_threefold_io/tree/development_zola/content'
    branch: development_zola
    pull: true

!!website.doctree_add 
    url:'https://github.com/threefoldfoundation/threefold_data/tree/development_zola/content'
    pull: true
```

_Note that you can also use a specific branch for your doctrees_