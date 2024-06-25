Next, we add a header and a footer for our website

```js
!!website.header_add
    logo: 'images/black_threefold.png'

!!website.header_link_add
    label: 'About'
    page: 'about'

!!website.header_link_add
    label: 'Host'
    page: 'host'

!!website.header_link_add
    label: 'Utilization'
    page: 'utilization'

!!website.header_link_add
    label: 'News'
    page: 'newsroom'

!!website.header_link_add
    label: 'Blog'
    page: 'blog'

!!website.header_link_add
    label: 'People'
    page: 'people'
```

This link points to our manual

```js
!!website.header_link_add
    label: 'Documentation'
    page: 'community'
    new_tab: true
```

```js
!!website.footer_add 
    collection: 'content'
    file: 'footer.md'
```
