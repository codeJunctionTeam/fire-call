# Introduction to fire-call

**In this repo you will be able to find the backend classification and the API to use the backend**


As the 1st step the user should clone our repo and host it somewhere[locally, aws,gcp]. We call this step as setup the environment.
Then, the user should provide the system with a few parameters. Those parameters are for the data source. The data source can be a GitHub URL or a publicly hosted S3 bucket. All these resources[github, S3] is maintained by the user. 

Our system will run the appropriate script after identifying the data source whether it’s an image data source or an audio data source. Script will run to create the classification accordingly. 

After the classification is ready user can use his IOT device or any device to send an API request. In the API request, it has the input[sound wave, image] which the device captures. The request will use the backend classification to find out what the sound is exactly. The back end will give some output and the API will send the response back as a JSON format or some other format.

**Scenario:-  Scenario of a zoo**

**Prerequisites:- The zoo should clone our git repo and use our setup script to setup the environment.
Zoologists should provide all the sounds which the animals’ make. Eg:- they will provide an S3 bucket link which has all the sounds of the animals. Then the system will create the classification.**

Step 1: The phone zoo app captures a sound wave in the zoo near one animal’s cage.
Step 2: The device will send an API request to the system.
Step 3: The system will identify the sound wave of the animal.
Step 4: Then the API will send back the response that the sound wave captured was a lion’s roar.

