/*
 * This file is part of duit.
 * 
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module duit.TestText;

private import gtk.VBox;
	
private import gtk.ScrolledWindow;
private import gtk.TextView;
private import gtk.TextBuffer;

/**
 * This tests the Duit text widget
 */

class TestText : VBox
{	

	private import gtk.ScrolledWindow;
	private import gtk.gtktypes;
	
	this()
	{

		super(false,0);
		
		debug(1)
		{
			printf("instantiating TestText\n");
		}

		ScrolledWindow sw = new ScrolledWindow(null, null);
		sw.setPolicy(PolicyType.AUTOMATIC,PolicyType.AUTOMATIC);

		TextView textView = new TextView();
		TextBuffer textBuffer = textView.getBuffer();
		textBuffer.setText(
		
"\nDUI version 00.01 build 30"
"\n"
"\n00.01_30"
"\nIntroduction"
"\nDUI is a D language graphical user interface based on GKT+ graphical toolkit"
"\nDUI stands for D graphical User Interface"
"\nDUI is in a very early state of development and should be considered in alpha state."
"\nDUI is released under the GPL license"
"\nTo discuss about DUI:"
"\n"
"\n    * if it's D related or can have interest to other D user please use the D discussion group at"
"\n      Digital Mars D news group"
"\n    * if it's a DUI issue with no insterest to other D user please use the yahoo group"
"\n      duitoolkit yahoo group"
"\n    * if you want to send a private message to the author please fill free to do so at"
"\n      duitoolkit guy"
"\n"
"\nObjectives"
"\nThe main goal of DUI is to enable the creation of D GUI applications under Linux."
"\nDUI should be simple and straightforward to use."
"\nD can interface with C so any graphics toolkit with a C API can be used directly from D, this include GTK+."
"\nDownload and Status"
"\nfor now DUI can display most of the GTK+ widgets and respond to the common user actions"
"\nDUI is still of little use but you can get it on the Download and Status."
"\nUsage"
"\nSee the Screen shots and Usage for screenshots and details on how to use DUI."
"\nHere is a simple DUI program:"
		
		);
		
		sw.add(textView);
		packStart(sw,true,true,0);

	}

}
