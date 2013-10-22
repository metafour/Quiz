//
//  QuizViewController.m
//  Quiz
//
//  Created by Camron Schwoegler on 9/17/13.
//  Copyright (c) 2013 Camron Schwoegler. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        [questions addObject:@"What is 7 + 7?"];
        [answers addObject:@"14"];
        
        [questions addObject:@"What is the capital of Vermont?"];
        [answers addObject:@"Montpelier"];
        
        [questions addObject:@"What is cognac made of?"];
        [answers addObject:@"Grapes"];
    }
    return self;
}


- (IBAction)showQuestion:(id)sender
{
    currentQuestionIndex++;
    
    if (currentQuestionIndex == [questions count]) {
        currentQuestionIndex = 0;
    }
    
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    NSLog(@"displaying question: %@", question);
    
    [questionField setText:question];
    
    [answerField setText:@"???"];
}

- (IBAction)showAnswer:(id)sender
{
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    NSLog(@"displaying answer: %@", answer);
    
    [answerField setText:answer];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
