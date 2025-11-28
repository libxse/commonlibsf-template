#include "SFSE/API.h"

#include <spdlog/spdlog.h>

extern "C"
{
	bool SFSEPLugin_Load(const SFSE::LoadInterface* sfse)
	{
		SFSE::Init(sfse);

		return true;
	}
}


