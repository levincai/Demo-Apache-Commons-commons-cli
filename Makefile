JAVA=/cygdrive/d/Applications/Oracle/Java/jdk1.8.0_45/bin/java.exe
JAVAC=/cygdrive/d/Applications/Oracle/Java/jdk1.8.0_45/bin/javac.exe
sources = $(wildcard *.java)
classes = $(sources:.java=.class)

all:


clean:
	rm -f *.class

classes:
	$(JAVAC) AppliedApacheCommonsCoomonsCLI.java

run: classes
	export CLASSPATH="$(CLASSPATH);."
	$(JAVA) AppliedApacheCommonsCoomonsCLI
