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
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)currencyRequest:(CRCurrencyRequest *)req
    retrievedCurrencies:(CRCurrencyResults *)currencies{
    int dollor = (int) self.inputUSCurrency.text;
    
    self.labelSEK.text =[NSString stringWithFormat:@"SEK Currency = %f", dollor * currencies.SEK];
    self.labelJapaneseCurrency.text = [NSString stringWithFormat:@"Japanese Currency = %f", dollor * currencies.JPY];
    self.labelPLN.text = [NSString stringWithFormat:@"PLN Currency = %f", dollor * currencies.PLN];
}
- (IBAction)convertCurrency:(id)sender {
    [self.request start];
}

@end
