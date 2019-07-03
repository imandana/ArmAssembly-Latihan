#include <jni.h>

/* This stub calls the function. It helps to have a stub like this to
 * save yourself the hassle of defining the function call in
 * Assembly. */
 
 int TambahNormal(int,int);
 int TambahChangeParamater(int,int);
 int TambahChangeParamaterPassByPointer(int*,int*);
 
 int aa = 2;
 int bb = 2;
 
jint Java_com_jennggotmalam_IGP_ImandanaARMAssembly_TambahNormal(
	JNIEnv* env, jobject object, jint a, jint b) {
	/* Try calling some local code */
	return TambahNormal(a, b);
}

jint Java_com_jennggotmalam_IGP_ImandanaARMAssembly_TambahChangeParamater(
	JNIEnv* env, jobject object, jint a, jint b) {
	/* Try calling some local code */
	return TambahChangeParamater(a, b);
}

jint Java_com_jennggotmalam_IGP_ImandanaARMAssembly_TambahChangeParamaterPassByPointer(
	JNIEnv* env, jobject object, jint a, jint b) {
	/* Try calling some local code */
	return TambahChangeParamaterPassByPointer(&aa, &bb);
}

jint Java_com_jennggotmalam_IGP_ImandanaARMAssembly_GetAFromNative(
	JNIEnv* env, jobject object) {
	/* Try calling some local code */
	return aa;
}