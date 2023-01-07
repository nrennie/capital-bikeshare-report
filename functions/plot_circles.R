#' @example plot_circles(1000, 987, 3000)
plot_circles <- function(pickups, stations, users) {
  plot_data <- tibble::tibble(x0 = c(1, 3, 5),
                              y0 = rep(0, 3),
                              label = c(paste0(format(pickups, big.mark = ","), "\njourneys"),
                                        paste0(format(stations, big.mark = ","), "\nstations"),
                                        paste0(format(users, big.mark = ","), "\nusers")))
  ggplot2::ggplot(data = plot_data) +
    ggforce::geom_circle(mapping = ggplot2::aes(x0 = x0, y0 = y0, r = 0.6),
                         fill = "#db3615",
                         colour = "white") +
    ggplot2::geom_text(ggplot2::aes(x = x0, y = y0, label = label),
                       colour = "white",
                       hjust = 0.5) +
    ggplot2::scale_x_continuous(limits = c(0.2, 5.8)) +
    ggplot2::scale_y_continuous(limits = c(-0.8, 0.8)) +
    ggplot2::coord_fixed() +
    ggplot2::theme_void()
}
