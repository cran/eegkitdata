\name{eegdata}
\alias{eegdata}
\docType{data}
\title{
EEG data from alcoholic and control subjects
}
\description{
Contains 64-channel electroencephalography (EEG) data from 10 alcoholic and 10 control subjects participating in a visual event-related potential (ERP) experiment. Data frame contains 5 trials (replications) from each subject. Data were recorded at 256 Hz for 1 second following the presentation of the visual stimulus.
}
\usage{
data(eegdata)
}
\format{
  A data frame with 1638400 observations and the following 7 variables:
  \describe{
  \item{subject}{
Subject identification numbers (factor).
}
  \item{group}{
Subject group: "a" for alcoholic and "c" for control (factor).
}
  \item{condition}{
Experimental condition: "S1" (factor).
}
  \item{trial}{
Trial number for each replication (integer).
}
  \item{channel}{
Channel from which data was recorded (factor).
}
  \item{time}{
Time point at which data was recorded: 0,1,...,255 (integer).
}
  \item{voltage}{
Recorded EEG voltage in microvolts (numeric).
}
}}
\source{
  Bache, K. & Lichman, M. (2013). UCI Machine Learning Repository [http://archive.ics.uci.edu/ml]. Irvine, CA: University of California, School of Information and Computer Science.

  Begleiter, H. \emph{Neurodynamics Laboratory}. State University of New York Health Center at Brooklyn. 
  
  Ingber, L. (1997). Statistical mechanics of neocortical interactions: Canonical momenta indicatros of electroencephalography. \emph{Physical Review E, 55}, 4578-4593.
  
  Ingber, L. (1998). Statistical mechanics of neocortical interactions: Training and testing canonical momenta indicators of EEG. \emph{Mathematical Computer Modelling, 27}, 33-64.
}
\author{
Nathaniel E. Helwig <helwig@umn.edu>
}
\details{
Created from UCI MLR EEG training data using \code{\link{geteegdata}} with option \code{nt=5}.
}
\examples{
# see examples for eegtime, eegspace, eegica, and eegsmooth (in package eegkit)

# example code to create eegdata (not run):
# #(1)# download and untar SMNI_CMI_TRAIN.tar.gz file from UCI:
#     # http://archive.ics.uci.edu/ml/machine-learning-databases/eeg-mld/
# #(2)# eegdata=geteegdata(indir="/Users/Nate/Downloads/SMNI_CMI_TRAIN/",nt=5)
}
\keyword{datasets}
