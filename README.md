# Trends
> Graphs of trends around web searches, social media and economic indicators

[![GitHub tag](https://img.shields.io/github/tag/MichaelCurrin/badge-generator?include_prereleases=&sort=semver)](https://github.com/MichaelCurrin/badge-generator/releases/)
[![License](https://img.shields.io/badge/License-MIT-blue)](#license)

[![Made with Jekyll](https://img.shields.io/badge/Jekyll-3.9-blue?logo=jekyll&logoColor=white)](https://jekyllrb.com)


<div align="center">

[![View site - GH Pages](https://img.shields.io/badge/GH_Pages-Project_site-2ea44f?style=for-the-badge)](https://michaelcurrin.github.io/trends/)

</div>


## Contribute

### Add Google Trends

Follow the [Google Trends](#google-trends) section below to do a search. Then send the URL from the address bar to me so I can tweak it and then embed graphs as a post.

<!-- TODO For future development, this will be easier to do using Pull Requests and a CMS. -->


## Data sources

### Google Trends

Use the UI on website to do searches. Choose a "search term" phrase or a topic from the droplist. Up to 5 items can be added.

- Google Trends home - [trends.google.com/](https://trends.google.com/)

Help page on sharing Google Trends searches and embedding:

- [Export, embed, and cite Trends data](https://support.google.com/trends/answer/4365538?hl=en)

#### Do a search

1. Start with a template search.
    - [trends.google.com/trends/explore?date=today%205-y&q=foo](https://trends.google.com/trends/explore?date=today%205-y&q=foo)
    - This URL is a good starting point to do searches using the Google Trend interface. I've set this to Worldwide, last 5 years and a search for the placeholder term "foo".
1. Edit the existing term and add any more if relevant. You can set to 5 terms at once. Where possible, select a concept rather than a search term (plain text), as the concept can mix together terms based on context. e.g. "frozen" is generic, but "Frozen" "The Film" will exclude frozen foods. Extra words can help - "blues" is limited but "blues music" let's you pick "Blues (genre)" as a topic.
1. Optionally upate these:
    - Location e.g. United States, Texas, South Africa, Western Cape.
    - Date range - longer or shorter period, or a fixed period.
    - Category. This can be useful to avoid noise in search terms - "blues" means something different in art, music and emotions.

#### Share search results

1. Copy the URL in the address bar.
1. Send the URL to someone so they can see the same view as you. If I've asked you to help contribute to this project, send me that URL.

#### Embedding

After I have a created a search or someone has sent me a URL, then I pick a widget and click the code button to get a JS snippet. I then add them to my Trends website.

See below for a example of embedded data snippet for "Interest over Time" widget. Note that each consists of two scripts when copy and pasted - one for the loader library and one with the actual parameters.

- Keep data updated with a look-back period from today. e.g. `today 5-y`
    ```html
    <script type="text/javascript" src="https://ssl.gstatic.com/trends_nrtr/2051_RC11/embed_loader.js"></script>
    <script type="text/javascript"> trends.embed.renderExploreWidget("TIMESERIES", {"comparisonItem":[{"keyword":"foo","geo":"","time":"today 5-y"}],"category":0,"property":""}, {"exploreQuery":"date=today%205-y&q=foo","guestPath":"https://trends.google.com:443/trends/embed/"}); </script>
    ```
- Static data. This fixes the date range. e.g. `2015-01-07 2020-01-07`
    ```html
    <script type="text/javascript" src="https://ssl.gstatic.com/trends_nrtr/2051_RC11/embed_loader.js"></script>
    <script type="text/javascript"> trends.embed.renderExploreWidget("TIMESERIES", {"comparisonItem":[{"keyword":"foo","geo":"","time":"2015-01-07 2020-01-07"}],"category":0,"property":""}, {"exploreQuery":"date=today%205-y&q=foo","guestPath":"https://trends.google.com:443/trends/embed/"}); </script>
    ```

## License

Released under [MIT](/LICENSE) by [@MichaelCurrin](https://github.com/MichaelCurrin).
