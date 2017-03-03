precision mediump float;
varying vec2 vTextureCoord;//接收从顶点着色器过来的参数
uniform sampler2D usTexture;//纹理内容数据

void main(){
    vec4 finalColor = texture2D(usTexture, vTextureCoord);

    //if(finalColor.a < 0.9) {
      //  discard;
    //}else {
      //  gl_FragColor = finalColor;
   // }
    gl_FragColor = finalColor;
}