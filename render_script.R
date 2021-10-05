render_report = function(title, ymin=1950, ymax=1960) {
  rmarkdown::render(
    "model.Rmd",
    params = list(
      name = title,
      ymin = ymin,
      ymax = ymax,
      echoes = FALSE
    ),
    envir = new.env(parent = globalenv()
  ),
    output_file = paste0("Report_gapminder_model-",ymin,"-",ymax,".html")
  )
}

render_report(title="Year-Pop_model", ymin=1950, ymax=1960)
render_report(title="Year-Pop_model", ymin=1960, ymax=2000)
render_report(title="Year-Pop_model", ymin=1950, ymax=2007)
