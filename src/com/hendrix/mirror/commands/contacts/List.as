package com.hendrix.mirror.commands.contacts
{
	import com.hendrix.mirror.commands.MirrorRequest;
	import com.hendrix.mirror.config.SConfig;
	import com.hendrix.mirror.resources.timeline.TimelineItem;
	
	import com.hendrix.http.Request;
	import com.hendrix.http.RequestBody;
	import com.hendrix.http.builders.MultiPartBuilder;
	import com.hendrix.http.builders.RequestBuilder;
	
	import flash.utils.ByteArray;
	
	/**
	 * Retrieves a list of contacts for the authenticated user 
	 * @author Tomer
	 * 
	 */
	public class List extends MirrorRequest
	{
		public function List()
		{
			super();
			
		}
		
		override public function execute($onComplete:Function=null, $onError:Function=null):void
		{
			new RequestBuilder(this).GET().url(SConfig.HOST + "/mirror/v1/contacts").addQuery("access_token", _oauthToken);
			
			super.execute($onComplete, $onError);
		}
		
		
	}
	
}