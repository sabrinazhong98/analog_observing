# "`-''-/").___..--''"`-._
#  (`6_ 6  )   `-.  (     ).`-.__.`)   WE ARE ...
#  (_Y_.)'  ._   )  `._ `. ``-..-'    PENN STATE!
#    _ ..`--'_..-_/  /--'_.' ,'
#  (il),-''  (li),'  ((!.-'
# 
# Author: Yu Zhong <yvz5525@psu.edu>
#         Weiming Hu <weiming@psu.edu>
#         Geoinformatics and Earth Observation Laboratory (http://geolab.psu.edu)
#         Department of Geography and Institute for CyberScience
#         The Pennsylvania State University
#
# This script defines some functions for data processing and computation.

synthetic.data <- function(input, wave.func = sin, error.spread = 0.4) {
  # This functions generates a vector of [length] value that are defined by the wave.func
  # and then preturbed using a random error generated from a normal distribution with the
  # mean at the original value. The standard deviation of the nromal distribution is 
  # set by the standard deviation of the original values generated from the wave function
  # times the error.spread.
  #
  
  length <- length(input)
  output <- wave.func(input)
  errors <- rnorm(length, mean = mean(output),
                  sd = error.spread * sd(output))
  output <- output + errors
  
  return(output)
}

compute.similarity <- function(search, target) {
  # This function computes and returns the similarity betweent the target and the
  # search in a moving window style.
  
  return(NA)
}