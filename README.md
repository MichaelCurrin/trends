# Trends
> Time series dashboard of trends around web searches, social media and economic indicators.

[![Made with Jekyll](https://img.shields.io/badge/Made%20with-Jekyll-blue.svg)](https://jekyllrb.com)
[![MIT license](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/MichaelCurrin/trends/blob/master/LICENSE)

## Google Trends

Use the UI on website to do searches. Choose a "search term" phrase or a topic from the droplist. Up to items can be added.

- Google Trends webpage - https://trends.google.com/

### Search

This URL is a good starting point to do searches using the Google Trend interface. This has been set to worldwide and 5 years. 

- https://trends.google.com/trends/explore?date=today%205-y&q=foo

Edit the existing term and use up to 5 terms at once. Where possible, select a concept rather than a search term (plain text), as the concept can mix together terms based on context. e.g. "frozen" is generic, but "Frozen" "The Film" will exclude frozen foods.

### Embedding

If a friend sets up a view and sends me the URL as above, then I create a new post on the site using the Google Trends JS snippet available for graphs on the Google Trends interface.

Example of embedded data snippet for "Interest over Time" widget. Note that each consists of two scripts when copy and pasted - one for the loader library and one with the actual parameters.

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
