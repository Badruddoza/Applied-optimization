# clear memory
rm(list=ls())

# in probability theory, the "birthday problem" considers the probability 
# that in a set of n randomly chosen people, some pair of them will
# have the same birthday

# assume there are k individuals
k=23

# assuming each day is equally likely for birth
# probability of no pair of individuals share a birthday
# or all people have different birthdays

# probability of person 1 has a birthday
365/365

# given person 1 has taken a day, 
# person 2 must have birthday in remaining days
364/365

# given person 1,2 have taken two days
# person 3 must have birthday in remaining days
363/365

# th list goes on till kth person
# so the conditional probability of no pair of
# individuals share a birthday is
pb0<-1
for(i in 1:k-1){
  print(365-i)
  placeholder<-(365-i)/365
  print(placeholder)
  pb0<-pb0*placeholder
  print(pb0)
  }
pb0

# so the probability that at least one pair
# of individuals share a birthday is
pb1<-1-pb0
pb1


# numerical method
dates=sample(1:365,k,replace=T)
sort(dates)
sort(unique(dates))
length(dates)!=length(unique(dates))
# if true, then at least two people have the same birthday

# how often is this true?
count=0
runs=10000
for(i in 1:runs){
  dates=sample(1:365,k,replace=T)
  if(length(dates)!=length(unique(dates))){
   count=count+1
  }
}
print(count/runs)
