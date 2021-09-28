// This is where project configuration and plugin options are located.
// Learn more: https://gridsome.org/docs/config

// Changes here require a server restart.
// To restart press CTRL + C in terminal and run `gridsome develop`

module.exports = {
    siteName: 'ThreeFold',
    siteUrl: 'https://threefold.io',
    pathPrefix: "threefold",
    plugins: [

        // Local models

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Contact',
                path: './content/page/**/contactData/**/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Header',
                path: './content/page/**/header/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Header2',
                path: './content/page/**/header2/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Header3',
                path: './content/page/**/header3/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Header4',
                path: './content/page/**/header4/*.md',
            }
        },


        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Product',
                path: './content/page/**/productData/**/*.md',
            }
        },
        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'ProductMain',
                path: './content/page/**/productData/main/*.md',
            }
        },
        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'FeaturesMain2',
                path: './content/page/**/features2/main/*.md',
            }
        },
        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Features2',
                path: './content/page/**/features2/**/*.md',
            }
        },
        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'LogosMain',
                path: './content/page/**/logos/main/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Logo',
                path: './content/page/**/logos/**/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Cta',
                path: './content/page/**/cta/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Cta2',
                path: './content/page/**/cta2/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Cta3',
                path: './content/page/**/cta3/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Cta4',
                path: './content/page/**/cta4/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Cta5',
                path: './content/page/**/cta5/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'ComparisonMain',
                path: './content/page/**/comparison/main/main.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Comparison',
                path: './content/page/**/comparison/**/*.md',
            }
        },


        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'BrandPanel',
                path: './content/page/**/brandPanel/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'BrandPanel2',
                path: './content/page/**/brandPanel2/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'BrandPanel3',
                path: './content/page/**/brandPanel3/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'BrandPanel4',
                path: './content/page/**/brandPanel4/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'InTheNews',
                path: './content/page/**/InTheNews/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'PartenershipsMain',
                path: './content/page/**/partenerships/main/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Partenerships',
                path: './content/page/**/partenerships/**/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'VideoPanel',
                path: './content/page/**/videoPanel/*.md',
            }
        },
        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Stats',
                path: './content/page/**/stats/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Blogs',
                path: './content/page/**/blogs/**/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'BlogsMain',
                path: './content/page/**/blogs/main/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'FAQMain',
                path: './content/page/**/faq/main/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'FAQContent',
                path: './content/page/**/faq/**/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Jobs',
                path: './content/page/careers/jobs/**/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Info',
                path: './content/page/how-it-works/info/**/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'JobsMain',
                path: './content/page/**/jobs/main/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'CustomCTA',
                path: './content/page/**/customCTA/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'PageHeader',
                path: './content/page/**/pageHeader/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Card',
                path: './content/page/**/card/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Carousel',
                path: './content/page/**/carousel/**/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'CarouselMain',
                path: './content/page/**/carousel/main/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'TftUsesMain',
                path: './content/page/**/tftUses/main/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'TftUses',
                path: './content/page/**/tftUses/**/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'FarmingProcessMain',
                path: './content/page/**/farmingProcess/main/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'FarmingProcess',
                path: './content/page/**/farmingProcess/**/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'CultivationProcessMain',
                path: './content/page/**/cultivationProcess/main/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'CultivationProcess',
                path: './content/page/**/cultivationProcess/**/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Map',
                path: './content/page/**/map/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Roadmap',
                path: './content/page/**/roadmap/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'MarketInfoMain',
                path: './content/page/**/marketInfo/main/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'MarketInfo',
                path: './content/page/**/marketInfo/**/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'MainItem',
                path: './content/page/**/marketInfo/mainItem/*.md',
            }
        },


        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'AboutTft',
                path: './content/page/**/aboutTft/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'NetworkMain',
                path: './content/page/**/openNetwork/main/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Network',
                path: './content/page/**/openNetwork/**/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Subscribe',
                path: './content/page/**/subscribe/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Team',
                path: './content/page/**/team/*.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'MarkdownPage',
                path: './content/page/*/*.md',
                refs: {
                    contactData: 'Contact',
                    header: 'Header',
                    header2: 'Header2',
                    header3: 'Header3',
                    header4: 'Header4',
                    productsMain: 'ProductMain',
                    productData: 'Product',
                    featuresMain2: 'FeaturesMain2',
                    features2: 'Features2',
                    logos: 'Logo',
                    logosMain: 'LogosMain',
                    cta: 'Cta',
                    cta2: 'Cta2',
                    cta3: 'Cta3',
                    cta4: 'Cta4',
                    cta5: 'Cta5',
                    comparisonMain: 'ComparisonMain',
                    comparisonSecs: 'Comparison',
                    jobsMain: 'JobsMain',
                    inTheNews: 'InTheNews',
                    brandPanel: 'BrandPanel',
                    brandPanel2: 'BrandPanel2',
                    brandPanel3: 'BrandPanel3',
                    brandPanel4: 'BrandPanel4',
                    partenershipsMain: 'PartenershipsMain',
                    partnerships: 'Partenerships',
                    stats: 'Stats',
                    videoPanel: 'VideoPanel',
                    blogs: 'Blogs',
                    BlogsMain: "BlogsMain",
                    faqMain: 'FAQMain',
                    faqContent: 'FAQContent',
                    jobs: 'Jobs',
                    customCTA: 'CustomCTA',
                    pageHeader: 'PageHeader',
                    card: 'Card',
                    carousel: 'Carousel',
                    sliderMain: 'CarouselMain',
                    useTftMain: 'TftUsesMain',
                    tftUses: 'TftUses',
                    farmingMain: 'FarmingProcessMain',
                    farmingProcess: 'FarmingProcess',
                    cultivationMain: 'CultivationProcessMain',
                    cultivationProcess: 'CultivationProcess',
                    map: 'Map',
                    roadmap: 'Roadmap',
                    marketInfoMain: 'MarketInfoMain',
                    marketInfo: 'MarketInfo',
                    mainItem: 'MainItem',
                    tft: 'AboutTft',
                    networkMain: 'NetworkMain',
                    network: 'Network',
                    subscribe: 'Subscribe',
                    team: 'Team',
                    info:'Info'
                }
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Navigation',
                path: './content/navigation/navigation.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Footer',
                path: './content/footer/footer.md',
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Person',
                path: './content/person/**/*.md',
                refs: {
                    tags: {
                        typeName: 'PersonTag',
                        create: true
                    },
                    memberships: {
                        typeName: 'Membership',
                        create: true
                    },
                    projects: 'Project'
                },
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Job',
                path: './content/page/careers/job/**/*.md',
            }
        },
        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Blog',
                path: './content/blog/**/*.md',
                templates: {
                    BlogPost: '/blog/post/:id'
                },
                refs: {
                    authors: 'Person',
                    tags: {
                        typeName: 'BlogTag',
                        create: true
                    },

                    category: {
                        typeName: 'BlogCategory',
                        create: true
                    }

                }
            }
        },

        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'News',
                path: './content/news/**/*.md',
                refs: {
                    authors: 'Person',
                    tags: {
                        typeName: 'NewsTag',
                        create: true
                    },

                    category: {
                        typeName: 'NewsCategory',
                        create: true
                    }
                }
            }
        },


        {
            use: '@gridsome/source-filesystem',
            options: {
                typeName: 'Project',
                path: './content/project/**/*.md',
                refs: {
                    authors: 'Person',
                    members: 'Person',

                    tags: {
                        typeName: 'ProjectTag',
                        create: true
                    }
                }
            }
        },

        // Tailwind
        {
            use: 'gridsome-plugin-tailwindcss',
            options: {
                tailwindConfig: './tailwind.config.js',
                purgeConfig: {
                    whitelist: ['svg-inline--fa', 'table', 'table-striped', 'table-bordered', 'table-hover', 'table-sm'],
                    whitelistPatterns: [/fa-$/, /blockquote$/, /code$/, /pre$/, /table$/, /table-$/]
                },
                presetEnvConfig: {},
                shouldPurge: false,
                shouldImport: true,
                shouldTimeTravel: true,
                shouldPurgeUnusedKeyframes: true,
            }
        },
        {
            use: 'gridsome-plugin-matomo',
            options: {
                host: 'https://analytics.threefold.io',
                siteId: 5
            }
        }
    ],
    chainWebpack: config => {
        config.resolve.alias.set('@images', '@/assets/images')
    },
    templates: {
        MarkdownPage: [{
            path: '/:id',
            component: '~/templates/MarkdownPage.vue',

        }],

        BlogTag: [{
            path: '/blog/tags/:id',
            component: '~/templates/Tag.vue'
        }],

        NewsTag: [{
            path: '/news/tags/:id',
            component: '~/templates/Tag.vue'
        }],

        ProjectTag: [{
            path: '/partners/tags/:id',
            component: '~/templates/Tag.vue'
        }],

        Membership: [{
            path: '/people/memberships/:id',
            component: '~/templates/Membership.vue'
        }],

        Blog: [{
            path: '/blog/post/:id',
            component: '~/templates/BlogPost.vue'
        }],

        News: [{
            path: '/news/post/:id',
            component: '~/templates/NewsPost.vue'
        }],

        Person: [{
            path: '/people/:id',
            component: '~/templates/Person.vue'
        }],
        PersonTag: [{
            path: '/people/tags/:id',
            component: '~/templates/Tag.vue'
        }],

        Project: [{
            path: '/partners/:id',
            component: '~/templates/Project.vue'
        }],
        Job: [{
            path: '/careers/:id',
            component: '~/templates/Job.vue'
        }],
        Info: [{
            path: '/how-it-works/:id',
            component: '~/templates/Info.vue'
        }],
    },

    transformers: {
        //Add markdown support to all file-system sources
        remark: {
            externalLinksTarget: '_blank',
            externalLinksRel: ['nofollow', 'noopener', 'noreferrer'],
            anchorClassName: 'icon icon-link',

            pathPrefix: "threefold",
            plugins: [
                ['gridsome-plugin-remark-prismjs-all', {
                    highlightClassName: "gridsome-highlight",
                    codeTitleClassName: "gridsome-code-title",
                    classPrefix: 'language-',
                    aliases: {},
                    noInlineHighlight: false,
                    showLineNumbers: false, //  `require("prismjs/plugins/line-numbers/prism-line-numbers.css");`
                    languageExtensions: [],
                    prompt: { //  `require("prismjs/plugins/command-line/prism-command-line.css");`
                        user: `root`,
                        host: `localhost`,
                        global: false,
                    }
                },
                    // '@noxify/gridsome-remark-table-align', ['@noxify/gridsome-remark-classes', {
                    //     'table': 'table table-striped',
                    //     'tableCell[align=center]': 'text-center',
                    //     'tableCell[align=right]': 'text-right'
                    // }
                ]
            ]
        }
    }
}