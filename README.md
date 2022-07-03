<h1 align="center">Material Iconic Commands</h1>

<p align="center">
  The icon data is used from <a href="https://github.com/PKief/vscode-material-icon-theme">vscode-material-icon-theme</a>.
</p>

<div align="center">
 <img src="./sample.png" alt="sample" width="50%" />
</div>

## Feature

- [x] Creation of material iconic files
- [x] Creation of material iconic directories
- [ ] Conversion to material iconic files/directories
- [ ] Creation of original icons
- [ ] Support for free icons
- [ ] Replace all existing folders and files with new icons

## External Commands Used

- [librsvg](https://wiki.gnome.org/Projects/LibRsvg)
- [fileicon](https://www.npmjs.com/package/fileicon)

## Setup

```zsh
$ cd ~/
$ git clone https://github.com/ogty/material-iconic-commands
$ source ~/material-iconic-commands/setup.sh
```

> **Note**  
> If brew and npm are not installed, they will be installed automatically.  
> The external commands used in this process are also installed at the same time.  
> You may also be asked to enter a password to change permissions.

## Usage

```zsh
$ mimkdir <directory-name>
$ mimkdir <directory-name>@<icon> # Used when the <directory-name> does not match the icon correspondence
$ mitouch <file-name>
```

## Examples

```zsh
$ mimkdir images
$ mimkdir fundamentals_of_java@java
$ mitouch README.md
```
