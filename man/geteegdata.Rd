\name{geteegdata}
\alias{geteegdata}
\title{
Create Data Matrix from UCI EEG Database
}
\description{
Creates a data matrix (observations by variables) from the EEG Database on UCI Machine Learning Repository. Data matrix has 7 variables: subject, group, condition, trial, channel, time, and voltage. See \code{\link{eegdata}} and Details for more information.
}
\usage{
geteegdata(indir, outdir = indir, cond = c("S1", "S2m", "S2n"), nt = NULL,
           filename = "eegdata", filetype = c(".rda", ".csv", ".txt"))
}
\arguments{
  \item{indir}{
Input directory (containing EEG data source folders).
}
  \item{outdir}{
Output directory (to save EEG data matrix file).
}
  \item{cond}{
Condition to read-in: S1=single stimulus, S2m=two matching stimuli, S2n=two non-matching stimuli.
}
  \item{nt}{
Number of trials to read-in for each subject (default is all trials).
}
  \item{filename}{
Name for EEG data matrix (default \code{eegdata}).
}
  \item{filetype}{
Type of file to save (default is R data file .rda).
}
}
\value{
Creates and saves a data matrix file.
}
\references{
Bache, K. & Lichman, M. (2013). UCI Machine Learning Repository [http://archive.ics.uci.edu/ml]. Irvine, CA: University of California, School of Information and Computer Science.

  Begleiter, H. \emph{Neurodynamics Laboratory}. State University of New York Health Center at Brooklyn. 
  
  Ingber, L. (1997). Statistical mechanics of neocortical interactions: Canonical momenta indicatros of electroencephalography. \emph{Physical Review E, 55}, 4578-4593.
  
  Ingber, L. (1998). Statistical mechanics of neocortical interactions: Training and testing canonical momenta indicators of EEG. \emph{Mathematical Computer Modelling, 27}, 33-64.
}
\author{
Nathaniel E. Helwig <helwig@umn.edu>
}
\details{
EEG Database on UCI website contains 64-channel electroencephalography (EEG) data from alcoholic and control subjects participating in a visual event-related potential (ERP) experiment. Subjects were exposed to three experimental conditions: S1 single visual stimulus, S2m two matching visual stimuli, S2n two non-matching visual stimuli. Each subject participated in multiple trials (replications) of each experimental condition. Data were recorded at 256 Hz for 1 second following the presentation of the visual stimulus/stimuli.
}
\examples{
##########   EXAMPLE 1: UCI TRAIN DATA (not run)   ##########

# Note: you need to change 'indir' and 'outdir' in Steps 2-4

# #(1)# download and untar SMNI_CMI_TRAIN.tar.gz file from UCI:
# #   # http://archive.ics.uci.edu/ml/machine-learning-databases/eeg-mld/

##### for Unix/Mac  #####

# #(2)# extract condition "S1" and save as .rda
# eegS1=geteegdata(indir="/Users/Nate/Downloads/SMNI_CMI_TRAIN/",
#                  cond="S1",filename="eegtrainS1")
                   
# #(3)# extract condition "S2m" and save as .rda
# eegS2m=geteegdata(indir="/Users/Nate/Downloads/SMNI_CMI_TRAIN/",
#                   cond="S2m",filename="eegtrainS2m")
                   
# #(4)# extract condition "S2n" and save as .rda
# eegS2n=geteegdata(indir="/Users/Nate/Downloads/SMNI_CMI_TRAIN/",
#                   cond="S2n",filename="eegtrainS2n")

# #(5)# combine conditions
# eegdata=rbind(eegS1,eegS2m,eegS2n)

##### for Windows  #####

# #(2)# extract condition "S1" and save as .rda
# eegS1=geteegdata(indir="C:/Users/Nate/Downloads/SMNI_CMI_TRAIN/",
#                  cond="S1",filename="eegtrainS1")
                   
# #(3)# extract condition "S2m" and save as .rda
# eegS2m=geteegdata(indir="C:/Users/Nate/Downloads/SMNI_CMI_TRAIN/",
#                   cond="S2m",filename="eegtrainS2m")
                   
# #(4)# extract condition "S2n" and save as .rda
# eegS2n=geteegdata(indir="C:/Users/Nate/Downloads/SMNI_CMI_TRAIN/",
#                   cond="S2n",filename="eegtrainS2n")

# #(5)# combine conditions
# eegdata=rbind(eegS1,eegS2m,eegS2n)


##########   EXAMPLE 2: UCI TEST DATA (not run)   ##########

# # Note: you need to change 'indir' and 'outdir' in Steps 2 and 3

# #(1)# download and untar SMNI_CMI_TEST.tar.gz file from UCI:
# #   # http://archive.ics.uci.edu/ml/machine-learning-databases/eeg-mld/

##### for Unix/Mac  #####

# #(2)# extract condition "S1" and save as .rda
# eegS1=geteegdata(indir="/Users/Nate/Downloads/SMNI_CMI_TEST/",
#                  cond="S1",filename="eegtestS1")
                   
# #(3)# extract condition "S2m" and save as .rda
# eegS2m=geteegdata(indir="/Users/Nate/Downloads/SMNI_CMI_TEST/",
#                   cond="S2m",filename="eegtestS2m")
                   
# #(4)# extract condition "S2n" and save as .rda
# eegS2n=geteegdata(indir="/Users/Nate/Downloads/SMNI_CMI_TEST/",
#                   cond="S2n",filename="eegtestS2n")

# #(5)# combine conditions
# eegdata=rbind(eegS1,eegS2m,eegS2n)

##### for Windows  #####

# #(2)# extract condition "S1" and save as .rda
# eegS1=geteegdata(indir="C:/Users/Nate/Downloads/SMNI_CMI_TEST/",
#                  cond="S1",filename="eegtestS1")
                   
# #(3)# extract condition "S2m" and save as .rda
# eegS2m=geteegdata(indir="C:/Users/Nate/Downloads/SMNI_CMI_TEST/",
#                   cond="S2m",filename="eegtestS2m")
                   
# #(4)# extract condition "S2n" and save as .rda
# eegS2n=geteegdata(indir="C:/Users/Nate/Downloads/SMNI_CMI_TEST/",
#                   cond="S2n",filename="eegtestS2n")

# #(5)# combine conditions
# eegdata=rbind(eegS1,eegS2m,eegS2n)


##########   EXAMPLE 3: UCI FULL DATA (not run)   ##########

# #(1)# download and untar eeg_full.tar file from UCI:
# #   # http://archive.ics.uci.edu/ml/machine-learning-databases/eeg-mld/

##### for Unix/Mac  #####

# #(2)# extract condition "S1" and save as .rda
# eegS1=geteegdata(indir="/Users/Nate/Downloads/eeg_full/",
#                  cond="S1",filename="eegfullS1")
                   
# #(3)# extract condition "S2m" and save as .rda
# eegS2m=geteegdata(indir="/Users/Nate/Downloads/eeg_full/",
#                   cond="S2m",filename="eegfullS2m")
                   
# #(4)# extract condition "S2n" and save as .rda
# eegS2n=geteegdata(indir="/Users/Nate/Downloads/eeg_full/",
#                   cond="S2n",filename="eegfullS2n")

# #(5)# combine conditions
# eegdata=rbind(eegS1,eegS2m,eegS2n)

##### for Windows  #####

# #(2)# extract all conditions and save as .rda (default use)
# eegS1=geteegdata(indir="C:/Users/Nate/Downloads/eeg_full/",
#                  cond="S1",filename="eegfullS1")
                   
# #(3)# extract condition "S2m" and save as .rda
# eegS2m=geteegdata(indir="C:/Users/Nate/Downloads/eeg_full/",
#                   cond="S2m",filename="eegfullS2m")
                   
# #(4)# extract condition "S2n" and save as .rda
# eegS2n=geteegdata(indir="C:/Users/Nate/Downloads/eeg_full/",
#                   cond="S2n",filename="eegfullS2n")

# #(5)# combine conditions
# eegdata=rbind(eegS1,eegS2m,eegS2n)
}