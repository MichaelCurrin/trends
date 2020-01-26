# Trends
> Time series dashboard of trends around web searches, social media and economic indicators.

[![Made with Jekyll](https://img.shields.io/badge/Made%20with-Jekyll-blue.svg)](https://jekyllrb.com)
[![GitHub tag](https://img.shields.io/github/tag/MichaelCurrin/trends.svg)](https://GitHub.com/MichaelCurrin/trends/tags/)
[![MIT license](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/MichaelCurrin/trends/blob/master/LICENSE)

- Project website: [michaelcurrin.github.io/trends/](https://michaelcurrin.github.io/trends/)

## Data sources

### Google Trends

Use the UI on website to do searches. Choose a "search term" phrase or a topic from the droplist. Up to items can be added.

- Google Trends webpage - https://trends.google.com/

#### Search

How to do a search on Google Trends and share your results.

1. Start with a template search.
    - This URL is a good starting point to do searches using the Google Trend interface.  https://trends.google.com/trends/explore?date=today%205-y&q=foo
    -  I've set this to Worldwide, last 5 years and a search for the term "foo".
1. Now edit the existing term and any more if relevant. You can set to 5 terms at once. Where possible, select a concept rather than a search term (plain text), as the concept can mix together terms based on context. e.g. "frozen" is generic, but "Frozen" "The Film" will exclude frozen foods.
1. Optionally update the location such as from Worldwide to South Africa, or United States.
1. Optionally set the date range to longer or shorter, or a fixed date.
1. Copy the URL in the address bar.
1. Send the URL to someone so they can see the same view as you. If I've asked you to help contribute to this project, send me that URL.

#### Embedding

After I have a created a search or someone has sent me a URL, then I pick a widget and click the code button to get a JS snippet. I then  add them to my Trends website.

See below for a example of embedded data snippet for "Interest over Time" widget. Note that each consists of two scripts when copy and pasted - one for the loader library and one with the actual parameters.

- Keep data updated with a look-back period from today. e.g. `today 5-y`
    ```javascript
    <script type="text/javascript" src="https://ssl.gstatic.com/trends_nrtr/2051_RC11/embed_loader.js"></script>
    <script type="text/javascript"> trends.embed.renderExploreWidget("TIMESERIES", {"comparisonItem":[{"keyword":"foo","geo":"","time":"today 5-y"}],"category":0,"property":""}, {"exploreQuery":"date=today%205-y&q=foo","guestPath":"https://trends.google.com:443/trends/embed/"}); </script>
    ```
- Static data. This fixes the date range. e.g. `2015-01-07 2020-01-07`
    ```javascript
    <script type="text/javascript" src="https://ssl.gstatic.com/trends_nrtr/2051_RC11/embed_loader.js"></script>
    <script type="text/javascript"> trends.embed.renderExploreWidget("TIMESERIES", {"comparisonItem":[{"keyword":"foo","geo":"","time":"2015-01-07 2020-01-07"}],"category":0,"property":""}, {"exploreQuery":"date=today%205-y&q=foo","guestPath":"https://trends.google.com:443/trends/embed/"}); </script>
    ```
