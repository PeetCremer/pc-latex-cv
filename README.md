# Peet Cremer Latex CV
This is my personalized LaTeX class and repository for generating my CV.
It is based on [this](https://de.overleaf.com/latex/templates/my-resume/qxsxdtmknkfr) template by Nico Krieger, which I adapted to my needs.
Feel free to take this template and further adapt it to **your** needs ;-)

## Using this template
Just clone and use `make` (you need to have GNU make installed) to build the .pdf file. Since the fonts used require lualatex, you need to have that one installed as well. Depending on your LaTeX distribution, you also might need to install some additional LaTeX packages. By running `make` you can figure out what is missing. 

## License
This template (and the template by Nico Krieger it is build upon) is published under the the CreativeCommons BY 4.0 license. 
Feel free to adapt it to your needs, as long as you acknowledge where you took the base version from. 

## Changing the template
Using this template is pretty straightforward and self-explanatory. The commands and overall sytyle is defined in `my-resume.cls`. To change the actual content, you need to change `CV_PeetCremer_en.tex`. The CV is structured as follows
- Header with address, picture, contact info. Configure this information using
  - `\address` for your home address
  - `\birthday` for your birthday
  - `\phone` for your phone number
  - `\email` for your email address
  - `\linkedin` for your linkedin profile
  - `\github` for your github page
  - `\googlescholar` for your publication list on Google scholar
- Work history. Each entry is can be defined using the `\job` command
- Education history. Again, use the `\job` command for each entry
- Skills section. Use the `\skilllist` commands to structure each subsection in the same way. The first argument sets the name for the skill subsection, the second argument contains the skills that fall under this category. Use `\tag{Skill}` to get those nice little tag boxes.
- Project experience. Structured in the same way as the Work and Education history sections
- Teaching experience. This is again structured like the Work and Education history sections.
- Finally there is an *About Me* section. Subsections here can be created using the `\hobbylist` command, with the first arugment giving the name of the subsection and the second one the corresponding text. 
