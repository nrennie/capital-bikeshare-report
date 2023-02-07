#' @example plot_top10(LETTERS[1:10])
plot_top5 <- function(stations5) {
  if (length(stations5) != 5) {
    stop("stations5 must be of length 5")
  }
  plot_data <- tibble::tibble(x = rep(0, 5),
                              y = 1:5,
                              num = 1:5,
                              label = stations5)
  ggplot2::ggplot(data = plot_data) +
    ggforce::geom_circle(mapping = ggplot2::aes(x0 = x, y0 = y, r = 0.4),
                         fill = "#db3615",
                         colour = "white") +
    ggplot2::geom_text(ggplot2::aes(x = x, y = y, label = num),
                       colour = "white",
                       fontface = "bold",
                       size = 5,
                       hjust = 0.5,
                       family = "Commissioner") +
    ggplot2::geom_text(ggplot2::aes(x = x + 0.5, y = y, label = str_wrap(label, 40)),
                       colour = "grey10",
                       size = 6,
                       hjust = 0,
                       family = "Commissioner") +
    ggplot2::scale_x_continuous(limits = c(-0.5, 8)) +
    ggplot2::scale_y_reverse() +
    ggplot2::coord_fixed() +
    ggplot2::theme_void()
}
