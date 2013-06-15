//
//  Shader.fsh
//  iStarfield
//
//  Created by Hamdan Javeed on 2013-06-15.
//  Copyright (c) 2013 Hamdan Javeed. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}
