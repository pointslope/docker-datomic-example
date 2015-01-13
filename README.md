# docker-datomic-example

A sample Dockerfile and configuration demonstrating the use of the [pointslope/docker-datomic](https://registry.hub.docker.com/u/pointslope/docker-datomic/) Docker "base" image.

## Getting Started

0. Register for a free Datomic Pro Starter Edition license at [my.datomic.com](https://my.datomic.com/account/create)
1. Edit the `.credentials` file adding your Datomic portal username and download key
2. Add your Datomic Pro Starter Edition license key to the `config/dev-transactor.properties`
3. Execute `make` on the command line to build your docker image
4. Execute `make start` on the command line to start your Datomic Pro Starter Edition container

##  The MIT License (MIT)

Copyright (c) 2015 Point Slope, LLC

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
