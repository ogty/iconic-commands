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
- [x] Conversion to material iconic files/directories
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

> ℹ️ About Icon Data  
> If you have installed the Material Icon Theme as a Visual Studio Code extension,  
> you can remove the "icons" directory from this repository.

> **Note**  
> If brew and npm are not installed, they will be installed automatically.  
> The external commands used in this process are also installed at the same time.  
> You may also be asked to enter a password to change permissions.

## Usage:

```zsh
$ mic [options] <command> [<arguments>]
```

## Commands

- `file <file-name[@<type>]>`: Change the icon of the specified file
- `dir <directory-name[@<type>]>`: Change the icon of the specified directory
- `make <type-name> <icon-path | icon-url>`: Make your own file icon
- `conv <directory/file-name>@<type>`: Converte file or directory icon
- `replace <directory-name>`: Replaces all files and directories, including the specified directory, with the appropriate icon from the extension or name.

## Options:

- `-a, --all`: Can be used with file, dir and make commands
- `-l, --list`: Show available icons
- `-h, --help`: Show usage

## Example

```zsh
$ mic file command@sh
$ mic dir fundamentals_of_java@java
$ mic conv foo@tmp
$ mic make your-service-name your-service-logo.svg
$ mic make gopher https://cdn.worldvectorlogo.com/logos/gopher.svg
```
