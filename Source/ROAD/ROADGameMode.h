#pragma once

#include "CoreMinimal.h"
#include "GameFramework/GameModeBase.h"
#include "ROADGameMode.generated.h"

/**
 * Custom GameMode to use the ROADPlayerController by default.
 */
UCLASS()
class ROAD_API AROADGameMode : public AGameModeBase
{
	GENERATED_BODY()

public:
	AROADGameMode();
};
