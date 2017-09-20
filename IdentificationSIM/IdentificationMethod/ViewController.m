//
//  ViewController.m
//  IdentificationMethod
//
//  Created by Admin on 07.06.17.
//	

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) NSString *telecom;

@property (weak, nonatomic) NSString *ukraine;
@property (weak, nonatomic) NSString *russion;

@property (weak, nonatomic) NSString *mtc;
@property (weak, nonatomic) NSString *lifecell;
@property (weak, nonatomic) NSString *vodafone;
@property (weak, nonatomic) NSString *kyivstar;

@end

@implementation ViewController

@synthesize textFieldTelecom;

@synthesize textFieldCountry;
@synthesize textFieldSim;

@synthesize labelTelecomText;
@synthesize labelCountryText;
@synthesize labelSimText;

- (void)viewDidLoad {
    [super viewDidLoad];
    
     NSString *telecomCode = @"89";
    self.telecom = telecomCode;
    
    NSString *ukraineCode = @"380";
    self.ukraine = ukraineCode;
    NSString *russianCode = @"7";
    self.russion = russianCode;
    
    NSString *mtcCode = @"01";
    self.mtc = mtcCode;
    NSString *lifecellCode = @"02";
    self.lifecell = lifecellCode;
    NSString *vodafoneCode = @"03";
    self.vodafone = vodafoneCode;
    NSString *kyivstarCode = @"04";
    self.kyivstar = kyivstarCode;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark - Button

- (IBAction)checkTelecomCode:(id)sender {
    
    if ([textFieldTelecom.text isEqual:self.telecom]) {
       
        labelTelecomText.text = @"Код вірний";
        
    } else {
        
        labelTelecomText.text = @"Код не вірний";
        
    }
    
    
}

- (IBAction)checkCoutryCode:(id)sender {
    
    if ([textFieldCountry.text isEqual:self.ukraine] ||
        [textFieldCountry.text isEqual:self.russion]) {
        
        labelCountryText.text = @"Код вірний";
        
    } else {
        
        labelCountryText.text = @"Код не вірний";
        
    }
}

- (IBAction)checkSimCode:(id)sender {
    
    if ([textFieldSim.text isEqual:self.mtc] ||
        [textFieldSim.text isEqual:self.lifecell] ||
        [textFieldSim.text isEqual:self.vodafone] ||
        [textFieldSim.text isEqual:self.kyivstar]) {
        
        labelSimText.text = @"Код вірний";
        
    } else {
        
        labelSimText.text = @"Код не вірний";
        
    }
    
}

- (IBAction)identificationButton:(id)sender {
    
    
    if ([textFieldTelecom.text isEqual:self.telecom] &&
        [textFieldCountry.text isEqual:self.russion] &&
        [textFieldSim.text isEqual:self.mtc]) {
        
        [self alertMtcMessage];
        
    } if ([textFieldTelecom.text isEqual:self.telecom] &&
          [textFieldCountry.text isEqual:self.ukraine] &&
          [textFieldSim.text isEqual:self.lifecell]) {
        
        [self alertLifeCellMessage];
        
    } if ([textFieldTelecom.text isEqual:self.telecom] &&
          [textFieldCountry.text isEqual:self.ukraine] &&
          [textFieldSim.text isEqual:self.vodafone]) {
        
        [self alertVodafoneMessage];
        
    } if ([textFieldTelecom.text isEqual:self.telecom] &&
          [textFieldCountry.text isEqual:self.ukraine] &&
          [textFieldSim.text isEqual:self.kyivstar]) {
        
        [self alertKyivstarMessage];
        
    } else {
        
        [self alertErrorMessage];
        
    }
}

#pragma mark - Alert Message

- (void)alertMtcMessage {
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Ідентифікація пройшла успішно"
                                                                   message:@"SIM - карта оператора MTC"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
    
}

- (void)alertLifeCellMessage {
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Ідентифікація пройшла успішно"
                                                                   message:@"SIM - карта оператора LifeCell"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
    
}

- (void)alertVodafoneMessage {
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Ідентифікація пройшла успішно"
                                                                   message:@"SIM - карта оператора Vodafone"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
    
}

- (void)alertKyivstarMessage {
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Ідентифікація пройшла успішно"
                                                                   message:@"SIM - карта оператора Kyivstar"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
    
}

- (void)alertErrorMessage {
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Помилка ідентифікації"
                                                                   message:@"Перевірте введені дані"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
    
}
@end
