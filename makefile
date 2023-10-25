
image:image.c image.h
	gcc -g image.c -o image -lm -lpthread
imagemp: image_openmp.c image.h
	gcc -g image_openmp.c -o imagemp -lm -fopenmp
imagempDarwin: image_openmp.c image.h
	gcc -g image_openmp.c -o imagempDarwin -lm -fopenmp
imageDarwin: image.c image.h
	gcc -g image.c -o imageDarwin -lm -lpthread
clean:
	rm -f image output.png
