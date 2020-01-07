# Trends
> Timeseries dashboard of trends around web searches, social media and economic indicators

## Google Trends

Use the UI on website to do searches. Choose a "search term" phrase or a topic from the droplist. Up to items can be added.

- Google Trends webpage - https://trends.google.com/

### Templates

Starting point to do searches using the UI. This has been set to worldwide and 5 years.

- https://trends.google.com/trends/explore?date=today%205-y&q=foo

Example of embedded data snippet. Note this consists of two scripts when copy and pasted - one for the loader and one with the actual parameters.

- Keep data updated with lookback from today. e.g. `today 5-y`
    ```javascript
    <script type="text/javascript" src="https://ssl.gstatic.com/trends_nrtr/2051_RC11/embed_loader.js"></script>
    <script type="text/javascript"> trends.embed.renderExploreWidget("TIMESERIES", {"comparisonItem":[{"keyword":"foo","geo":"","time":"today 5-y"}],"category":0,"property":""}, {"exploreQuery":"date=today%205-y&q=foo","guestPath":"https://trends.google.com:443/trends/embed/"}); </script> 
    ```
- Static data. This fixes the date range. e.g. `2015-01-07 2020-01-07`
    ```javascript
    <script type="text/javascript" src="https://ssl.gstatic.com/trends_nrtr/2051_RC11/embed_loader.js"></script>
    <script type="text/javascript"> trends.embed.renderExploreWidget("TIMESERIES", {"comparisonItem":[{"keyword":"foo","geo":"","time":"2015-01-07 2020-01-07"}],"category":0,"property":""}, {"exploreQuery":"date=today%205-y&q=foo","guestPath":"https://trends.google.com:443/trends/embed/"}); </script>
    ```
