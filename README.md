# quickblog
copies a template and pastes into a new directory!

yup thats pretty much it.

however the point of this is to make it easier to add another directory with everthing you need to start writing without  manualy copying boilerplate over.

the program assumes that ` /var/www/html/blog ` exists as thats where my blog page is on joelwolson.xyz
the program assumes that ` /var/www/html/blog/template ` exists to copy the template over to the new directory

the way this works is that you have a directory with a template of all of the css html and javascript you'll need for your webpage and copies it to a new directory of your choice and then opens the new directory with vim (the best text editor dont @ me)


to install the program, simply copy the ` make-blog.sh ` file and type ` chmod -x make-blog.sh ` and then run it with ` ./make-blog.sh `
or if you are like me alias it in your bash or zsh rc file so you can run it like a normal program

![ezgif-1-988795045f](https://github.com/JCRepair/quickblog/assets/147447219/52a4e9b4-12f3-4efe-8b60-2de2662bb401)
