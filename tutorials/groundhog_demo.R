# Liam GW Johnson 2022-09-02
# demonstration of R package 'groundhog'


# if you haven't already, download and install the package

# install.packages("groundhog")


# load it

library(groundhog)

# load a package using groundhog

groundhog.library(dplyr, date = "2022-08-31") # 'date' must be at least two days ago


# the first time you run 'groundhog.library()', the function will create a folder
# /home/user/R_groundhog/groundhog_library, where it will store the packages it
# installs. It will ask for permission to do this - type 'OK'


# behind the scenes, 'groundhog.library()' does a few things:

#   determine what version of 'package' was current on 'date'
#   check if appropriate version of 'package' is installed to /groundhog_library
#       if yes, load it
#       if no, install it then load it


# this way, when you give your script to someone else you can be sure that they're
# using the same package versions as you - sometimes there are major changes between
# versions of packages, so using the wrong version might break your script


# unlike regular 'library()', 'groundhog.library()' can also accept a vector of
# multiple package names to load at once:

groundhog.library( c("ggplot2", "viridis", "RColorBrewer"),
                   date = "2022-08-31")

