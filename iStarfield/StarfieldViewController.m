//
//  StarfieldViewController.m
//  iStarfield
//
//  Created by Hamdan Javeed on 2013-06-15.
//  Copyright (c) 2013 Hamdan Javeed. All rights reserved.
//

#import "StarfieldViewController.h"

@interface StarfieldViewController () {
    GLuint _program;
    
    // TODO: declare any matrices
    
    // TODO: declare any buffers
}

@property (strong, nonatomic) EAGLContext *context;
@property (strong, nonatomic) GLKBaseEffect *effect;

- (void)setupGL;
- (void)tearDownGL;
@end

@implementation StarfieldViewController

// loading the view
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // init context
    self.context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2];

    if (!self.context) {
        NSLog(@"Failed to create ES context");
    }
    
    // setup self.view
    GLKView *view = (GLKView *)self.view;
    view.context = self.context;
    view.drawableDepthFormat = GLKViewDrawableDepthFormat24;
    
    // setupGL
    [self setupGL];
}

// going out of memory
- (void)dealloc {
    // teardownGL
    [self tearDownGL];
    
    // set the context to nil
    if ([EAGLContext currentContext] == self.context) {
        [EAGLContext setCurrentContext:nil];
    }
}

- (void)setupGL {
    [EAGLContext setCurrentContext:self.context];
    
    self.effect = [[GLKBaseEffect alloc] init];
    
    glEnable(GL_DEPTH_TEST);
    
    // TODO: create any buffers
}

// tear down GL
- (void)tearDownGL {
    [EAGLContext setCurrentContext:self.context];
    
    // TODO: delete any buffers
    
    self.effect = nil;
    
    if (_program) {
        glDeleteProgram(_program);
        _program = 0;
    }
}

#pragma mark - GLKView and GLKViewController delegate methods

- (void)update {
    
}

// draw
- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect {
    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    
    // draw
}

@end
