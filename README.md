# NAU Templates

Rules for templating.
Nau uses go templating. variables you have access are:
- `Name`
- `Project_name`
- `ID` 

### Initialization
All templates should have a makefile with the target `init` which should contain the necessary commands to initiate the project. This target gets run when the template is collapsed.
