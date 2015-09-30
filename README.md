# tinkerbot

tinkerbot is a simple CLI interface that helps you deploy static projects to aws s3 with ease.

not unlike tinkerbell, tinkerbot is here when you need it to help with your simple tasks. specifically, deploying static projects to aws s3 buckets and guiding you through using git-crypt to store your keys.

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

tinkerbot is a CLI that saves your commonly use settings and deploy pipelines in a file (`tinkerbot_config.yml`) so you don't have to remember boring things and get to do fun stuff instead. 

## setup

run:

```bash
tinkerbot config
```

and follow the prompts on screen.

## supported project types

tinkerbot can help deploy the following:

### middleman

### compass

### literally just a folder
