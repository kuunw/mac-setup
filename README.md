# New Mac Setup

A few steps to follow to get a customized Mac experience (just for me).

## First Step

**homebrew** is at the core of the whole setup procedure, in order to install this package manager, go to [Homebrew website](https://brew.sh) and copy the installation script. Or just copy the link down below.

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

After finishing the installation, don't forget to copy & paste the command lines offered by the script to add brew to PATH.

## Window Management

One of the most used tools in my use case is a window management software called **Rectangle**, the package can be installed using this command line:

```
brew install --cask rectangle
```

Also, I use a software called *hazeOver* to dim down the background and non-active windows. I personally purchased it on App Store, but it can also be downloaded using brew:

```
brew install --cask hazeover
```

_Attention here, it is not a free software so if you really like it and want to unlock all functionalities, you may have to purchase it._

## Programming

Since I have no specific need for intensive programming, only some basic packages are installed here. You are invited to customize this part corresponding to your personal needs.

A simple, extensible code editor is all I need since no large and complex UI-involved project is on the way so far. My choice here is the common **Visual Studio Code**, it can be installed using:

```
brew install --cask visual-studio-code
```

And I use **Anaconda** to manage Python environment and packages, Anaconda can be installed both by downloading the installer provided at the official website, or through brew. However, since the installation through brew can not automatically set up the PATH (original binaries in /opt/brew/anaconda for Apple Silicon Macs), I prefered using the GUI installer even though it's absolutely not geeky.

After Ananconda installed, where we open the terminal, we can normally see the `(base)` before the prompt. That means `(base)` enviroment is automatically activated at the openning of the terminal. Here, I don't use `(base)` as my development environment since Python 3.9 has a compatibility issue with **pulp**, the package for linear programming that I use the most.

So the first thing I want to do is to create a new environment called `(pulp)` with Python version 3.8. It can be done using this command line:

```
conda create -n pulp python=3.8
```

With environment `(pulp)` created, we thus need to install packages needed for all of my works (**pulp** and **gurobi** in this case).

```
conda activate pulp
conda install -c conda-forge pulp
conda install -c gurobi gurobi
# then activate the license for Gurobi
```

