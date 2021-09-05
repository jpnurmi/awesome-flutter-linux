# Contribution Guidelines

Add new entries to `awesome.yaml`.

## Packages

Linux-specific packages published on [pub.dev](https://pub.dev).

- `name`: pretty display name
- `pub`: package name on pub.dev
- `repo`: repository on GitHub
- `description`: optional description (defaults to pub.dev description)

## Projects

Linux-specific Flutter projects.

- `name`: pretty display name
- `repo`: repository on GitHub
- `description`: optional description (defaults to repo description)

## README.md

Copy `config.src.yaml` as `config.yaml` and fill up the [personal access token](https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token).
Once the token has been specified, `README.md` can be generated with help of [melos](https://melos.invertase.dev/):

```bash
$ dart pub global activate melos
$ melos run generate
```
