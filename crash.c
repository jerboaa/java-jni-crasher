#include "CrashJNI.h"

JNIEXPORT jint JNICALL Java_CrashJNI_doIt(JNIEnv *, jobject) {
      int* j = NULL;
      jint a = (jint)*j; // NULL* deref
      return a;
}
