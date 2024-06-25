Let's then add our pages

```js
!!website.page_add 
    name: 'Home'
    collection: 'content'
    file: 'home.md'
    homepage: true

!!website.page_add
    name: 'About'
    collection: 'content'
    file: 'about.md'

!!website.page_add
    name: 'Careers'
    collection: 'content'
    file: 'careers.md'
    
!!website.page_add
    name: 'Host'
    collection: 'content'
    file: 'host.md'

!!website.page_add
    name: 'Utilization'
    collection: 'content'
    file: 'utilization.md'
```