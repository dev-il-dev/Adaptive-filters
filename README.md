# Adaptive-filters
Adaptive filtering is a vast area of research in the Present decade for communication researchers. Adaptive noise cancellation is an approach used for noise reduction in the speech signal. As the received signal is continuously corrupted by noise, both received signal and noise signal change continually, thus raising the need for adaptive filtering. This report deals with noise cancellation in speech signals using Adaptive noise cancellation.


# Noise cancellation

Noise cancellation (NC), or active noise reduction (ANR), is a method for reducing unwanted sound by adding a second sound specifically designed to cancel the first. In layman's terms, let's take an example of an earphone: The noise cancellation system is based on microphones that "listen" to the sounds outside and inside of the earphone, an ANC chipset inverting them and a speaker inside the earphone canceling the outside sound by the neutralizing soundwaves. A bit like taking +2 outside and adding -2 inside to make zero.

![image](https://user-images.githubusercontent.com/90281515/146786607-c13c66c5-e2c3-409a-8dbb-27e8f7351f88.png)



## Algorithm:

There are several algorithms used to calculate the "anti-noise" signal. The Least Mean Square (LMS) algorithm is comprised of two processes - a filtering process producing the output signal and the estimation error, and an adaptive process responsible for the automatic adjustment of filter tap weights.


![image](https://user-images.githubusercontent.com/90281515/146788807-233ebc1a-6321-42e7-8155-ae065254b182.png)



### “THE PROTOTYPE OF THE ALGORITHM WAS SIMULATED ON MATLAB. THE TEST SIGNAL WAS AN ELEMENTARY COSINE FUNCTION, THE FINAL  ADAPTIVE OUTPUT IS VERY SIMILAR TO THE INPUT SIGNAL, THUS VERIFYING THE ACCURACY OF THE FILTER.”



![image](https://user-images.githubusercontent.com/90281515/146786708-226ac46c-b0a2-4038-9d20-6558d93d8191.png)




![image](https://user-images.githubusercontent.com/90281515/146786727-fe0cf03a-7917-4528-ba17-ce4b62b1f9f0.png)



