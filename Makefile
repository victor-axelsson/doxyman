all:
	doxygen Doxyfile
	make -C ./latex  
	cp ./latex/refman.pdf documentation.pdf
	sudo rm -r latex 
	echo '<a href="html/index.html">See documentation</a>' >> documentation.html

clean:
	sudo rm -r latex html documentation.pdf documentation.html
