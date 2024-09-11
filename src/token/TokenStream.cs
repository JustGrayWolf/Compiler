using System;
namespace Pascal
{
	
	public interface TokenStream
	{
		
		bool hasMore();
		
		Token peek();
		Token next();
	}
}