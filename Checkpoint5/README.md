# Checkpoint5 Submission

- **COURSE INFORMATION: CSN400 NCC**
- **STUDENT’S NAME: MAXWELL AYI-BONTE**
- **STUDENT'S NUMBER: 108455197** 
- **GITHUB USER_ID: 108455197-myseneca**
- **TEACHER’S NAME: ATOOSA NASIRI**

### Table of Contents
1. [Part A - Containerize an application](#header1)
2. [Part B - Share the application](#header2)
3. [Part C - Persist the DB](#header3)
4. [Part D - Multi container apps](#header4)

### Part A - Containerize an application
#### Question1 ####
Why the build time will be different from first time?

Due to Docker's layer-based architecture, the build time for the command `docker build -t getting-started` can differ when executed again. There are several layers created by the contents of the `Dockerfile`. The layers from a previous build can be reused by Docker if the image is rebuilt without modifying the instructions.

Why the number of steps are also different?

Docker will reuse previously built layers when rebuilding the image without making any changes. In this way, the number of steps that need to be executed is reduced, resulting in a faster build time when the image is created later.

#### Question2 ####
What does `-t ` flag do? 

The `-t` stands for tag, and is used for tagging, because when you build Docker images, we can give them a unique tag to identify them. If you do not specify a tag when you create an image, the 'Docker' will notify you it is missing unless you specify the '-t' option. 
