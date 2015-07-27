JAVA=/cygdrive/d/Applications/Oracle/Java/jdk1.8.0_45/bin/java.exe
JAVAC=/cygdrive/d/Applications/Oracle/Java/jdk1.8.0_45/bin/javac.exe
sources = $(wildcard *.java)
classes = $(sources:.java=.class)

all:


clean:
	rm -f *.class

classes:
	$(JAVAC) MyHelloWorld.java

run:
	export CLASSPATH="$(CLASSPATH);."
	$(JAVA) MyHelloWorld
