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
 * inFile  = GFileDescriptorBased.html
 * outPack = gio
 * outFile = FileDescriptorBasedIF
 * strct   = GFileDescriptorBased
 * realStrct=
 * ctorStrct=
 * clss    = FileDescriptorBasedT
 * interf  = FileDescriptorBasedIF
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_file_descriptor_based_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.FileDescriptorBasedIF;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;






/**
 * Description
 * GFileDescriptorBased is implemented by streams (implementations of
 * GInputStream or GOutputStream) that are based on file descriptors.
 */
public interface FileDescriptorBasedIF
{
	
	
	public GFileDescriptorBased* getFileDescriptorBasedTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	/**
	 * Gets the underlying file descriptor.
	 * Since 2.24
	 * Returns: The file descriptor
	 */
	public int getFd();
}