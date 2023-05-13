# NAU Templates

## Naming the template
The teamplate should be named in PascalCase with a template color Specified after an underscore `_`. The colors should be hex values otherwise they will not be parsed and result in an error. Both the template name and the color is used for most of `nau`'s commands.


## Writing the template
NAU templates use Go's native templating syntax. It is sufficiently simple and agnostic to be familiar. Currently the available fields are:

- `.Name`: name of package in snake_case notation.
- `.Description`: short summary of project
- `.Author`: name of author.
- `.Email`: e-mail of author.
- `.Repo`: url of repo asociated with the package, in hyphen-case.
- `.Git`: boolean whether git is to be initiated or not in the project.

## Mandatory Files
### `.nau`
File with all files where template is needs to be colapsed. The files themselves can be colapsed. This is to avoid unnecessary errors that might occur when attempting to parse unnorthodox files that might exist in the direcory.

Example of a `.nau` file:
```text
{{.Name}}/index.html
.gitignore
makefile
tests/test_{{.Name}}.py
```
The file is deleted after the templated is parsed.
## Optional Files

### `Makefile`
NAU will interact with template and project through the Makefile. Current implementation attempts to run specific targets in two different situations:

- `init`: Run after the template as been parsed. Could be used to install packaged or initiate other build tools.
- `archive`: To be run just before project is archived. Could be used to delete heavy or unnecessary files to reduce zip size such as the node_modules or the `.git` file itself.




