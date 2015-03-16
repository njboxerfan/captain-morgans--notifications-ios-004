//
//  FISAddShipViewController.m
//  OpenMe
//
//  Created by Chris Gonzales on 9/17/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISAddShipViewController.h"
#import "FISPiratesDataStore.h"
#import "Ship.h"
#import "Engine.h"

@interface FISAddShipViewController ()
@property (weak, nonatomic) IBOutlet UITextField *shipNameField;
@property (weak, nonatomic) IBOutlet UITextField *engineTypeField;

@end

@implementation FISAddShipViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveButtonTapped:(id)sender
{    
    NSMutableDictionary *shipDictionary = [[NSMutableDictionary alloc] init];
    
    shipDictionary[@"shipName"] =self.shipNameField.text;
    shipDictionary[@"shipEngineType"] =self.engineTypeField.text;
    shipDictionary[@"pirate"] = self.pirate;
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"morgansShips" object:nil userInfo:shipDictionary];
    
//    [store save];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cancelButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
