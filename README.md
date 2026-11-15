
# TMDB 5000 Movies — SQL Data Analysis

A collection of SQL queries exploring and analyzing the **TMDB 5000 Movies** dataset. This repository showcases fundamental to intermediate SQL querying techniques, including filtering, sorting, aggregation, and data extraction.

## 📊 Dataset Overview

The analysis is performed on the `tmdb_5000_movies` table, which contains metadata for approximately 5,000 movies from The Movie Database (TMDB). Key columns utilized include:
* `title`: Name of the movie
* `vote_average`: Average user rating (0–10 scale)
* `vote_count`: Total number of user votes received
* `release_date`, `budget`, `revenue`, and `popularity`

## 🔍 Highlighted Queries

### Top 10 Highest-Rated Movies (with Minimum Vote Threshold)
Identifies the top 10 highest-rated movies while filtering out films with fewer than 1,000 votes to ensure statistical reliability.

```sql
SELECT title, vote_average
FROM tmdb_5000_movies
WHERE vote_count > 1000
ORDER BY vote_average DESC
LIMIT 10;
