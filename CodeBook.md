### Data Dictionary

Signal.ProcFunc..(.Direction)

        Variables estimated from signals (of X/Y/Z direction) by specific process function.

        Signal:
        
            tBodyAcc-XYZ
            tGravityAcc-XYZ
            tBodyAccJerk-XYZ
            tBodyGyro-XYZ
            tBodyGyroJerk-XYZ
            tBodyAccMag
            tGravityAccMag
            tBodyAccJerkMag
            tBodyGyroMag
            tBodyGyroJerkMag
            fBodyAcc-XYZ
            fBodyAccJerk-XYZ
            fBodyGyro-XYZ
            fBodyAccMag
            fBodyAccJerkMag
            fBodyGyroMag
            fBodyGyroJerkMag

        ProdFunc:
            mean: Mean value
            std: Standard deviation
            mad: Median absolute deviation
            max: Largest value in array
            min: Smallest value in array
            sma: Signal magnitude area
            energy: Energy measure. Sum of the squares divided by the number of values.
            iqr: Interquartile range
            entropy: Signal entropy
            arCoeff: Autorregresion coefficients with Burg order equal to 4
            correlation: correlation coefficient between two signals
            maxInds: index of the frequency component with largest magnitude
            meanFreq: Weighted average of the frequency components to obtain a mean frequency
            skewness: skewness of the frequency domain signal
            kurtosis: kurtosis of the frequency domain signal
            bandsEnergy: Energy of a frequency interval within the 64 bins of the FFT of each window.

angle.(Direction.)Signal

        Angle between to vectors obtained by averaging the signals in a signal window sample.
        
        Signal:
            gravityMean-XYZ
            tBodyAccMean
            tBodyAccJerkMean
            tBodyGyroMean
            tBodyGyroJerkMean

Note: The sensor signals are captured at a rate of 50Hz, then processed and sampled in windows of 2.56 s; 
     there are 30 subjects(volunteers) in all, performing 6 different activities;
     70% of volunteers were selected generating the training data while 30% the test data.
