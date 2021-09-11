# Contribution Guidelines

Only Linux-specific entries are accepted into `awesome-flutter-linux`.<br/>Everything else should be contributed to [`awesome-flutter`](https://github.com/Solido/awesome-flutter) or [`awesome-flutter-desktop`](https://github.com/leanflutter/awesome-flutter-desktop).

| **NOTE:** Do not edit or commit `README.md`. Add new entries to `awesome.yaml`. |
|---|

## Packages

Linux-specific packages published on [pub.dev](https://pub.dev).

- `name`: pretty display name
- `pub`: package name on pub.dev
- `github`: repository on GitHub
- `description`: optional description (defaults to pub.dev or GitHub description)

## Projects

Linux-specific Flutter projects.

- `name`: pretty display name
- `url`: a URL to the project website
- `github`: repository on GitHub
- `description`: optional description (defaults to GitHub description)

## README.md

Steps to generate `README.md` for local preview:

- [Create a personal access token](https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token) on GitHub
- Install [awesome-generator](https://melos.invertase.dev/):
  `dart pub global activate --source git https://github.com/jpnurmi/awesome-generator`

- Run the generator: `awesome-generator --token=<token> awesome.yaml`
