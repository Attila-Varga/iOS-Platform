//
//  Shader.fsh
//  IOSGame
//
//  Created by Attila Varga on 13/07/2016.
//  Copyright © 2016 Attila Varga. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}
