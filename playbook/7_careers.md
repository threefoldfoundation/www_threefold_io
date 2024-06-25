## Careers

Below we add a careers section.

```js
!!website.section_add
    name: careers
    title: Careers
```

Now we add our FAQ Pages to the section.

```js
!!website.page_add
    section: faq
    title: "How ThreeFold compares to similar projects in the space?"
    page: "content:how_threefold_compares.md"

!!website.page_add
    section: faq
    title: "What is ThreeFold?"
    page: "content:what_is_threefold.md"

!!website.page_add
    section: faq
    title: "What is the ThreeFold Grid?"
    page: "content:what_is_tf_grid.md"

!!website.page_add
    section: faq
    title: "Is the ThreeFold Grid live already?"
    page: "content:is_tf_grid_live.md"

!!website.page_add
    section: faq
    title: "What is the Threefold Connect?"
    page: "content:what_is_tfconnect.md"

!!website.page_add
    section: faq
    title: "Does the ThreeFold use consensus?"
    page: "content:does_tf_use_consensus.md"

!!website.page_add
    section: faq
    title: "Is there anything done for the ThreeFold Grid to be sustainable?"
    page: "content:is_tf_grid_sustainable.md"

!!website.page_add
    section: faq
    title: "How can I get involved with ThreeFold if I am not very technical?"
    page: 'content:how_can_i_get_involved.md'
```

