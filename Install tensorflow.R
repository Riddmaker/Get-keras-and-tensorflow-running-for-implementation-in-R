###Basic setup###
#Make sure you have Anaconda installed - make sure to set the option for the path variable during installation to TRUE
#Copy the path to your Anaconda installation
#Open the anaconda prompt (Windows Search -> Prompt) and enter conda create --prefix C:/ProgramData/Anaconda3/envs/r-reticulate python=3.9
#make sure the path is set to your individual location of your anaconda installation. THe folder envs should be empty.
#after you have entered the anaconda command the folder should contain the environment r-reticulate.

###Make sure to work outside a completely new R environment (Top Right -> Create New Project)

###Installation in R -  set variables###
#Guide R to the designated python environment (same path used in conda create)
Sys.setenv("RETICULATE_PYTHON" = "C:/ProgramData/Anaconda3/envs/r-reticulate")
#Tell R to use the python exe from the environment
reticulate::use_python('C:/ProgramData/Anaconda3/envs/r-reticulate/python.exe',required = TRUE)
#normal installing procedure accoring to https://tensorflow.rstudio.com/installation/
install.packages("tensorflow")
library(tensorflow)
install_tensorflow(conda_python_version="3.9")
#you can see in the console that R has restarted the session - we have to init the library again and paths again
Sys.setenv("RETICULATE_PYTHON" = "C:/ProgramData/Anaconda3/envs/r-reticulate")
reticulate::use_python('C:/ProgramData/Anaconda3/envs/r-reticulate/python.exe',required = TRUE)
library(tensorflow)
Sys.setenv("RETICULATE_PYTHON" = "C:/ProgramData/Anaconda3/envs/r-reticulate")
reticulate::use_python('C:/ProgramData/Anaconda3/envs/r-reticulate/python.exe',required = TRUE)
#Verify if tensorflow works
tf$constant("Hellow Tensorflow")
# A lot of warning messages show in the console - but in the end tf.Tensor(b'Hellow Tensorflow', shape=(), dtype=string) should be shown.
