#include "ROADGameMode.h"
#include "ROADPlayerController.h"

AROADGameMode::AROADGameMode() {
  PlayerControllerClass = AROADPlayerController::StaticClass();
}
