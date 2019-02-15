package ${YYAndroidPackageName};

import android.util.Log;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.ClipData;
import android.content.ClipDescription;
import java.io.IOException;
import java.lang.String;
import android.app.Application;

import ${YYAndroidPackageName}.R;
import com.yoyogames.runner.RunnerJNILib;
//import ${YYAndroidPackageName}.RunnerActivity;

public class Clipboard {
	private Context mContext;
	private static ClipboardManager m_ClipboardManager;
		public  Clipboard() {
			mContext = RunnerJNILib.GetApplicationContext();
			m_ClipboardManager = (ClipboardManager) mContext.getSystemService(Context.CLIPBOARD_SERVICE);
		}
    	public double SetClipString(String arg0)	{
			try {
				m_ClipboardManager.setText(arg0);
			}
			catch (Exception e) {
				Log.i("yoyo", "Error setting clipboard: " + e.toString());
				return -1;
			}
			Log.i("yoyo", "Success setting clipboard to : " + arg0);
        	return 0;
    	}
    	
		public String GetClipString()	{
			String myString = "";			
			try {
				if (m_ClipboardManager.hasPrimaryClip() && m_ClipboardManager.getPrimaryClipDescription().hasMimeType(ClipDescription.MIMETYPE_TEXT_PLAIN)) {
					//myString = m_ClipboardManager.getPrimaryClip().toString(); 
					//since the clipboard contains plain text.
					ClipData.Item item = m_ClipboardManager.getPrimaryClip().getItemAt(0);

					// Gets the clipboard as text.
					myString = item.getText().toString();
				}
			}
			catch (Exception e) {
				Log.i("yoyo", "Error reading from clipboard: " + e.toString());
			}

			Log.i("yoyo", "Read from clipboard: " + myString);
			
			return myString;
		}

} // End of class

