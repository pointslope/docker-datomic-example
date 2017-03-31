# docker-datomic-example

This repository contains a sample Dockerfile and configuration demonstrating the use of the
[pointslope/datomic-pro-starter](https://registry.hub.docker.com/u/pointslope/datomic-pro-starter/)
Docker "base" image to run [Datomic Pro Starter Edition](http://www.datomic.com/) and the Datomic Console
application in a pair of Docker containers. The scripts to download and import the Music Brainz data
make this the cleanest and fastest way to start learning Datomic.

## Prerequisites

You'll need Docker and Docker Compose. The easiest way to get these is:

* Linux - use your distribution's package manager
* [Docker for Mac (Beta)](https://docs.docker.com/engine/installation/mac/#docker-for-mac)
* [Docker for Windows (Beta)](https://docs.docker.com/engine/installation/windows/#docker-for-windows)

## Getting Started

1. Register for a free Datomic Pro Starter Edition license at [my.datomic.com](https://my.datomic.com/account/create)
2. Edit the `.credentials` files in *both* the **datomic-console** and **datomic-pro-starter** folders file adding your Datomic portal username and download key (sorry, but Docker doesn't support symlinking)
3. Add your Datomic Pro Starter Edition license key to the `datomic-pro-starter/config/dev-transactor.properties` file
4. Run `docker-compose up`
5. The console will be available on port 9000 of your docker host's
   address. If you use Docker for (Win|Mac), it's just `localhost`. Ohterwise, use `echo $DOCKER_HOST` or `docker-machine env <local-docker-machine-vm-name>`to see what that is. E.g. [http://192.168.59.103:9000/browse](http://192.168.59.103:9000/browse)

##  Obligatory Word of Caution

This is a **sample** repository crafted for a specific didactic
purpose. Please think carefully about the security and licensing
issues associated with storing sensitive information in configuration
files and use your best judgement before pushing sensitive information
to hosted repositories.

## Loading Music Brainz Sample Data Set (Optional)

If you're following along with the Day of Datomic
[training videos](http://www.datomic.com/training.html), you will want
to load the Music Brainz data from 1968-1973 into your Datomic
container. As you might have guessed, we've added a couple of bits to
help make that easier for you.

1. In your terminal, navigate to the `datomic-pro-starter` folder under this project
2. Run the `./download-data.sh` script to extract the Music Brainz data locally
3. Edit the `docker-compose.yml` file as directed by the download script (discussed below)
4. Run `docker-compose ps` to discover the name of your Datomic container (mine is **dockerdatomicexample\_datomicdb\_1**)
5. Execute the following command:

    docker exec &lt;container&gt; restore-db &lt;storage&gt;

where &lt;container&gt; is the name of the container from step 4
above, and &lt;storage&gt; is the type of Datomic storage you're using
(dev if you've used the default properties file). The command above
might looks like this on my machine:

    docker exec dockerdatomicexample_datomicdb_1 restore-db dev

### Discussion

The Music Brainz data loading automation described above relies on a
**VOLUME** mount at `/data` in the Docker container with the Music
Brainz dataset already extracted. If you are using **docker-machine**
and this repository is checked out somewhere under `/Users`, the path
to this folder
[should be mirrored](https://github.com/boot2docker/boot2docker#user-content-virtualbox-guest-additions)
in the **Virtual Box/Docker Machine** VM.

We've found this to be the most reliable way to load the data into the
database container, as well as the most conservative of bandwidth.
Since we're storing the data locally and mounting it with the
**VOLUME** command, you can destroy and recreate the Datomic container
without having to download the data each time.

##  The MIT License (MIT)

Copyright (c) 2015-2017 Point Slope, LLC

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
