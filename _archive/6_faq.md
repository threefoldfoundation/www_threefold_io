## FAQ

Below we add an FAQ Section.

```js
!!website.section_add
    name: faq
    title: FAQ
    template: layouts/faq.html
```

Now we add our FAQ Pages to the section.

```js
!!website.page_add
    section: faq
    title: "How ThreeFold compares to similar projects in the space?"
    collection: "content"
    file: "how_threefold_compares.md"

!!website.page_add
    section: faq
    title: "What is ThreeFold?"
    collection: "content"
    file: "what_is_threefold.md"

!!website.page_add
    section: faq
    title: "What is the ThreeFold Grid?"
    collection: "content"
    file: "what_is_tf_grid.md"

!!website.page_add
    section: faq
    title: "Is the ThreeFold Grid live already?"
    collection: "content"
    file: "is_tf_grid_live.md"

!!website.page_add
    section: faq
    title: "What is the Threefold Connect?"
    collection: "content"
    file: "what_is_tfconnect.md"

!!website.page_add
    section: faq
    title: "Does the ThreeFold use consensus?"
    collection: "content"
    file: "does_tf_use_consensus.md"

!!website.page_add
    section: faq
    title: "Is there anything done for the ThreeFold Grid to be sustainable?"
    collection: "content"
    file: "is_tf_grid_sustainable.md"

!!website.page_add
    section: faq
    title: "How can I get involved with ThreeFold if I am not very technical?"
    collection: "content"
    file: 'how_can_i_get_involved.md'
```

