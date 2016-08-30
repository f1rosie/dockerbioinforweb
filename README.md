dockerjingjing/bioinforweb

=================


To create the image `dockerjingjing/bioinforweb`, execute the following command on the dockerjingjing/bioinforweb folder:

	docker build -t dockerjingjing/bioinforweb .

Running your dockerjingjing/bioinforweb docker image create docker container, and external prots 80 and 3306 in all interface to your container.
------------------------------

	docker run -d -p 80:80 -p 3306:3306 dockerjingjing/bioinforweb

Test your deployment:

	curl http://localhost/

Apache2 test web page

And then test it:

	curl http://localhost/JL/ProjectPresentation.php

Then show you bioinformatics webpage!

Please try it!

