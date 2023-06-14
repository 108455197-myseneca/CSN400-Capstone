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
#### Question 1 ####
Why the build time will be different from first time?

Due to Docker's layer-based architecture, the build time for the command `docker build -t getting-started` can differ when executed again. There are several layers created by the contents of the `Dockerfile`. The layers from a previous build can be reused by Docker if the image is rebuilt without modifying the instructions.

Why the number of steps are also different?

Docker will reuse previously built layers when rebuilding the image without making any changes. In this way, the number of steps that need to be executed is reduced, resulting in a faster build time when the image is created later.

#### Question 2 ####
What does `-t ` flag do? 

The `-t` stands for tag, and is used for tagging, because when you build Docker images, we can give them a unique tag to identify them. If you do not specify a tag when you create an image, the 'Docker' will notify you it is missing unless you specify the '-t' option. 

#### Question 3 ####
Why do you still one image listed even though you have tried building image many times?

Although we repeatedly perform the command `docker build -t getting-started.,` `docker image ls` still only lists one image. This demonstrates that every command in the Dockerfile adds a new layer when creating a `Docker Image.` But because we were constructing the image without changing the 'Dockefile' instructions, 'Docker' optimises the build process by caching intermediate layers.

#### Question 4 ####
What are -d and -p flags? What does each flag do? What is the output?

The `-d` option denotes "detached" mode, in which the `Container` operates in the background and returns the command instantly, letting you to utilise the terminal for other operations. However, I saw that the `Container` was running in `Ducker desktop` while I was unable to utilise the terminal in this activity. The `-p` option specifies port mapping, allowing a connection to be established between the ports of a `Container` and those on the host computer. This feature allows you to construct and configure communication channels between the `Container` and the host environment, allowing for smooth interaction between the two entities.

```bash
$ docker run -p 1000:3000 getting-started

Using sqlite database at /etc/todos/todo.db
Listening on port 3000
...
````

#### Question 5 ####
Which port in localhost must be used to reach it?

The `Port 1000` is configured to access the `Container` on `localhost` since this port has been specially mapped to the `Container`, which is a direct communication port. However, data sent to `Port 1000` on the host system is diverted to the `Container's` port.

#### Question 6 ####
What is their difference? Can you explain how and why this was necessary?

The following `Containers` have been developed and are mapped to various `Ports,` allowing access to the `Containers` through various ports:

- The host machine's port 1000 is mapped to the container's port 3000 for the first `Container.`

- The second `Container` is mapped from the host machine's `Port 3000` to the `Container's` `Port 3000.`

#### Question 7 ####
How long did it take to create the image after you updated the code? It is still shorter than the first time you did it, why?

The intricacy of the modifications, the speed of the "host machine," and the size of the picture will all affect how quickly the image is created once the code has been updated. However, the time it takes to generate an image will vary when using previously built layers, but it won't take too long.

#### Question 8 ####
What is the error message you get when you try to run the app container?

`docker run -dp 3000:3000 getting-started`, which attempts an error, has been executed. The port 3000 is reportedly already being used by another `Container` on the host system, according to the error notice.

### Part B - Share the application

<img src="https://raw.githubusercontent.com/108455197-myseneca/CSN400-Capstone/main/Checkpoint5/dockerhub%20repo.JPG">

### Part C - Persist the DB
