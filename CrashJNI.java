public class CrashJNI {
	static {
		System.loadLibrary("crash");
	}
	public static void main(String[] args) {
	    CrashJNI crash = new CrashJNI();
	    int foo = crash.doIt();
	}

	private native int doIt();
}
