#import "GameViewController.h"

@interface GameViewController()
{
    
}

@property (strong, nonatomic) EAGLContext* context;

- (void) setupGL;

@end

@implementation GameViewController

- (void) viewDidLoad
{
    [super viewDidLoad];
    
    self.context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2];

    if( !self.context )
    {
        NSLog(@"Failed to create OpenGL ES context!");
    }
    
    GLKView* view = (GLKView*)self.view;
    view.context = self.context;
    
    view.drawableDepthFormat = GLKViewDrawableDepthFormat24;
    
    [self setupGL];
}

- (void) dealloc
{
    if ([EAGLContext currentContext] == self.context)
    {
        [EAGLContext setCurrentContext:nil];
    }
}

- (void) setupGL
{
    [EAGLContext setCurrentContext:self.context];
    
    //Call C++ init functions here
    engine->startEngine();
}

- (void) glkView:(GLKView *)view drawInRect:(CGRect)rect
{
    //Call C++ render functions here
    engine->render();
}

@end
