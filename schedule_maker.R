
```{r}
library(lubridate)
library(gt)
# Create HTML pattern for talk links:
link_style <- "color:black; font-weight:500; text-decoration:underline;"
hover_effect <- "onmouseover='this.style.fontStyle=\"none\"' onmouseout='this.style.fontStyle=\"normal\"'"  # change fontStyle to "italic" for italic on hover
html_pattern <- glue::glue("<div>{{1}}<br><a href='{{4}}' style='{link_style}' {hover_effect}>{{2}}</a><br>{{3}} {{4}}</div>")

```

<!-- # Workshop/Demo Day 1 {.hidden} -->

```{r, day1}
schedule_day_1 <- dplyr::tribble(
  ~start_time, ~end_time, ~t_title, ~t_speakers, ~t_companies, ~url_link,
  
  "2026-02-25 10:00",
  "2026-02-25 13:00",
  "An introduction to R",
  "Daniel Sjoberg",
  "PLACEHOLDER", 
   NA,

  "2026-02-25 10:00", 
  "2026-02-25 13:00", 
  "WINDS OF WINTER", 
  "GRRM", 
  "PLACEHOLDER", 
  NA,

  "2026-02-25 10:00", 
  "2026-02-25 13:00", 
  "DREAM OF SPRING", 
  "GRRM", 
  "PLACEHOLDER", 
  NA
)

```

# Create a table for the day of events
```{r}
# Create a table for the day of events
gt(schedule_day_1) |>
  tab_header(
    title = md("<br>Workshop Day<br>Thursday, February 25, 2065<br><br>")) |> # <- insert the date
  fmt_time(columns = c(start_time, end_time), time_style = "h_m_p") |>
  cols_merge(
    columns = c( t_title, t_speakers, t_companies, url_link),
    pattern = html(html_pattern)
  ) |>
  cols_label(
    start_time ~ "Start Time",
    end_time ~ "End Time",
    t_title ~ "Talk"
  ) |>
  cols_align(align = "center") |>
  cols_width(
    c(start_time, end_time) ~ px(45),
    everything() ~ px(150)
  ) |>
  opt_align_table_header(align = "left") |>
  tab_options(
    heading.background.color = "#02b3e3",
    column_labels.background.color = "#09ce7c",

    table.width = pct(100)
  ) 

```

<!-- # Workshop/Demo Day 2 {.hidden} -->

```{r}
schedule_day_2 <- dplyr::tribble(
  ~start_time, ~end_time, ~t_title, ~t_type, ~t_speakers, ~t_companies, ~url_link,

  "2026-02-26 10:00",
  "2026-02-26 10:25",
  "Hello world",
  "logistic",
  "Ella Kaye",
  "University", 
   NA,

  "2026-02-26 10:30",
  "2026-02-26 11:00",
  "KEYNOTE BY ME",
  "keynote",
  "Hadley Wickham",
  "Posit", 
   NA,

  "2026-02-25 11:00", 
  "2026-02-25 11:30", 
  "GAME OF THRONES", 
  "talk", 
  "GRRM",
  NA, 
  NA,

  "2026-02-25 11:30", 
  "2026-02-25 12:00", 
  "CLASH OF KINGS", 
  "talk", 
  "GRRM",
  NA, 
  NA,

 "2026-02-25 12:00", 
  "2026-02-25 12:30", 
  "STORM OF SWORDS", 
  "talk", 
  "GRRM",
  NA, 
  NA,


 "2026-02-25 12:30", 
 "2026-02-25 12:40", 
  "14 year writing Break", 
  "logistic", 
  "GRRM",
  NA, 
  NA,

  "2026-02-26 13:00",
  "2026-02-26 13:30",
  "KEYNOTE BY ME",
  "keynote",
  "Danielle Navarro",
  "Posit", 
   NA,

 "2026-02-25 13:30", 
 "2026-02-25 13:35", 
  "lightning talk 1", 
  "l_talk", 
  "GRRM",
  NA, 
  NA,

   "2026-02-25 13:35", 
 "2026-02-25 13:40", 
  "lightning talk 2", 
  "l_talk", 
  "GRRM",
  NA, 
  NA,

)

```

```{r}
# Create a table for the day of events
gt(schedule_day_2) |>
  tab_header(
    title = md("<br>Talk Day<br>Friday, February 26, 2065<br><br>")) |> # <- insert the date
  fmt_time(columns = c(start_time, end_time), time_style = "h_m_p") |>
  cols_merge(
    columns = c( t_title, t_speakers, t_companies, url_link),
    pattern = html(html_pattern)
  ) |>
  cols_label(
    start_time ~ "Start Time",
    end_time ~ "End Time",
    t_title ~ "Talk"
  ) |>
  cols_align(align = "center") |>
  cols_width(
    c(start_time, end_time) ~ px(45),
    everything() ~ px(150)
  ) |>
  opt_align_table_header(align = "left") |>
  tab_options(
    heading.background.color = "#da3ab3",
    column_labels.background.color = "#02b3e3",

    table.width = pct(100)
  ) 
```