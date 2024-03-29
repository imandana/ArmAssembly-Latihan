package com.Imandana.neon;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

public class NeonKu extends Activity
{
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        /* Create a TextView and set its content.
         * the text is retrieved by calling a native
         * function.
         */
        TextView  tv = new TextView(this);
        tv.setText( stringFromJNI() );
        setContentView(tv);
    }

    /* A native method that is implemented by the
     * 'helloneon' native library, which is packaged
     * with this application.
     */
    public native String  stringFromJNI();

    /* this is used to load the 'NEON' library on application
     * startup. The library has already been unpacked into
     * /data/data/com.Imandana.neon/lib/libNeon.so at
     * installation time by the package manager.
     */
    static {
        System.loadLibrary("NeonKu");
    }
}
