#include "MintySm2MintySsJniWrapper.h"
#include "info_mintymods_jni_MsmJniWrapper.h"
#include <string>
#include <iostream>
#include <vcclr.h>

using System::Text::Encoding;
using namespace System;

String^ toString(const char* characters) {
	int length = (int)strlen(characters);
	array<unsigned char>^ result = gcnew array<unsigned char>(length);
	int i = 0;
	while (i < length) {
		result[i] = characters[i];
		i++;
	}
	return Encoding::UTF8->GetString(result);
}

String^ processRequest(const char* json) {
	return mintymods::MsmJniWrapper::processRequest(toString(json));
}

jstring stringToJString(JNIEnv* env, System::String^ value) {
	if (value == nullptr) return 0;
	const auto codeunitCount = value->Length;
	const pin_ptr<const wchar_t> buffer = PtrToStringChars(value);
	return env->NewString(reinterpret_cast<const jchar*>(buffer),codeunitCount);
}

JNIEXPORT jstring JNICALL Java_info_mintymods_jni_MsmJniWrapper_processRequest
(JNIEnv *env, jobject c, jstring json) {
	const char* request;
	try {
		jboolean isJsonCopied;
		request = env->GetStringUTFChars(json, &isJsonCopied);
		return stringToJString(env, processRequest(request));
	} finally {
		env->ReleaseStringUTFChars(json, request);
	}
	
}
