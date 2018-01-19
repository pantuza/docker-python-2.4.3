# Python 2.4.3 Docker image

This image is useful for running tests using docker on legacy Python 2.4
software

### How to use
```bash
$> docker run --name legacy -it --rm pantuza/python24
```
Default behavior is to enter in a Python 2.4 shell.
If you want to run something else like get a bash shell, use:
```bash
$> docker run --name legacy -it --rm pantuza/python24 bash
```

Or if you want to add your project files on the container and run your legacy
project, use:
```bash
$> docker run --name legacy -it --rm -v$(pwd):/opt/ -w /opt/ pantuza/python24
python my_project_main.py
```


### Basic Example

```bash
$> docker run --rm -it --name legacy python24:latest                                                                 (master) 18:26:35
Python 2.4.3 (#1, Jan 19 2018, 20:23:57)
[GCC 4.8.5] on linux4
Type "help", "copyright", "credits" or "license" for more information.
>>>
```


### Author
Gustavo Pantuza <gustavopantuza@gmail.com>
