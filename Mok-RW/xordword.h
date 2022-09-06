#pragma once
#ifndef __XORDWORD_H_
#define __XORDWORD_H_

template <int X> struct EnsureCompileTimeZ
{
	enum : int
	{
		Value = X
	};
};

//Use Compile-Time as seed
#define Seed ((__TIME__[7] - '0') * 1  + (__TIME__[6] - '0') * 10  + \
                  (__TIME__[4] - '0') * 60   + (__TIME__[3] - '0') * 600 + \
                  (__TIME__[1] - '0') * 3600 + (__TIME__[0] - '0') * 36000)

constexpr int LinearCongruentGeneratorZ(int Rounds)
{
	return 1013904223 + 1664525 * ((Rounds > 0) ? LinearCongruentGeneratorZ(Rounds - 1) : Seed & 0xFFFFFFFF);
}

#define Random() EnsureCompileTimeZ<LinearCongruentGeneratorZ(10)>::Value
#define RandomNumber(Min, Max) (Min + (Random() % (Max - Min + 1)))

const unsigned long DWXORKEY = static_cast<unsigned long>(RandomNumber(0, 0xFFFFFF));

#pragma optimize( "", off)
class XorDWORD
{
private:
	unsigned long encrypted;

	constexpr __forceinline unsigned long enc(const unsigned long v) const
	{
		return v ^ DWXORKEY;
	}
	__forceinline unsigned long dec(const unsigned long v) const
	{
		return v ^ DWXORKEY;
	}

public:
	constexpr __forceinline XorDWORD(const unsigned long value) :
		encrypted(enc(value))
	{
	}
	unsigned long decrypt()
	{
		return dec(encrypted);
	}
};

#define xordw(val) XorDWORD(val).decrypt()
#endif

class xordword
{
};

