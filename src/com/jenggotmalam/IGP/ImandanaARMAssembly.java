package com.jennggotmalam.IGP;

import android.app.Activity;
import android.widget.TextView;
import android.os.Bundle;

public class ImandanaARMAssembly extends Activity {
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		// Create a new Textview
		TextView  tv = new TextView(this);
		
		// Local variable decl
		int a = 2;
		int b = 2;
		
		tv.setText("TambahNormal: " + TambahNormal(a, b) + "  Nilai a =   " + a +"\n" +
					"TambahChangeParamater: " + TambahChangeParamater(a, b) + "  Nilai a =   " + a +"\n" +
					"TambahChangeParamaterPassByPointer: " + TambahChangeParamaterPassByPointer(a, b) + "  Nilai a native =   " + GetAFromNative() +"\n");
		setContentView(tv);
	}

	/**
	 * Hasil tambah dari parameter.
	 * @param a, param b
	 * @return Hasil tambah dari parameter
	 */
	public native int TambahNormal(int a, int b);
	public native int TambahChangeParamater(int a, int b);
	public native int TambahChangeParamaterPassByPointer(int a, int b);
	
	/**
	 * Dapatka nilai a versi native C/C++
	 * @param void
	 * @return a native
	 */
	public native int GetAFromNative();
	/* This is used to load the 'native' library on application
	 * startup. The library has already been unpacked into
	 * /data/data/com.jennggotmalam.ImandanaARMAssembly/lib/libnative.so at
	 * installation time by the package manager.
	 */
	static {
		System.loadLibrary("native");
	}
}