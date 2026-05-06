#pragma once

#include "CoreMinimal.h"
#include "CommonActivatableWidget.h"
#include "ROADHomePage.generated.h"

class UCommonButtonBase;

/**
 * Base class for the ROAD Home Page UI.
 */
UCLASS(Abstract)
class ROAD_API UROADHomePage : public UCommonActivatableWidget
{
	GENERATED_BODY()

protected:
	virtual void NativeOnInitialized() override;

	UPROPERTY(meta = (BindWidget))
	UCommonButtonBase* PlayButton;

	UPROPERTY(meta = (BindWidget))
	UCommonButtonBase* OptionsButton;

	UPROPERTY(meta = (BindWidget))
	UCommonButtonBase* QuitButton;

private:
	UFUNCTION()
	void OnPlayButtonClicked(UCommonButtonBase* Button);

	UFUNCTION()
	void OnOptionsButtonClicked(UCommonButtonBase* Button);

	UFUNCTION()
	void OnQuitButtonClicked(UCommonButtonBase* Button);
};
