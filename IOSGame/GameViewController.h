//
//  GameViewController.h
//  IOSGame
//
//  Created by Attila Varga on 13/07/2016.
//  Copyright © 2016 Attila Varga. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GLKit/GLKit.h>

#include "Wrapper.mm"

@interface GameViewController : GLKViewController
{
    DMGS::DMEngine* engine;
}

@end


