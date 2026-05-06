#include "ROADPlayerController.h"
#include "ROADHomePage.h"
#include "Blueprint/UserWidget.h"

AROADPlayerController::AROADPlayerController()
{
	bShowMouseCursor = true;
}

void AROADPlayerController::BeginPlay()
{
	Super::BeginPlay();

	FInputModeUIOnly InputModeData;
	SetInputMode(InputModeData);

	if (HomePageClass)
	{
		HomePageInstance = CreateWidget<UROADHomePage>(this, HomePageClass);
		if (HomePageInstance)
		{
			HomePageInstance->AddToViewport();
			HomePageInstance->ActivateWidget();
		}
	}
}
