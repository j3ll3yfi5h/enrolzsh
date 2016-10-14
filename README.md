# EnrolZSH

EnrolZSH is a dead simple zsh script, which provides you with simple deployment commands.

With the first release we introduce autoloading for specific projects. The commands are stored inside the project folder itself (`enrol/deploy.zsh`). This allows you do store all commands inside version control and makes sure all your coworkers are running the same script.
In the next version we will improve this and ship some predefined commands. We'll also allow configuration on project basis. This will remove a lot of complexitity for the developer.

## Requirements:

- oh-my-zsh (https://github.com/robbyrussell/oh-my-zsh)
- vagrant (not required, but highly recommended)

## Installation:

- Clone enrolzsh-plugin into `~/.oh-my-zsh/plugins/`
- Add enrolzsh to the plugins array inside `~/.zshrc`.
```
plugins=(git enrolzsh)
```
- Configure the global configuration file inside the enrolzsh plugin `.enrolzsh_global`.
- Make sure your folder strucutre looks like this:
..* **ER_VM_DIR:** Base folder, where the virtual machine lives (e.g ScotchBox)
..* **ER_PROJECT_DIR:** The public of the VM (mostly .../public)
..* All projects are stored inside the `ENROL_PROJECT_DIR`
- Create a `enrol` folder inside every project you create.
- Add a `deploy.zsh` file inside the created `ènrol` folder an add all your scripts there.
... A boilerplate is linked here: [EnrolZSH Project Boilerplate](https://www.google.com)
- You're ready to go.

## Available commands:

Make use of the great gloabing feature inside ZSH by making use of <TAB>.
Type `enr` and <TAB>, then <TAB> again and you will see all your possibilities.

`enrol`: Welcome screen
`enrol --version`: Get installed version
`enrol --help`: Help screen
`enrol --update`: Update enrol when via git, just works when you've cloned the enrolzsh.

`enrol.projects`: Loads all projects from the main project folder (defined inside the global settings) into the namespace.
After this command it's possible to call the project via enrol.PROJECT (PROJECT = Folder name without TLD, if you used any). If you had any script in your inside the project it will also work during runtime. This command will do the same as autoload, but just at runtime of the terminal.

Some shorthands for vagrant inside the defined VM folder:
`enrol.vu`: vagrant up
`enrol.vh`: vagrant halt
`enrol.vr()`: vagrant reload
`enrol.vs()`: vagrant ssh
`enrol.vb()`: vagrant box update