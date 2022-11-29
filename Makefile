CFLAGS=-std=c11 -g -static

clean:
		rm -f 9cc *.o *~ tmp*

test: 
	docker run -it -w /home/usr/9cc --mount type=bind,source=$(PWD),target=/home/usr/9cc compilerbook bash test.sh 


.PHONY: test clean 
