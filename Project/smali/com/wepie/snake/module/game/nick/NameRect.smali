.class public Lcom/wepie/snake/module/game/nick/NameRect;
.super Ljava/lang/Object;
.source "NameRect.java"


# instance fields
.field private bitmapHeight:I

.field private bitmapWith:I

.field private mContext:Landroid/content/Context;

.field private mProgram:I

.field private mTexCoorBuffer:Ljava/nio/FloatBuffer;

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private maPositionHandle:I

.field private maTexCoorHandle:I

.field private mapTextureId:I

.field private muMVPMatrixHandle:I

.field name:Ljava/lang/String;

.field private vCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, " "

    iput-object v0, p0, Lcom/wepie/snake/module/game/nick/NameRect;->name:Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/wepie/snake/module/game/nick/NameRect;->initShader()V

    .line 46
    iput-object p1, p0, Lcom/wepie/snake/module/game/nick/NameRect;->name:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/wepie/snake/module/game/nick/NameRect;->initTexture()I

    move-result v0

    iput v0, p0, Lcom/wepie/snake/module/game/nick/NameRect;->mapTextureId:I

    .line 48
    invoke-direct {p0}, Lcom/wepie/snake/module/game/nick/NameRect;->initVertexData()V

    .line 49
    return-void
.end method

.method private initShader()V
    .locals 4

    .prologue
    .line 52
    const-string v2, "common_texture_vertex.sh"

    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wepie/snake/base/SkApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wepie/snake/module/game/util/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "mVertexShader":Ljava/lang/String;
    const-string v2, "common_texture_frag.sh"

    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wepie/snake/base/SkApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wepie/snake/module/game/util/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "mFragShader":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/wepie/snake/module/game/util/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/wepie/snake/module/game/nick/NameRect;->mProgram:I

    .line 55
    iget v2, p0, Lcom/wepie/snake/module/game/nick/NameRect;->mProgram:I

    const-string v3, "uMVPMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/wepie/snake/module/game/nick/NameRect;->muMVPMatrixHandle:I

    .line 56
    iget v2, p0, Lcom/wepie/snake/module/game/nick/NameRect;->mProgram:I

    const-string v3, "aPosition"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/wepie/snake/module/game/nick/NameRect;->maPositionHandle:I

    .line 57
    iget v2, p0, Lcom/wepie/snake/module/game/nick/NameRect;->mProgram:I

    const-string v3, "aTextureCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/wepie/snake/module/game/nick/NameRect;->maTexCoorHandle:I

    .line 58
    return-void
.end method

.method private initVertexData()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v13, 0x6

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 61
    iput v13, p0, Lcom/wepie/snake/module/game/nick/NameRect;->vCount:I

    .line 62
    iget v9, p0, Lcom/wepie/snake/module/game/nick/NameRect;->bitmapWith:I

    int-to-float v9, v9

    invoke-static {v9}, Lcom/wepie/snake/module/game/util/CoordUtil;->screenSize2GLSize(F)F

    move-result v9

    div-float v6, v9, v10

    .line 63
    .local v6, "x":F
    iget v9, p0, Lcom/wepie/snake/module/game/nick/NameRect;->bitmapHeight:I

    int-to-float v9, v9

    invoke-static {v9}, Lcom/wepie/snake/module/game/util/CoordUtil;->screenSize2GLSize(F)F

    move-result v9

    div-float v7, v9, v10

    .line 64
    .local v7, "y":F
    const/high16 v8, 0x40000000    # 2.0f

    .line 65
    .local v8, "z":F
    const/16 v9, 0x12

    new-array v5, v9, [F

    neg-float v9, v6

    aput v9, v5, v12

    aput v7, v5, v14

    const/4 v9, 0x2

    aput v8, v5, v9

    const/4 v9, 0x3

    neg-float v10, v6

    aput v10, v5, v9

    const/4 v9, 0x4

    neg-float v10, v7

    aput v10, v5, v9

    const/4 v9, 0x5

    aput v8, v5, v9

    aput v6, v5, v13

    const/4 v9, 0x7

    neg-float v10, v7

    aput v10, v5, v9

    const/16 v9, 0x8

    aput v8, v5, v9

    const/16 v9, 0x9

    aput v6, v5, v9

    const/16 v9, 0xa

    neg-float v10, v7

    aput v10, v5, v9

    const/16 v9, 0xb

    aput v8, v5, v9

    const/16 v9, 0xc

    aput v6, v5, v9

    const/16 v9, 0xd

    aput v7, v5, v9

    const/16 v9, 0xe

    aput v8, v5, v9

    const/16 v9, 0xf

    neg-float v10, v6

    aput v10, v5, v9

    const/16 v9, 0x10

    aput v7, v5, v9

    const/16 v9, 0x11

    aput v8, v5, v9

    .line 74
    .local v5, "vertexArray":[F
    array-length v9, v5

    mul-int/lit8 v9, v9, 0x4

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 75
    .local v4, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/wepie/snake/module/game/nick/NameRect;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 77
    iget-object v9, p0, Lcom/wepie/snake/module/game/nick/NameRect;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 78
    iget-object v9, p0, Lcom/wepie/snake/module/game/nick/NameRect;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    const/high16 v2, 0x3f800000    # 1.0f

    .line 81
    .local v2, "tRange":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 82
    .local v1, "sRange":F
    const/16 v9, 0xc

    new-array v3, v9, [F

    aput v11, v3, v12

    aput v11, v3, v14

    const/4 v9, 0x2

    aput v11, v3, v9

    const/4 v9, 0x3

    aput v2, v3, v9

    const/4 v9, 0x4

    aput v1, v3, v9

    const/4 v9, 0x5

    aput v2, v3, v9

    aput v1, v3, v13

    const/4 v9, 0x7

    aput v2, v3, v9

    const/16 v9, 0x8

    aput v1, v3, v9

    const/16 v9, 0x9

    aput v11, v3, v9

    const/16 v9, 0xa

    aput v11, v3, v9

    const/16 v9, 0xb

    aput v11, v3, v9

    .line 91
    .local v3, "textureCoordArray":[F
    array-length v9, v3

    mul-int/lit8 v9, v9, 0x4

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    .local v0, "cbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 93
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/wepie/snake/module/game/nick/NameRect;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    .line 94
    iget-object v9, p0, Lcom/wepie/snake/module/game/nick/NameRect;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 95
    iget-object v9, p0, Lcom/wepie/snake/module/game/nick/NameRect;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 96
    return-void
.end method


# virtual methods
.method public drawSelf()V
    .locals 6

    .prologue
    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 117
    iget v0, p0, Lcom/wepie/snake/module/game/nick/NameRect;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 119
    iget v0, p0, Lcom/wepie/snake/module/game/nick/NameRect;->muMVPMatrixHandle:I

    const/4 v1, 0x1

    invoke-static {}, Lcom/wepie/snake/module/game/util/MatrixUtil;->getFinalMatrix()[F

    move-result-object v4

    invoke-static {v0, v1, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 120
    iget v0, p0, Lcom/wepie/snake/module/game/nick/NameRect;->maPositionHandle:I

    const/4 v1, 0x3

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/wepie/snake/module/game/nick/NameRect;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 121
    iget v0, p0, Lcom/wepie/snake/module/game/nick/NameRect;->maTexCoorHandle:I

    const/4 v1, 0x2

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/wepie/snake/module/game/nick/NameRect;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 123
    iget v0, p0, Lcom/wepie/snake/module/game/nick/NameRect;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 124
    iget v0, p0, Lcom/wepie/snake/module/game/nick/NameRect;->maTexCoorHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 126
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 127
    const/16 v0, 0xde1

    iget v1, p0, Lcom/wepie/snake/module/game/nick/NameRect;->mapTextureId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 128
    const/4 v0, 0x4

    iget v1, p0, Lcom/wepie/snake/module/game/nick/NameRect;->vCount:I

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 129
    return-void
.end method

.method public getMapBitmap()Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/high16 v12, 0x41200000    # 10.0f

    .line 132
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 133
    .local v6, "paint":Landroid/graphics/Paint;
    invoke-static {v12}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 134
    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 135
    const/high16 v10, -0x10000

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 138
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 139
    .local v3, "bound":Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/wepie/snake/module/game/nick/NameRect;->name:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11, v13, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 140
    new-instance v7, Landroid/text/TextPaint;

    invoke-direct {v7}, Landroid/text/TextPaint;-><init>()V

    .line 141
    .local v7, "textPaint":Landroid/text/TextPaint;
    invoke-static {v12}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 142
    iget-object v10, p0, Lcom/wepie/snake/module/game/nick/NameRect;->name:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 143
    .local v5, "len":F
    float-to-int v10, v5

    add-int/lit8 v10, v10, 0xa

    iput v10, p0, Lcom/wepie/snake/module/game/nick/NameRect;->bitmapWith:I

    .line 144
    const/high16 v10, 0x41a00000    # 20.0f

    invoke-static {v10}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v10

    iput v10, p0, Lcom/wepie/snake/module/game/nick/NameRect;->bitmapHeight:I

    .line 146
    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    iget v11, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 147
    .local v1, "baselineToCenter":I
    iget-object v10, p0, Lcom/wepie/snake/module/game/nick/NameRect;->name:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-int v8, v10

    .line 148
    .local v8, "width":I
    iget v10, p0, Lcom/wepie/snake/module/game/nick/NameRect;->bitmapWith:I

    sub-int/2addr v10, v8

    div-int/lit8 v9, v10, 0x2

    .line 149
    .local v9, "xOffset":I
    iget v10, p0, Lcom/wepie/snake/module/game/nick/NameRect;->bitmapHeight:I

    div-int/lit8 v10, v10, 0x2

    add-int v0, v10, v1

    .line 151
    .local v0, "baseline":I
    iget v10, p0, Lcom/wepie/snake/module/game/nick/NameRect;->bitmapWith:I

    iget v11, p0, Lcom/wepie/snake/module/game/nick/NameRect;->bitmapHeight:I

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 152
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 153
    .local v4, "canvas":Landroid/graphics/Canvas;
    iget-object v10, p0, Lcom/wepie/snake/module/game/nick/NameRect;->name:Ljava/lang/String;

    int-to-float v11, v9

    int-to-float v12, v0

    invoke-virtual {v4, v10, v11, v12, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 155
    return-object v2
.end method

.method public initTexture()I
    .locals 8

    .prologue
    const/4 v3, 0x1

    const v5, 0x47012f00    # 33071.0f

    const/4 v7, 0x0

    const/16 v6, 0xde1

    .line 99
    new-array v2, v3, [I

    .line 100
    .local v2, "textures":[I
    invoke-static {v3, v2, v7}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 101
    aget v1, v2, v7

    .line 103
    .local v1, "textureId":I
    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 104
    const/16 v3, 0x2801

    const/high16 v4, 0x46180000    # 9728.0f

    invoke-static {v6, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 105
    const/16 v3, 0x2800

    const v4, 0x46180400    # 9729.0f

    invoke-static {v6, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 107
    const/16 v3, 0x2802

    invoke-static {v6, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 108
    const/16 v3, 0x2803

    invoke-static {v6, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 110
    invoke-virtual {p0}, Lcom/wepie/snake/module/game/nick/NameRect;->getMapBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const-string v3, "999"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----->nameRect initTexture bw="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/wepie/snake/module/game/nick/NameRect;->bitmapWith:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bh="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/wepie/snake/module/game/nick/NameRect;->bitmapHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {v6, v7, v0, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 113
    return v1
.end method
