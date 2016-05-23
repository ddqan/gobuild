# What is this?
This is shell script file. 
When we want to build/install our golang code, just run this, it's easy to use and can see what we are missing

_Now we don't need to remember format your GO code, remove unused imports...anymore. This script will do it for you!_

# How to use?

* Put this file (build.sh) into your GO code root folder
* Go to that folder
* Run ` ./build.sh `
* Done. Now you will see the successful message if your code is build/install ok

Example:

```bash
cd $GOPATH/src/godemo
./build.sh
```

Or ```./build.sh install``` if you want to install your GO application

Result output:

```bash
Done. All your golang code are re-built.
```


# Cheers

