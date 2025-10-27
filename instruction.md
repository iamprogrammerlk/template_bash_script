# Developer Instructions

## 🪧 Usage

- Clone the [template repository][template_bash_script] and start building

  ```
  git clone --recurse-submodules https://github.com/iamprogrammerlk/template_bash_script.git
  ```

> [!IMPORTANT]
> Don't forget the `--recurse-submodules` option,

If you already cloned the project and forgot `--recurse-submodules`, You must run following two commands from
the main project `git submodule init` to initialize your local configuration file, and `git submodule update` to
fetch all the files from the `template_bash_script` project, you can use the foolproof
`git submodule update --init --recursive` command to also initialize, fetch and checkout any nested submodules.

- Run the following command time to time in your project to keep up to date with the latest version of
  the Pretty Bash Library.

  ```
  git submodule update --remote
  ```

# 🪏 Examples

Open the `source/template_bash_script.sh` file to play around.

- Make the 'template_bash_script.sh' executable

  ```
  sudo chmod +x source/template_bash_script.sh
  ```

- Then run

  ```
  ./source/template_bash_script.sh
  ```

[template_bash_script]: https://github.com/iamprogrammerlk/template_bash_script

## Library

This template uses the latest version of the Pretty Bash Library

