//
//  QuizAppDelegate.m
//  Quiz
//
//  Created by Connor Montgomery on 11/18/11.
//  Copyright 2011 St. Louis University. All rights reserved.
//

#import "QuizAppDelegate.h"

@implementation QuizAppDelegate

@synthesize window = _window;

-(id) init {
    self = [super init];
    if (self){
        // create 2 arrays and make pointers to them
        questions   = [[NSMutableArray alloc] init];
        answers     = [[NSMutableArray alloc] init];
        
        // add questions and answers to the array
        [questions  addObject:@"What is 7 + 7?"];
        [answers    addObject:@"14!"];
        
        [questions  addObject:@"What is the capital of Vermont?"];
        [answers    addObject:@"Montpelier!"];
        
        [questions  addObject:@"From what is cognac made?"];
        [answers    addObject:@"Grapes!"];
        
        [questions  addObject:@"Who is the mascot for the KC Royals?"];
        [answers    addObject:@"Slugerrrrr!"];
    }
    
    return self;
}


- (IBAction)showAnswer:(id)sender{
    
    // what is the answer to the current question/
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    [answerField setText:answer];
    
}

- (IBAction)showQuestion:(id)sender{
    // step the the next question
    currentQuestionIndex++;
    
    if (currentQuestionIndex == [questions count]) {
        // go back to zero
        currentQuestionIndex = 0;
    }
    
    // get string at that index of the questions array
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    // log the string to the console
    NSLog(@"displaying question: %@", question);
    
    // display the current question in the field
    [questionField setText:question];
    
    // clear the answer field
    [answerField setText:@"???"];
}

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

@end
