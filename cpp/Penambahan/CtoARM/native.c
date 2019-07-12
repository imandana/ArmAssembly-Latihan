
int Data1()
{
	return 10;
}

int Data2()
{
	return 40;
}

int Tambahkan(int a, int b)
{
	return a + b + Data2() + Data1();
}

int MainFunction(int a, int b)
{
	return Tambahkan(a,b);
}

// C tidak ada Passing by Reference seperti C++