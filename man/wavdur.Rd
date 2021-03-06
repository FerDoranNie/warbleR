% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wavdur.R
\name{wavdur}
\alias{wavdur}
\title{Measure the duration of sound files}
\usage{
wavdur(files = NULL, path = NULL)
}
\arguments{
\item{files}{Character vector with the names of the sound files to be measured. The sound files should be in the working directory or in the directory provided in 'path'.}

\item{path}{Character string containing the directory path where the sound files are located. 
If \code{NULL} (default) then the current working directory is used.}
}
\value{
A data frame with the duration (in seconds) of the sound files.
}
\description{
\code{wavdur} measures the duration of sound files in '.wav' format
}
\details{
This function returns the duration (in seconds) of sound files.
}
\examples{
\dontrun{
# Set temporary working directory
setwd(tempdir())

data(list = c("Phae.long1", "Phae.long2", "Phae.long3"))
writeWave(Phae.long1,"Phae.long1.wav")
writeWave(Phae.long2,"Phae.long2.wav")
writeWave(Phae.long3,"Phae.long3.wav")

wavdur()
}

}
\author{
Marcelo Araya-Salas (\email{araya-salas@cornell.edu})
}

