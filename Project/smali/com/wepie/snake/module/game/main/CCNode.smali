.class public Lcom/wepie/snake/module/game/main/CCNode;
.super Ljava/lang/Object;
.source "CCNode.java"


# instance fields
.field private cx:F

.field private cy:F

.field private mHeight:I

.field private mProgram:I

.field private mTexCoorBuffer:Ljava/nio/FloatBuffer;

.field private mTextureId:I

.field private mVertexArray:[F

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mWidth:I

.field private maPositionHandle:I

.field private maTexCoorHandle:I

.field private muMVPMatrixHandle:I

.field private zOrder:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x12

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/wepie/snake/module/game/main/CCNode;->mVertexArray:[F

    .line 30
    iput v2, p0, Lcom/wepie/snake/module/game/main/CCNode;->mWidth:I

    .line 31
    iput v2, p0, Lcom/wepie/snake/module/game/main/CCNode;->mHeight:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/wepie/snake/module/game/main/CCNode;->zOrder:I

    .line 34
    iput v1, p0, Lcom/wepie/snake/module/game/main/CCNode;->cx:F

    .line 35
    iput v1, p0, Lcom/wepie/snake/module/game/main/CCNode;->cy:F

    .line 38
    invoke-direct {p0}, Lcom/wepie/snake/module/game/main/CCNode;->initShader()V

    .line 39
    invoke-direct {p0}, Lcom/wepie/snake/module/game/main/CCNode;->initBuffer()V

    .line 40
    invoke-direct {p0}, Lcom/wepie/snake/module/game/main/CCNode;->updateVertex()V

    .line 41
    return-void
.end method

.method private initBuffer()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 53
    const/16 v5, 0x48

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 54
    .local v4, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 55
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/wepie/snake/module/game/main/CCNode;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 57
    const/high16 v2, 0x3f800000    # 1.0f

    .line 58
    .local v2, "tRange":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 59
    .local v1, "sRange":F
    const/16 v5, 0xc

    new-array v3, v5, [F

    aput v6, v3, v7

    const/4 v5, 0x1

    aput v6, v3, v5

    const/4 v5, 0x2

    aput v6, v3, v5

    const/4 v5, 0x3

    aput v2, v3, v5

    const/4 v5, 0x4

    aput v1, v3, v5

    const/4 v5, 0x5

    aput v2, v3, v5

    const/4 v5, 0x6

    aput v1, v3, v5

    const/4 v5, 0x7

    aput v2, v3, v5

    const/16 v5, 0x8

    aput v1, v3, v5

    const/16 v5, 0x9

    aput v6, v3, v5

    const/16 v5, 0xa

    aput v6, v3, v5

    const/16 v5, 0xb

    aput v6, v3, v5

    .line 68
    .local v3, "textureCoordArray":[F
    array-length v5, v3

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 69
    .local v0, "cbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/wepie/snake/module/game/main/CCNode;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    .line 71
    iget-object v5, p0, Lcom/wepie/snake/module/game/main/CCNode;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 72
    iget-object v5, p0, Lcom/wepie/snake/module/game/main/CCNode;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 73
    return-void
.end method

.method private initShader()V
    .locals 4

    .prologue
    .line 44
    const-string v2, "common_texture_vertex.sh"

    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wepie/snake/base/SkApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wepie/snake/module/game/util/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "mVertexShader":Ljava/lang/String;
    const-string v2, "common_texture_frag.sh"

    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wepie/snake/base/SkApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wepie/snake/module/game/util/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "mFragShader":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/wepie/snake/module/game/util/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/wepie/snake/module/game/main/CCNode;->mProgram:I

    .line 47
    iget v2, p0, Lcom/wepie/snake/module/game/main/CCNode;->mProgram:I

    const-string v3, "uMVPMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/wepie/snake/module/game/main/CCNode;->muMVPMatrixHandle:I

    .line 48
    iget v2, p0, Lcom/wepie/snake/module/game/main/CCNode;->mProgram:I

    const-string v3, "aPosition"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/wepie/snake/module/game/main/CCNode;->maPositionHandle:I

    .line 49
    iget v2, p0, Lcom/wepie/snake/module/game/main/CCNode;->mProgram:I

    const-string v3, "aTextureCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/wepie/snake/module/game/main/CCNode;->maTexCoorHandle:I

    .line 50
    return-void
.end method

.method private updateVertex()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 113
    iget v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->mWidth:I

    int-to-float v7, v7

    invoke-static {v7}, Lcom/wepie/snake/module/game/util/CoordUtil;->screenSize2GLSize(F)F

    move-result v7

    div-float v0, v7, v8

    .line 114
    .local v0, "rx":F
    iget v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->mHeight:I

    int-to-float v7, v7

    invoke-static {v7}, Lcom/wepie/snake/module/game/util/CoordUtil;->screenSize2GLSize(F)F

    move-result v7

    div-float v1, v7, v8

    .line 115
    .local v1, "ry":F
    iget v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->zOrder:I

    int-to-float v6, v7

    .line 117
    .local v6, "z":F
    neg-float v7, v0

    iget v8, p0, Lcom/wepie/snake/module/game/main/CCNode;->cx:F

    add-float v2, v7, v8

    .line 118
    .local v2, "x1":F
    iget v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->cx:F

    add-float v3, v0, v7

    .line 119
    .local v3, "x2":F
    iget v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->cy:F

    add-float v4, v1, v7

    .line 120
    .local v4, "y1":F
    neg-float v7, v1

    iget v8, p0, Lcom/wepie/snake/module/game/main/CCNode;->cy:F

    add-float v5, v7, v8

    .line 123
    .local v5, "y2":F
    iget-object v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->mVertexArray:[F

    aput v2, v7, v9

    .line 124
    iget-object v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->mVertexArray:[F

    const/4 v8, 0x1

    aput v4, v7, v8

    .line 125
    iget-object v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->mVertexArray:[F

    const/4 v8, 0x2

    aput v6, v7, v8

    .line 128
    iget-object v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->mVertexArray:[F

    const/4 v8, 0x3

    aput v2, v7, v8

    .line 129
    iget-object v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->mVertexArray:[F

    const/4 v8, 0x4

    aput v5, v7, v8

    .line 130
    iget-object v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->mVertexArray:[F

    const/4 v8, 0x5

    aput v6, v7, v8

    .line 133
    iget-object v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->mVertexArray:[F

    const/4 v8, 0x6

    aput v3, v7, v8

    .line 134
    iget-object v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->mVertexArray:[F

    const/4 v8, 0x7

    aput v5, v7, v8

    .line 135
    iget-object v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->mVertexArray:[F

    const/16 v8, 0x8

    aput v6, v7, v8

    .line 138
    iget-object v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->mVertexArray:[F

    const/16 v8, 0x9

    aput v3, v7, v8

    .line 139
    iget-object v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->mVertexArray:[F

    const/16 v8, 0xa

    aput v5, v7, v8

    .line 140
    iget-object v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->mVertexArray:[F

    const/16 v8, 0xb

    aput v6, v7, v8

    .line 143
    iget-object v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->mVertexArray:[F

    const/16 v8, 0xc

    aput v3, v7, v8

    .line 144
    iget-object v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->mVertexArray:[F

    const/16 v8, 0xd

    aput v4, v7, v8

    .line 145
    iget-object v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->mVertexArray:[F

    const/16 v8, 0xe

    aput v6, v7, v8

    .line 148
    iget-object v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->mVertexArray:[F

    const/16 v8, 0xf

    aput v2, v7, v8

    .line 149
    iget-object v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->mVertexArray:[F

    const/16 v8, 0x10

    aput v4, v7, v8

    .line 150
    iget-object v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->mVertexArray:[F

    const/16 v8, 0x11

    aput v6, v7, v8

    .line 152
    iget-object v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 153
    iget-object v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v8, p0, Lcom/wepie/snake/module/game/main/CCNode;->mVertexArray:[F

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 154
    iget-object v7, p0, Lcom/wepie/snake/module/game/main/CCNode;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 155
    return-void
.end method


# virtual methods
.method public drawSelf()V
    .locals 6

    .prologue
    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 158
    iget v0, p0, Lcom/wepie/snake/module/game/main/CCNode;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 160
    iget v0, p0, Lcom/wepie/snake/module/game/main/CCNode;->muMVPMatrixHandle:I

    const/4 v1, 0x1

    invoke-static {}, Lcom/wepie/snake/module/game/util/MatrixUtil;->getFinalMatrix()[F

    move-result-object v4

    invoke-static {v0, v1, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 161
    iget v0, p0, Lcom/wepie/snake/module/game/main/CCNode;->maPositionHandle:I

    const/4 v1, 0x3

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/wepie/snake/module/game/main/CCNode;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 162
    iget v0, p0, Lcom/wepie/snake/module/game/main/CCNode;->maTexCoorHandle:I

    const/4 v1, 0x2

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/wepie/snake/module/game/main/CCNode;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 164
    iget v0, p0, Lcom/wepie/snake/module/game/main/CCNode;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 165
    iget v0, p0, Lcom/wepie/snake/module/game/main/CCNode;->maTexCoorHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 167
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 168
    const/16 v0, 0xde1

    iget v1, p0, Lcom/wepie/snake/module/game/main/CCNode;->mTextureId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 169
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 170
    return-void
.end method

.method public setPosition(FF)V
    .locals 0
    .param p1, "cx"    # F
    .param p2, "cy"    # F

    .prologue
    .line 107
    iput p1, p0, Lcom/wepie/snake/module/game/main/CCNode;->cx:F

    .line 108
    iput p2, p0, Lcom/wepie/snake/module/game/main/CCNode;->cy:F

    .line 109
    invoke-direct {p0}, Lcom/wepie/snake/module/game/main/CCNode;->updateVertex()V

    .line 110
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/wepie/snake/module/game/main/CCNode;->mWidth:I

    .line 77
    iput p2, p0, Lcom/wepie/snake/module/game/main/CCNode;->mHeight:I

    .line 78
    return-void
.end method

.method public setTexture(I)V
    .locals 1
    .param p1, "res_id"    # I

    .prologue
    .line 85
    invoke-static {p1}, Lcom/wepie/snake/module/game/util/ResUtil;->getBitmapFromRes(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 86
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/game/main/CCNode;->setTexture(Landroid/graphics/Bitmap;)V

    .line 87
    return-void
.end method

.method public setTexture(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    const v5, 0x47012f00    # 33071.0f

    const/4 v4, 0x0

    const/16 v3, 0xde1

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/wepie/snake/module/game/main/CCNode;->mWidth:I

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/wepie/snake/module/game/main/CCNode;->mHeight:I

    .line 93
    new-array v0, v2, [I

    .line 94
    .local v0, "textures":[I
    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 95
    aget v1, v0, v4

    iput v1, p0, Lcom/wepie/snake/module/game/main/CCNode;->mTextureId:I

    .line 97
    iget v1, p0, Lcom/wepie/snake/module/game/main/CCNode;->mTextureId:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 98
    const/16 v1, 0x2801

    const/high16 v2, 0x46180000    # 9728.0f

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 99
    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 101
    const/16 v1, 0x2802

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 102
    const/16 v1, 0x2803

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 103
    invoke-static {v3, v4, p1, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 104
    return-void
.end method

.method public setzOrder(I)V
    .locals 0
    .param p1, "zOrder"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/wepie/snake/module/game/main/CCNode;->zOrder:I

    .line 82
    return-void
.end method
