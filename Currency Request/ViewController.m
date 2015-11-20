//
//  ViewController.m
//  Currency Request
//
//  Created by Lun Sovathana on 11/20/15.
//  Copyright © 2015 Lun Sovathana. All rights reserved.
//

#import "ViewController.h"
#import "CurrencyRequest/CRCurrencyRequest.h" 
#import "CurrencyRequest/CRCurrencyResults.h"

@interface ViewController ()<CRCurrencyRequestDelegate>

@property(strong, nonatomic)CRCurrencyRequest *request;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.request = [CRCurrencyRequest new];
    
    self.request.delegate = self;
    [self.request start];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)currencyRequest:(CRCurrencyRequest *)req
    retrievedCurrencies:(CRCurrencyResults *)currencies{
    _textView.text = [currencies description];
}

@end
