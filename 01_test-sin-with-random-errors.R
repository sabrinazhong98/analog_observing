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
# This script implements a test case. It first generates synthesized data from a 
# sine function with random errors. And then, a temporal similairty is calculated
# and the ones with highest similarity are selected as ensemble members.
#

sourec('functions.R')

# Generate synthetic data
input <- seq(1, 100, by = .8)
search <- synthetic.data(input)

# Preview the search data values
plot(search, type = 'l')

# Generate target data
input <- seq(1, 5, by = .8)
target <- synthetic.data(input)

# Compute similarity
sims <- compute.similarity(search, target)

# Sort the similarity by decreasing order
indices <- order(sims, decreasing = T)