#set.seed(25)
options(digits = 3)

# packages ---------------------------------------------------------------------

suppressMessages(library(knitr))
suppressMessages(library(kableExtra))

# knitr chunk options ----------------------------------------------------------

knitr::opts_chunk$set(
	fig.retina = 2,
	fig.pos = "ht",       # position figure latex mode
	fig.align = 'center',
	fig.show = "hold",
	out.width = "100%",
	dev = "svg",
	dev.args = list(png = list(type = "cairo-png"))
)
