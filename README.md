# SICP🦎

**Some Interesting Exercises in Structure and Interpretation of Computer Programs**
![image](https://user-images.githubusercontent.com/68733617/143594190-42b42527-a5f5-4c11-8512-4d18bf761f4b.png)

Contact me on [Telegram](https://t.me/OttoDeng)

## Usage🌲

The program is written in racket.

You can run or test the programs via [DrRacket](https://racket-lang.org) and
[Scheme](https://www.gnu.org/software/mit-scheme)

## Installation🌹



### **install Scheme on your computer**🎬

*MIT/GNU Scheme is an implementation of the Scheme programming language, providing an interpreter, compiler, source-code debugger, integrated Emacs-like editor, and a large runtime library.
MIT/GNU Scheme is best suited to programming large applications with a rapid development cycle.*

See the [website](https://www.gnu.org/software/mit-scheme) for more information.





### **Install DrRacket on your computer.**💡


You can install DrRacket on your computer by following the instructions on [DrRacket](https://racket-lang.org/download/).

**In Debian (Ubuntu):**🍥

```bash
sudo apt-get install racket
```

**In Arch Linux:**🍤

```bash
sudo pacman -S racket #or racket-minimal
```

**In Gentoo Linux:**🍡

```bash
sudo emerge -av drracket
```



Use DrRacket to install the `sicp package` like this:🕺

Open the `Package Manager`: in DrRacket choose the menu "`File`" then choose "`Package Manager`...".

In the tab "Do What I Mean" find the text field and enter: `sicp`

Finally click the "`Install`" button.

Test it. Make sure DrRacket has "Determine language from source" in the bottom left corner. Write the following program and click run:

```bash
#lang sicp
(inc 42)
```

The expected output is `43`.💫

See [SICP docs](https://docs.racket-lang.org/sicp-manual/SICP_Language.html) for help.



### **Using VSCode**😋



Whatever Operating System you use, you can have VSCode(or other IDE) to code in.

**Extentions to install：**

:one:`Magic Racket` : remember to turn to Extention Setting to change `Racket path`

:two:`AyaSEditor`: extention that suits racket language(also press `ctrl + \ `to type `λ` )

### **About Common Lisp**😚


See [Gentoo Linux Project: Common Lisp](https://wiki.gentoo.org/wiki/Project:Common_Lisp/Guide)

*Libraries*
As of writing, there are over two-hundred Common Lisp libraries supported in Gentoo Linux. All Common Lisp libraries in Gentoo are made available within the dev-lisp category in the Gentoo repository and the dev-lisp category in the lisp overlay

*Using Common Lisp*


You will need to install dev-lisp/asdf if you are planning to use Common Lisp packages or build software. Most implementations will pull that package when installed. If ASDF is not getting installed you can do it as usual

```bash
sudo emerge --ask dev-lisp/asdf
```



**👀HEY! THERE IS A CHAT GROUP!**  Ask straight for chat group ;)
