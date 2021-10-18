JAVA=$(JDK)/bin/java
JAVAC=$(JDK)/bin/javac

jni-header:
	$(JAVAC) -h jni CrashJNI.java

jni-lib: jni-header
	gcc -I jni/ -I $(JDK)/include -I $(JDK)/include/linux -fpic -shared -o libcrash.so crash.c

crash: jni-lib
	$(JAVA) -Djava.library.path=$(pwd) CrashJNI || true

clean:
	rm -rf jni hs_err*.log *.class *.so
