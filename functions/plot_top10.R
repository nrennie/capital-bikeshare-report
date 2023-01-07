#' @example plot_top10(LETTERS[1:10])
plot_top10 <- function(stations10) {
  if (length(stations10) != 10) {
    stop("stations10 must be of length 10")
  }
  plot_data <- tibble::tibble(x = rep(0, 10),
                              y = 1:10,
                              num = 1:10,
                              label = stations10)
  ggplot2::ggplot(data = plot_data) +
    ggforce::geom_circle(mapping = ggplot2::aes(x0 = x, y0 = y, r = 0.4),
                         fill = "#db3615",
                         colour = "white") +
    ggplot2::geom_text(ggplot2::aes(x = x, y = y, label = num),
                       colour = "white",
                       hjust = 0.5) +
    ggplot2::geom_text(ggplot2::aes(x = x + 0.5, y = y, label = label),
                       colour = "grey10",
                       hjust = 0) +
    ggplot2::scale_x_continuous(limits = c(-0.5, 8)) +
    ggplot2::scale_y_reverse() +
    ggplot2::coord_fixed() +
    ggplot2::theme_void()
}
