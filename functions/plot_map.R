#' @example plot_map()
plot_map <- function() {
  state <- ggplot2::map_data("county")
  ggplot2::ggplot() +
    ggplot2::geom_polygon(data = state,
                          mapping = ggplot2::aes(x = long, y = lat, group = group),
                          fill = "white",
                          color = "black") +
    ggplot2::annotate("text", x = -77, y = 39.1, label = "MARYLAND", size = 3) +
    ggplot2::annotate("text", x = -77.2, y = 38.75, label = "VIRGINIA", size = 3) +
    ggplot2::coord_fixed(1.3, xlim = c(-77.4, -76.8), ylim = c(38.7, 39.15), expand = FALSE) +
    ggplot2::theme_void()
}
