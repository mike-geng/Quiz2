all: college

college: college.o course.o collegemain.o
	g++ college.o course.o collegemain.o -o college

collegemain.o: collegemain.cc course.h college.h
	g++ -c collegemain.cc course.h college.h

course.o: course.cc course.h
	g++ -c course.cc course.h

college.o: college.cc college.h
	g++ -c college.cc college.h

clean:
	-rm -rf *o college

archive: 
	tar -cvzf q5.tar.gz /home/mgeng/3560/makefile_1 course.cc college.cc collegemain.cc college.h course.h makefile