# oh-my-zsh

Ansible role to install and configure oh-my-zsh on both APT and YUM based distros.
> Tested on Ubuntu 14.04 64bit and Fedora 21 64bit.

## Role Variables

The role's variables are:

| Variable | Default value | Description |
|----------|---------------|-------------|
| `ohmyzsh_user` | "{{ ansible_env.USER }}" | User on which oh-my-zsh will be configured |
| `ohmyzsh_plugins` | `[git, vagrant, docker, command-not-found, gradle, lein]` | List of the plugins that should be added to oh-my-zsh |
| `ohmyzsh_theme` | `pygmalion` | Theme to be ser on oh-my-zsh |

## Example Playbook

Including an example of how to use this role:

    - hosts: all
      roles:
         - { role: mashimom.oh-my-zsh, ohmyzsh_theme: "lambda" }

## License

[MIT](LICENSE)
