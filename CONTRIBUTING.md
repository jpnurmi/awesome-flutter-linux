# Contribution Guidelines

| **NOTE:** Only Linux-specific entries are accepted into `awesome-flutter-linux`.<br/>Everything else should be contributed to [`awesome-flutter`](https://github.com/Solido/awesome-flutter) or [`awesome-flutter-desktop`](https://github.com/leanflutter/awesome-flutter-desktop). |
|---|

Do not edit `README.md`. Add new entries to `awesome.yaml`.

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
- `url`: a URL to the project website
- `description`: optional description (defaults to repo description)

## README.md

Steps to generate `README.md` for local preview:

- [Create a personal access token](https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token) on GitHub
- Install [melos](https://melos.invertase.dev/): `dart pub global activate melos`
- Run the generator: `GITHUB_TOKEN=<token> melos run generate`
