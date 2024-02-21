# Oracle Does PHP
This is a collection generation PL/SQL scripts to help foster PHP development from an existing database.

Did you read this correctly? You may be thinking, "why would I want this?" Well, PHP is still the #1 web platform used, and Oracle has been the #1 database for enterprise applications for decades. Not to mention, the Oracle Cloud is a great host, with plenty of "always free" options to get started.

## What's here?
generate-model.sql
- Coding should begin with a good model. Replace the "<< TABLENAME >>" text with the table you want to generate, and run. You will get a PHP Model for the table with getters and setters.

generate-twig-templates.sql
- This is a still a work in process. Tbe goal is to replace the "<< TABLENAME >>" text with the table you want to generate and you will get code for a CRUD interface using Bootstrap CSS.

## To Do
- Finish Twig generation
- Controller generation
