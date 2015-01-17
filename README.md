# docker-datomic-example

A sample Dockerfile and configuration demonstrating the use of the [pointslope/datomic-pro-starter](https://registry.hub.docker.com/u/pointslope/datomic-pro-starter/) Docker "base" image. **NEW**: Now also runs a linked container running Datomic Console!

## Getting Started

0. Install [fig][http://fig.sh]
1. Register for a free Datomic Pro Starter Edition license at [my.datomic.com](https://my.datomic.com/account/create)
2. Edit the `.credentials` files in *both* the **datomic-console** and **datomic-pro-starter** folders file adding your Datomic portal username and download key (sorry, but Docker doesn't support symlinking)
3. Add your Datomic Pro Starter Edition license key to the `datomic-pro-starter/config/dev-transactor.properties` file
4. Run `fig up`

##  Obligatory Word of Caution

This is a **sample** repository, crafted for a specific, didactic purpose. Please think carefully about the security and licensing issues associated with storing sensitive information in configuration files and use your best judgement before pushing sensitive information to hosted repositories. 

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
