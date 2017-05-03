# Emacsclient options

    Usage: C:\ProgramData\chocolatey\lib\emacs64\tools\emacs\bin\emacsclient.exe [OPTIONS] FILE...


Tell the Emacs server to visit the specified files.
Every FILE can be either just a FILENAME or [+LINE[:COLUMN]] FILENAME.

The following OPTIONS are accepted:
```
-V, --version		Just print version info and return
-H, --help    		Print this usage information message
-nw, -t, --tty 		Open a new Emacs frame on the current terminal
-c, --create-frame    	Create a new frame instead of trying to
			use the current Emacs frame
-F ALIST, --frame-parameters=ALIST
			Set the parameters of a new frame
-e, --eval    		Evaluate the FILE arguments as ELisp expressions
-n, --no-wait		Don't wait for the server to return
-q, --quiet		Don't display messages on success
-d DISPLAY, --display=DISPLAY
			Visit the file in the given display
--parent-id=ID          Open in parent window ID, via XEmbed
-f SERVER, --server-file=SERVER
			Set filename of the TCP authentication file
-a EDITOR, --alternate-editor=EDITOR
			Editor to fallback to if the server is not running
			If EDITOR is the empty string, start Emacs in daemon
			mode and try connecting again
```

Report bugs with ```M-x report-emacs-bug```.
