package com.hendrix.mirror.commands.contacts
{
	import com.hendrix.mirror.Mirror;
	import com.hendrix.mirror.commands.MirrorCommand;
	import com.hendrix.mirror.resources.contacts.ContactsItem;
	
	import flash.utils.ByteArray;

	public class Contacts extends MirrorCommand
	{
		public function Contacts(service:Mirror)
		{
			super(service);
		}
		
		/**
		 * Deletes a contact 
		 * @param id
		 * @return 
		 * 
		 */
		public function deleted(id:String):Delete
		{
			return new Delete(id);
		}
		
		/**
		 * Gets a single contact by ID 
		 * @param id
		 * @return 
		 * 
		 */
		public function get(id:String):Get
		{
			return new Get(id);
		}
		
		/**
		 * Inserts a new contact 
		 * @param media
		 * @param contentType
		 * @return 
		 * 
		 */
		public function insert(item:ContactsItem):Insert
		{
			return new Insert(item);
		}
		
		/**
		 * Retrieves a list of contacts for the authenticated user 
		 * @return 
		 * 
		 */
		public function list():List
		{
			return new List();
		}
		
		/**
		 * Updates a contact in place
		 * @return 
		 * 
		 */
		public function update(item:ContactsItem):Update
		{
			return new Update(item);
		}
		
	}
}