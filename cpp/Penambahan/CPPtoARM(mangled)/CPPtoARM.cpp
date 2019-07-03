extern "C" {
	int TambahNormal(int a, int b)
	{
		int x;
		int c = 5;
		x = (a+b)-c;
		
		return x;
	}
	
	int TambahChangeParamater(int a, int b)
	{
		int x;
		a = 10;
		b = 20;
		int c = 5;
		x = (a+b)-c;
		
		return x;
	}


	int TambahChangeParamaterPassByPointer(int *a, int *b)
	{
		int x;
		*a = 10;
		*b = 20;
		int c = 5;
		x = (*a+*b)-c;
		
		return x;
	}

	int TambahChangeParamaterPassByReference(int &a, int &b)
	{
		int x;
		a = 10;
		b = 20;
		int c = 5;
		x = (a+b)-c;
		
		return x;
	}
};
	