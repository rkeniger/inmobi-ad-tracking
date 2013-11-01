

#import "TestViewController.h"

#import "IMAdTracker.h"

@implementation TestViewController

@synthesize reportLabel;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)clickGoal1 {
    [IMAdTracker reportCustomGoal:@"Goal1"];
}
- (void)clickGoal2 {
    [IMAdTracker reportCustomGoal:@"Goal2"];
}
- (void)clickGoal3 {
    [IMAdTracker reportCustomGoal:@"Goal3"];
}

- (void)setGoalForButton:(UIButton *)button goal:(NSString *)goal sel:(SEL)selector {
    [button setTitle:goal forState:UIControlStateNormal];
    [button addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor colorWithRed:0.2 green:0.3 blue:0.5 alpha:1.0]];
    
    int y = 0;
    
    UILabel *appLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, y+=10, 320, 50)];
    appLabel.backgroundColor = [UIColor clearColor];
    appLabel.text = @"!!=== My Test App - Integrated ===!!";
    appLabel.textAlignment = UITextAlignmentCenter;
    appLabel.textColor = [UIColor whiteColor];
    [self.view addSubview:appLabel];
    [appLabel release];
    
    UILabel *goalLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, y+=80, 320, 50)];
    goalLabel.backgroundColor = [UIColor clearColor];
    goalLabel.text = @"My Sample Goals!";
    goalLabel.textAlignment = UITextAlignmentCenter;
    goalLabel.textColor = [UIColor whiteColor];
    [self.view addSubview:goalLabel];
    [goalLabel release];
    
    UIButton *button[3];
    for (int i=0; i<3; i++) {
        button[i] = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button[i] setFrame:CGRectMake(320/2-180/2, y+=60, 180, 50)];
        [button[i] setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.view addSubview:button[i]];
    }
    [self setGoalForButton:button[0] goal:@"Button - Goal1" sel:@selector(clickGoal1)];
    [self setGoalForButton:button[1] goal:@"Button - Goal2" sel:@selector(clickGoal2)];
    [self setGoalForButton:button[2] goal:@"Button - Goal3" sel:@selector(clickGoal3)];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc
{
    self.reportLabel = nil;
    [super dealloc];
}

@end
