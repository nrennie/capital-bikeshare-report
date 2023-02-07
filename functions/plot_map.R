#' @example plot_map()
plot_map <- function(station_data, to_colour) {
  state <- ggplot2::map_data("county")
  ggplot2::ggplot() +
    ggplot2::geom_polygon(data = state,
                          mapping = ggplot2::aes(x = long, y = lat, group = group),
                          fill = "white",
                          color = "black") +
    ggplot2::geom_point(data = station_data,
                        mapping = ggplot2::aes(x = LONGITUDE, y = LATITUDE),
                        colour = "#cdcdcd",
                        size = 0.4) +
    ggplot2::geom_point(data = filter(station_data, ADDRESS %in% to_colour),
                        mapping = ggplot2::aes(x = LONGITUDE, y = LATITUDE),
                        colour = "#db3615",
                        size = 0.4) +
    ggplot2::annotate("text",
                      x = -77,
                      y = 39.1,
                      label = "MARYLAND",
                      size = 4,
                      family = "Commissioner") +
    ggplot2::annotate("text",
                      x = -77.2,
                      y = 38.75,
                      label = "VIRGINIA",
                      size = 4,
                      family = "Commissioner") +
    ggplot2::coord_fixed(1.3,
                         xlim = c(-77.4, -76.8),
                         ylim = c(38.7, 39.15),
                         expand = FALSE) +
    ggplot2::theme_void()
}
