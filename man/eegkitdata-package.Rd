\name{eegkitdata-package}
\alias{eegkitdata-package}
\alias{eegkitdata}
\docType{package}
\title{Electroencephalography Toolkit Datasets}
\description{
Contains the example EEG data used in the package eegkit. Also contains code for easily creating larger EEG datasets from the EEG Database on the UCI Machine Learning Repository.
}
\details{
%\tabular{ll}{
%Package: \tab eegkitdata\cr
%Type: \tab Package\cr
%Version: \tab 1.0\cr
%Date: \tab 2014-09-09\cr
%License: \tab GPL (>=2)\cr
%}
The data file \code{\link{eegdata}} contains 64-channel EEG data recorded from 10 alcoholic and 10 control subjects. The funtion \code{\link{geteegdata}} can be used to create larger EEG datasets from the EEG Database on the UCI Machine Learning Repository.
}
\author{
Nathaniel E. Helwig <helwig@umn.edu>

Maintainer: Nathaniel E. Helwig <helwig@umn.edu>
}
\references{
  Bache, K. & Lichman, M. (2013). UCI Machine Learning Repository [http://archive.ics.uci.edu/ml]. Irvine, CA: University of California, School of Information and Computer Science.

  Begleiter, H. \emph{Neurodynamics Laboratory}. State University of New York Health Center at Brooklyn.

  Helwig, N.E. (2014). \emph{eegkit: Toolkit for electroencephalography data}. http://CRAN.R-project.org/package=eegkit

  Ingber, L. (1997). Statistical mechanics of neocortical interactions: Canonical momenta indicatros of electroencephalography. \emph{Physical Review E, 55}, 4578-4593.
  
  Ingber, L. (1998). Statistical mechanics of neocortical interactions: Training and testing canonical momenta indicators of EEG. \emph{Mathematical Computer Modelling, 27}, 33-64.
}
\keyword{ package }
\examples{
# See examples for eegcap, eegtime, eegspace, eegica, and eegsmooth (in package eegkit)
}
