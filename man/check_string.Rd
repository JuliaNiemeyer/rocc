% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_string.R
\name{check_string}
\alias{check_string}
\title{Check in the scientific name string}
\usage{
check_string(scientificName = NULL)
}
\arguments{
\item{scientificName}{species name in a raw format}
}
\value{
Data frame with `scientificName` as in the original input, `scientificName_status` with the flags in original data and `scientificName_new` with a suggestion for a more correct species name. See Details for a description of flags in the column `scientificName_status`.
}
\description{
Identifies open nomenclature (aff., cf.) in species scientific name, classification under species level (var. and subsp.), and common mistakes in the a species scientific name. It creates a new column with the original string and the new suggested name. It also flags problematic names (character string with numbers, authors, wrong case, or other names besides genus and epithet etc).
}
\details{
Possible flags returned in `scientificName_status`:
\describe{
\item{\code{possibly_ok}}{scientific name following the expected pattern Genus epithet}
\item{\code{not_Genus_epithet_format}}{scientific name not following the expected pattern Genus epithet}
\item{\code{variety}}{species scientific name with variety}
\item{\code{subspecies}}{species scientific name with subspecies}
\item{\code{form}}{species scientific name with form}
\item{\code{conferre}}{open nomenclature cf. in species scientific name}
\item{\code{affinis}}{open nomenclature aff. in species scientific name}
\item{\code{name_w_authors}}{species scientific name has authors}
\item{\code{not_name_has_digits}}{species scientific name has digits, not a valid name}
\item{\code{indet}}{species identified only at genus level}
\item{\code{family_as_genus}}{family as genus, not a valid name}
\item{\code{order_as_genus}}{order as genus, not a valid name}
\item{\code{species_nova}}{species name contains an indication of a new species, possibly not yet a valid name}
\item{\code{non_ascii}}{species name has non ASCII characters, not a valid name}
}
}
\examples{
check_string("Lindsaea lancea var. falcata")
check_string(c("Lindsaea lancea var. falcata", "Asplenium Aff. truncorum"))
check_string("Asplenium sp.")

}
\author{
Sara Mortara
}
