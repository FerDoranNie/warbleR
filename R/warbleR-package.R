#' warbleR: A package to streamline bioacoustic analysis
#' 
#' warbleR is a package designed to streamline analysis of animal acoustic signals in R. This 
#' package allows users to collect open-access avian vocalizations data or input their 
#' own data into a workflow that facilitates spectrographic visualization 
#' and measurement of acoustic parameters. warbleR makes fundamental sound 
#' analysis tools from the R package seewave, as well as new tools not yet 
#' offered in the R environment, readily available for batch process analysis. The functions 
#' facilitate searching and downloading avian vocalizations from Xeno-Canto 
#' \url{http://www.xeno-canto.org/}, creating maps of Xeno-Canto recordings, 
#' converting .mp3 files to .wav files, checking .wav files, automatically detecting acoustic signals, selecting 
#' them manually, printing spectrograms of whole recordings or individual signals, measuring signal 
#' to noise ratio, cross-correlation and performing acoustic measurements.
#'      
#' The warbleR package offers three overarching categories of
#'   functions:
#'   
#'   \itemize{
#'   
#'   \item Obtaining avian vocalization data \item Sound file management \item Streamlined 
#'   (bio)acoustic analysis in R }
#'   
#' @section Obtaining avian vocalization data:
#'   
#'   \code{\link{querxc}}: Download recordings and metadata from Xeno-Canto
#'   
#'   \code{\link{xcmaps}}: Create maps to visualize the geographic spread of Xeno-Canto recordings
#'   
#'   \code{\link{imp.syrinx}}: Importing Syrinx selections
#'   
#'   \code{\link{imp.raven}}: Importing Raven selections
#'   
#' @section Managing sound files:
#'   
#'   \code{\link{mp32wav}}: Convert several .mp3 files in working directory to .wav
#'   format
#'   
#'   \code{\link{checksels}}: Check whether selections can be read by subsequent functions
#'   
#'   \code{\link{checkwavs}}: Check whether .wav files can be read by subsequent 
#'   functions and the minimum windows length ("wl" argument) that can be used
#'   
#'   \code{\link{fixwavs}}: Fix .wav files to allow importing them into R
#'   
#'   \code{\link{wavdur}}: Determine the duration of sound files
#'   
#' @section Exploring/analyzing signal structure:
#'   
#'   \code{\link{autodetec}}: Automatically detect start and 
#'   end of acoustic signals
#'   
#'   \code{\link{manualoc}}: Interactive spectrographic view to measure start and 
#'   end of acoustic signals
#' 
#'   \code{\link{autodetec}}: Automatic detection of acoustic signals based on ampltiude 
#'
#'   \code{\link{seltailor}}: Interactive view of spectrograms to tailor start and end of selections
#'   
#'   \code{\link{lspec}}: Produce spectrograms of whole recordings split into 
#'   multiple rows
#'   
#'   \code{\link{lspec2pdf}}: Combine lspec images to single pdf files
#'   
#'   \code{\link{specreator}}: Create spectrograms of manualoc selections
#'   
#'   \code{\link{snrspecs}}: Create spectrograms to visualize margins over which 
#'   noise will be measured by sig2noise
#'   
#'   \code{\link{sig2noise}}: Measure signal-to-noise ratio across multiple files
#'   
#'   \code{\link{trackfreqs}}: Create spectrograms to visualize frequency 
#'   measurements
#'   
#'   \code{\link{filtersels}}: Filter selection data frames based on filtered image files
#'      
#'   \code{\link{specan}}: Measure acoustic parameters on selected acoustic 
#'   signals
#'   
#'   \code{\link{xcorr}}: Pairwise cross-correlation of multiple signals  
#'   
#'   \code{\link{xcorr.graph}}: Pairwise cross-correlation of multiple signals
#'   
#'   \code{\link{dfts}}: Extract the dominant frequency values across the signal as a time series
#'   
#'   \code{\link{ffts}}: Extract the fundamental frequency values across the signal as a time series
#'   
#'   \code{\link{sp.en.ts}}: Extract the spectral entropy values across the signal as a time series
#'   
#'   \code{\link{dfDTW}}: Calculate acoustic dissimilarity using dynamic time warping
#'    on dominant frequency contours
#'   
#'   \code{\link{ffDTW}}: Calculate acoustic dissimilarity using dynamic time warping
#'   on fundamental frequency contours
#'   
#'   \code{\link{compare.methods}}: Produce graphs to visually assess performance of acoustic 
#'   distance measurements 
#'   
#'   \code{\link{catalog}}: Produce a vocalization catalog with spectrograms in and array with
#'   several rows and columns  
#'   
#'   \code{\link{catalog2pdf}}: Combine catalog images to single pdf files
#'   
#'   \code{\link{coor.graph}}: Creat graphs of coordinated singing 
#'   
#'   \code{\link{coor.test}}: Assess statistical significance of singing coordination 
#'   
#' @import maps
#' @import rjson
#' @import RCurl
#' @import pbapply
#' @import tuneR
#' @import seewave
#' @import fftw
#' @import graphics
#' @import grDevices
#' @import utils
#' @import parallel
#' @import foreach
#' @import iterators
#' @import bitops
#' @import jpeg
#' @importFrom doParallel registerDoParallel
#' @importFrom dtw dtwDist
#' @importFrom stats cor dist aggregate approx ave princomp time ts predict smooth.spline complete.cases 
#' 
#' @author Marcelo Araya-Salas & Grace Smith Vidaurre
#'   
#'   Maintainer: Marcelo Araya-Salas (\email{araya-salas@@cornell.edu})
#'   
#' @docType package
#' @name warbleR
#' @details License: GPL (>= 2)  
NULL
#> NULL 
#'
