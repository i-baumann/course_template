# Course Repository Template

A template repository for new courses, geared toward economics courses. The template TeX files are heavily based on [Phi Adajar's templates](https://github.com/padajar/padajar-templates/tree/main). My versions are meant to be more bare-bones than theirs, with fewer features and less personalization.

## LaTeX

I primarily use VSCodium and TeXLive to manage and write course content. Installing a LaTeX distribution and configuring it to be used in VSCode/VSCodium is covered well [here](https://mathjiajia.github.io/vscode-and-latex/).

### Custom Package + Classes

The templates in this repo use a custom LaTeX package and custom classes. These include several custom functions for statistical expressions, which may be useful for econometrics and statistics courses. Here's me saying "custom" one more time for good measure. Did I mention these are custom?

To install, copy the package (.sty) and class (.cls) files in the root directory of this repo to wherever your LaTeX installation places packages and classes. Try looking at the .log file of a compiled LaTeX document to find this location. Once you've placed your .sty and .cls files there run a quick `sudo texhash` (if you're on a Unix-like machine) to refresh your TeX libraries.

### Hooks and Linting

This template repo contains pre-commit hooks to deploy linters that lint R, R-related, and LaTeX files. To use these linters you will need to install [`pre-commit`](https://pre-commit.com/) and [`jarl`](https://jarl.etiennebacher.com/). Check `.pre-commit-config.yaml` for details about what pre-commit hooks are deployed and their options.

The hooks in this template are designed to meet my own workflows and preferences and may change over time. Per this repo's license, feel free to customize the hooks in whatever way meets your needs. Or disable them entirely if you'd prefer not to use them.
