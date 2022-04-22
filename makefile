CC = g++

main: bend_kick_c_with_doppler.o read_parameters_with_doppler.o ca_rand.o array2d.o dSFMT.o
	$(CC) -o main.exe bend_kick_c_with_doppler.o read_parameters_with_doppler.o ca_rand.o array2d.o dSFMT.o

bend_kick_c_with_doppler.o: bend_kick_c_with_doppler.c bend_kick_c_with_doppler.h read_parameters_with_doppler.h ca_rand.h array2d.h dSFMT/dSFMT.h
	$(CC) -c bend_kick_c_with_doppler.c

read_parameters_with_doppler.o: read_parameters_with_doppler.c read_parameters_with_doppler.h ca_rand.h array2d.h dSFMT/dSFMT.h
	$(CC) -c read_parameters_with_doppler.c

ca_rand.o: ca_rand.c ca_rand.h dSFMT/dSFMT.h
	$(CC) -c ca_rand.c

array2d.o: array2d.c array2d.h
	$(CC) -c array2d.c

dSFMT.o: dSFMT/dSFMT.c dSFMT/dSFMT.h
	$(CC) -c dSFMT/dSFMT.c
