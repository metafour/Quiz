//
//  QuizViewController.h
//  Quiz
//
//  Created by Camron Schwoegler on 9/17/13.
//  Copyright (c) 2013 Camron Schwoegler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController
{
    int currentQuestionIndex;

    // Model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
        
    // View objects
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;
@end
