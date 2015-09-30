# tinkerbot

not unlike tinkerbell, tinkerbot is here when you need it to help with your simple tasks. specifically, deplying static projects to aws s3 buckets.

tinkerbot is a simple CLI interface that helps you create configurations locally to deploy your projects.

**requirements**

- ruby, something recent pls (2.0.x, 2.1.x, etc)
- [s3_website gem](https://github.com/laurilehmijoki/s3_website)
- [git-crypt](https://github.com/AGWA/git-crypt)
- a project of one of the types listed below
- your project is in a git repo

# installation

```bash
gem install tinkerbot
```

# usage

tinkerbot is a CLI that uses local configurations to get you all setup. 

## supported project types

tinkerbot can help deploy the following:

### middleman

### compass

### literally just a folder
