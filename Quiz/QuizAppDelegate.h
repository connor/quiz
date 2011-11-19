//
//  QuizAppDelegate.h
//  Quiz
//
//  Created by Connor Montgomery on 11/18/11.
//  Copyright 2011 St. Louis University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizAppDelegate : NSObject <UIApplicationDelegate>

{
    int currentQuestionIndex;
    
    // the model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    // the view objects
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
