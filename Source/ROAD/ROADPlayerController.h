#pragma once

#include "CoreMinimal.h"
#include "GameFramework/PlayerController.h"
#include "ROADPlayerController.generated.h"

class UROADHomePage;

/**
 * Custom PlayerController for handling UI interactions in the Main Menu/Home Page.
 */
UCLASS()
class ROAD_API AROADPlayerController : public APlayerController
{
	GENERATED_BODY()

public:
	AROADPlayerController();

protected:
	virtual void BeginPlay() override;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "UI")
	TSubclassOf<UROADHomePage> HomePageClass;

	UPROPERTY()
	UROADHomePage* HomePageInstance;
};
