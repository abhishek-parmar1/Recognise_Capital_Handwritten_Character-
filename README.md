# Recognize_Capital_Handwritten_Character-

Objective - The final objective of the project is to recognize the images of the capital handwritten characters and print it in a file.

Tools used - Image processing tool box and the neural network training Tool box of MATLAB.

How to run -

Step1 >  Load the trained.mat ( It is the dataset in which characteristic of all the capital characters images are stored.                          It is loaded characteristics of 2000 images. Charcteristics are exracted on the basis of dct2 ( Discrete Cosine                            Transfor ). Dataset not uploaded.)
Step2 >  Run the extractor.m
Step3 >  Choose the image using the Gui created.
Step4 >  Run the final.m file.
Step5 >  Open the file result.txt for output. (Output can varry from original because 2000 images dataset is not enough to                          recognize all the character images.)
OR

Step1 >  Run the main_program.m
Step2 >  Choose the image using the Gui created.
Step3 >  Run the final.m file.
Step4 >  Open the file result.txt for output. (Output can varry from original because 2000 images dataset is not enough to                          recognize all the character images.)

Working - 

File1 > extractor.m ( select the image )
        line no 88 to 112 useful code and defined working with comments after each command.
File2 > rendering.m ( filter the image )
        line no 6 to 75 useful code and defined working with comments after each command.
File3 > character_extracter.m ( extract the character from the filtered image and get its dct charcteristics in an array(final_array) and         store it in base work space.)
        line no 5 to 45 useful code and defined working with comments after each command.
File4 > final.m ( check the retrived characteristics in dataset and store the result in result.txt )
        line no 8 to 186 useful code and defined working with comments after each command.

NOTE : nntrainer.m is to create and train the neural network with extracted features (characteristics) of input images and output                required.
