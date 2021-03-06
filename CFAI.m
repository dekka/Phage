//
//  CFAI.m
//  Phage
//
//  Created by seanmcneil on 5/15/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "CFAI.h"
#import "CFMyScene.h"

#define k_RANDOMIZATION_VALUE 10

@implementation CFAI

- (double)createRandomizationValue:(double)withValue {
    // Generate a random value between -10% and 10%, then modify the incomming value by the random value
    // and return it to the AI method calling this
    return withValue + (withValue * ((1.0f * ((float)arc4random() / (float)RAND_MAX) - 1.0f) * k_RANDOMIZATION_VALUE / 100));
}

- (void)obtainCellInformation {
    CFMyScene *myScene = [CFMyScene new];
    [myScene returnCellInfoToAI];

}

@end
