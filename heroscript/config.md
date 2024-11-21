# www.threefold.io development script

We first define our website.

```js
!!website.define name:'www_threefold' title:'Threefold' 
description: 'Threefold website'
```

Next, we add a header and a footer for our website

```js
!!website.header_add 
    name: 'header.md'

!!website.footer_add 
    name: 'footer.md'
```

Let's then add our pages

```js
!!website.page_add 
    name: 'home'
    description: 'ThreeFold empowers anyone to become a cloud service provider – no technical expertise required – allowing people and organizations to buy sell, and use cloud resources autonomously and securely.'
    file: 'home.md'
    homepage: true

!!website.page_add
    name: 'About'
    file: 'about.md'

!!website.page_add
    name: 'solutions.md'
    title: 'Solutions'

!!website.page_add
    name: 'Support'
    collection: 'content'
    file: 'support.md'
```

Finally we can select and add some blog posts, news and people sections.

## Blogs

Below we select blogs relavant to threefold.io from our data repository

```js
!!website.blog_add 
    name: 'A better understanding of wealth'
    collection: 'blog'
    file: 'a_better_understanding_of_wealth.md'
    image: 'a_better_understanding_of_wealth.jpg'

!!website.blog_add 
    name: 'A different approach to blockchain'
    collection: 'blog'
    file: 'a_different_approach_to_blockchain.md'
    image: 'a_different_approach_to_blockchain.jpg'
```

## People

```js
!!website.person_add 
    name: 'Adnan Fatayerji'
    collection: 'person'
    file: 'adnan_fatayerji.md'

!!website.person_add 
    name: 'Alexandre Hannelas'
    collection: 'person'
    file: 'alexandre_hannelas.md'
```

## News

```js
!!website.news_add 
    name: '3Bot Connect & TFConnect'
    collection: 'news'
    file: '3bot_connect_tf_connect.md'

```

```js
!!website.generate
```
