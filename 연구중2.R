install.packages("devtools")
devtools::install_github("mattflor/chorddiag")
library(chorddiag)

m <- matrix(c(11975,  5871, 8916, 2868,
              1951, 10048, 2060, 6171,
              8010, 16145, 8090, 8045,
              1013,   990,  940, 6907),
            byrow = TRUE,
            nrow = 4, ncol = 4)
haircolors <- c("Hypertension", "Lipid metabolism disorders", "Chronic low back pain","Severe vision reduction")
dimnames(m) <- list(have = haircolors,
                    prefer = haircolors)
m
#             prefer
#   have     black blonde brown  red
#     black  11975   5871  8916 2868
#     blonde  1951  10048  2060 6171
#     brown   8010  16145  8090 8045
#     red     1013    990   940 6907

groupColors <- c("#000000", "#FFDD89", "#957244", "#F26223")
chorddiag(m, groupColors = groupColors, groupnamePadding = 40)
