# Course Repository Template

A template repository for new courses, geared toward economics courses. The template TeX files are heavily based on [Phi Adajar's templates](https://github.com/padajar/padajar-templates/tree/main). My versions are meant to be more bare-bones than theirs, with fewer features and less personalization.

## LaTeX

I primarily use VSCodium and TeXLive to manage and write course content. Installing a LaTeX distribution and configuring it to be used in VSCode/VSCodium is covered well [here](https://mathjiajia.github.io/vscode-and-latex/).

### Custom Package + Classes

The templates in this repo use a custom LaTeX package and custom classes. These include several custom functions for statistical expressions, which may be useful for econometrics and statistics courses. Here's me saying "custom" one more time for good measure. Did I mention these are custom?

To install, copy the package (.sty) and class (.cls) files in the root directory of this repo to wherever your LaTeX installation places packages and classes. Try looking at the .log file of a compiled LaTeX document to find this location. Once you've placed your .sty and .cls files there run a quick `sudo texhash` (if you're on a Unix-like machine) to refresh your TeX libraries.

### Linting

This branch of the template repo contains pre-commit linters that lint R, R-related, and LaTeX files. If you do not wish to use these linters, please use the main branch in this repo. To use the linters in this branch you will need to install [`pre-commit`](https://pre-commit.com/) and [`jarl`](https://jarl.etiennebacher.com/). 

Per this repo's license, feel free to customize the pre-commit hooks in whatever way meets your needs.
