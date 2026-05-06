#include "ROADHomePage.h"
#include "CommonButtonBase.h"
#include "GameFramework/PlayerController.h"
#include "Kismet/KismetSystemLibrary.h"

void UROADHomePage::NativeOnInitialized()
{
	Super::NativeOnInitialized();

	if (PlayButton)
	{
		// CommonUI's UCommonButtonBase usually uses OnBaseButtonClicked. 
		PlayButton->OnBaseButtonClicked.AddDynamic(this, &UROADHomePage::OnPlayButtonClicked);
	}

	if (OptionsButton)
	{
		OptionsButton->OnBaseButtonClicked.AddDynamic(this, &UROADHomePage::OnOptionsButtonClicked);
	}

	if (QuitButton)
	{
		QuitButton->OnBaseButtonClicked.AddDynamic(this, &UROADHomePage::OnQuitButtonClicked);
	}
}

void UROADHomePage::OnPlayButtonClicked(UCommonButtonBase* Button)
{
	UE_LOG(LogTemp, Log, TEXT("Play Button Clicked"));
	// Add play logic here
}

void UROADHomePage::OnOptionsButtonClicked(UCommonButtonBase* Button)
{
	UE_LOG(LogTemp, Log, TEXT("Options Button Clicked"));
	// Add options logic here
}

void UROADHomePage::OnQuitButtonClicked(UCommonButtonBase* Button)
{
	if (APlayerController* PC = GetOwningPlayer())
	{
		UKismetSystemLibrary::QuitGame(this, PC, EQuitPreference::Quit, true);
	}
}
