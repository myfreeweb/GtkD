/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = 
 * outPack = gtk
 * outFile = MainWindow
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = 
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.Widget
 * 	- gtk.Window
 * 	- gtk.GtkD
 * 	- gdk.Event
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gtk.MainWindow;

private import gtkc.gtktypes;

private import gtkc.gtk;

private import gtk.Widget;
private import gtk.Window;
private import gtk.GtkD;
private import gdk.Event;



/**
 */

/**
 * A top Level window that will stop the main event cycle when it's closed.
 * Closing the last of the windows of class "MainWindow" will end the application.
 */
public class MainWindow : Window
{
	
	private static int countTotalMainWindows = 0;
	
	/**
	 * Creates a new MainWindow with a title
	 */
	public this(char[] title)
	{
		super(title);
		countTotalMainWindows++;
		//printf("MainWindows.this count = %d\n", countTotalMainWindows);
		addOnDelete(&windowDelete);
	}
	
	/**
	 * Executed when the user tries to close the window
	 * @return true to refuse to close the window
	 */
	protected int windowDelete(Event event, Widget widget)
	{
		--countTotalMainWindows;
		//printf("MainWindows.windowDelete count = %d\n", countTotalMainWindows);
		if ( exit(0, false) || countTotalMainWindows==0 )
		{
			GtkD.mainQuit();
			return false;
		}
		return false;
	}
	
	/**
	 * Allows the application to close and decide if it can exit
	 * @param code the code reason to exit
	 * @param force if true the application must expect to be closed even against it's will
	 * @return false to refuse to exit
	 */
	protected bool exit(int code, bool force)
	{
		return force;
	}
}

/**
 */

