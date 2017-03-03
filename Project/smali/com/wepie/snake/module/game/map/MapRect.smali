.class public Lcom/wepie/snake/module/game/map/MapRect;
.super Ljava/lang/Object;
.source "MapRect.java"


# instance fields
.field private bitmapHeight:I

.field private bitmapWith:I

.field private mContext:Landroid/content/Context;

.field private mProgram:I

.field private mTexCoorBuffer:Ljava/nio/FloatBuffer;

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private maPositionHandle:I

.field private maTexCoorHandle:I

.field private mapFactor:F

.field private mapTextureId:I

.field private muMVPMatrixHandle:I

.field textureCoordArray:[F

.field private vCount:I

.field vertexArray:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/wepie/snake/module/game/map/MapRect;->mapFactor:F

    .line 71
    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/wepie/snake/module/game/map/MapRect;->textureCoordArray:[F

    .line 72
    const/16 v0, 0x12

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/wepie/snake/module/game/map/MapRect;->vertexArray:[F

    .line 41
    iput-object p1, p0, Lcom/wepie/snake/module/game/map/MapRect;->mContext:Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Lcom/wepie/snake/module/game/map/MapRect;->initShader(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p0}, Lcom/wepie/snake/module/game/map/MapRect;->initTexture()I

    move-result v0

    iput v0, p0, Lcom/wepie/snake/module/game/map/MapRect;->mapTextureId:I

    .line 44
    invoke-direct {p0}, Lcom/wepie/snake/module/game/map/MapRect;->initBuffer()V

    .line 45
    return-void
.end method

.method private initBuffer()V
    .locals 3

    .prologue
    .line 57
    const/4 v2, 0x6

    iput v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->vCount:I

    .line 59
    iget-object v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->vertexArray:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 60
    .local v1, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 63
    iget-object v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->textureCoordArray:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 64
    .local v0, "cbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 65
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    .line 67
    invoke-direct {p0}, Lcom/wepie/snake/module/game/map/MapRect;->initTextureCoord()V

    .line 68
    invoke-virtual {p0}, Lcom/wepie/snake/module/game/map/MapRect;->updateVertex()V

    .line 69
    return-void
.end method

.method private initShader(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const-string v2, "common_texture_vertex.sh"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wepie/snake/module/game/util/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "mVertexShader":Ljava/lang/String;
    const-string v2, "common_texture_frag.sh"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wepie/snake/module/game/util/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "mFragShader":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/wepie/snake/module/game/util/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->mProgram:I

    .line 51
    iget v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->mProgram:I

    const-string v3, "uMVPMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->muMVPMatrixHandle:I

    .line 52
    iget v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->mProgram:I

    const-string v3, "aPosition"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->maPositionHandle:I

    .line 53
    iget v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->mProgram:I

    const-string v3, "aTextureCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->maTexCoorHandle:I

    .line 54
    return-void
.end method

.method private initTextureCoord()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 109
    invoke-static {}, Lcom/wepie/snake/module/game/util/ScreenUtil;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/wepie/snake/module/game/snake/GameConfig;->MAP_HEIGHT:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->bitmapHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/wepie/snake/module/game/map/MapRect;->mapFactor:F

    mul-float/2addr v3, v4

    div-float v1, v2, v3

    .line 110
    .local v1, "tRange":F
    invoke-static {}, Lcom/wepie/snake/module/game/util/ScreenUtil;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/wepie/snake/module/game/snake/GameConfig;->MAP_WIDTH:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->bitmapWith:I

    int-to-float v3, v3

    iget v4, p0, Lcom/wepie/snake/module/game/map/MapRect;->mapFactor:F

    mul-float/2addr v3, v4

    div-float v0, v2, v3

    .line 111
    .local v0, "sRange":F
    iget-object v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->textureCoordArray:[F

    aput v5, v2, v6

    .line 112
    iget-object v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->textureCoordArray:[F

    const/4 v3, 0x1

    aput v5, v2, v3

    .line 113
    iget-object v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->textureCoordArray:[F

    const/4 v3, 0x2

    aput v5, v2, v3

    .line 114
    iget-object v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->textureCoordArray:[F

    const/4 v3, 0x3

    aput v1, v2, v3

    .line 115
    iget-object v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->textureCoordArray:[F

    const/4 v3, 0x4

    aput v0, v2, v3

    .line 116
    iget-object v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->textureCoordArray:[F

    const/4 v3, 0x5

    aput v1, v2, v3

    .line 117
    iget-object v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->textureCoordArray:[F

    const/4 v3, 0x6

    aput v0, v2, v3

    .line 118
    iget-object v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->textureCoordArray:[F

    const/4 v3, 0x7

    aput v1, v2, v3

    .line 119
    iget-object v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->textureCoordArray:[F

    const/16 v3, 0x8

    aput v0, v2, v3

    .line 120
    iget-object v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->textureCoordArray:[F

    const/16 v3, 0x9

    aput v5, v2, v3

    .line 121
    iget-object v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->textureCoordArray:[F

    const/16 v3, 0xa

    aput v5, v2, v3

    .line 122
    iget-object v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->textureCoordArray:[F

    const/16 v3, 0xb

    aput v5, v2, v3

    .line 124
    iget-object v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 125
    iget-object v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->textureCoordArray:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 126
    iget-object v2, p0, Lcom/wepie/snake/module/game/map/MapRect;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 127
    return-void
.end method


# virtual methods
.method public drawSelf()V
    .locals 6

    .prologue
    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/wepie/snake/module/game/map/MapRect;->updateVertex()V

    .line 153
    iget v0, p0, Lcom/wepie/snake/module/game/map/MapRect;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 155
    iget v0, p0, Lcom/wepie/snake/module/game/map/MapRect;->muMVPMatrixHandle:I

    const/4 v1, 0x1

    invoke-static {}, Lcom/wepie/snake/module/game/util/MatrixUtil;->getFinalMatrix()[F

    move-result-object v4

    invoke-static {v0, v1, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 156
    iget v0, p0, Lcom/wepie/snake/module/game/map/MapRect;->maPositionHandle:I

    const/4 v1, 0x3

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/wepie/snake/module/game/map/MapRect;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 157
    iget v0, p0, Lcom/wepie/snake/module/game/map/MapRect;->maTexCoorHandle:I

    const/4 v1, 0x2

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/wepie/snake/module/game/map/MapRect;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 159
    iget v0, p0, Lcom/wepie/snake/module/game/map/MapRect;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 160
    iget v0, p0, Lcom/wepie/snake/module/game/map/MapRect;->maTexCoorHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 162
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 163
    const/16 v0, 0xde1

    iget v1, p0, Lcom/wepie/snake/module/game/map/MapRect;->mapTextureId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 164
    const/4 v0, 0x4

    iget v1, p0, Lcom/wepie/snake/module/game/map/MapRect;->vCount:I

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 165
    return-void
.end method

.method public initTexture()I
    .locals 8

    .prologue
    const/4 v3, 0x1

    const v5, 0x46240400    # 10497.0f

    const/4 v7, 0x0

    const/16 v6, 0xde1

    .line 130
    new-array v2, v3, [I

    .line 131
    .local v2, "textures":[I
    invoke-static {v3, v2, v7}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 132
    aget v1, v2, v7

    .line 134
    .local v1, "textureId":I
    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 135
    const/16 v3, 0x2801

    const/high16 v4, 0x46180000    # 9728.0f

    invoke-static {v6, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 136
    const/16 v3, 0x2800

    const v4, 0x46180400    # 9729.0f

    invoke-static {v6, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 138
    const/16 v3, 0x2802

    invoke-static {v6, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 139
    const/16 v3, 0x2803

    invoke-static {v6, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 141
    const v3, 0x7f0200ac

    invoke-static {v3}, Lcom/wepie/snake/module/game/util/ResUtil;->getBitmapFromRes(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 143
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->bitmapWith:I

    .line 144
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->bitmapHeight:I

    .line 145
    const-string v3, "999"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----->MapRect initTexture bw="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/wepie/snake/module/game/map/MapRect;->bitmapWith:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bh="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/wepie/snake/module/game/map/MapRect;->bitmapHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {v6, v7, v0, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 147
    return v1
.end method

.method public updateVertex()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 75
    sget v3, Lcom/wepie/snake/module/game/util/CoordUtil;->camera_left:F

    sget v4, Lcom/wepie/snake/module/game/snake/GameConfig;->MAP_WIDTH:F

    mul-float/2addr v3, v4

    sget v4, Lcom/wepie/snake/module/game/snake/GameConfig;->factor:F

    mul-float v0, v3, v4

    .line 76
    .local v0, "x":F
    sget v3, Lcom/wepie/snake/module/game/util/CoordUtil;->camera_top:F

    sget v4, Lcom/wepie/snake/module/game/snake/GameConfig;->MAP_HEIGHT:F

    mul-float/2addr v3, v4

    sget v4, Lcom/wepie/snake/module/game/snake/GameConfig;->factor:F

    mul-float v1, v3, v4

    .line 77
    .local v1, "y":F
    const/high16 v2, 0x40000000    # 2.0f

    .line 79
    .local v2, "z":F
    iget-object v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->vertexArray:[F

    neg-float v4, v0

    aput v4, v3, v6

    .line 80
    iget-object v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->vertexArray:[F

    const/4 v4, 0x1

    aput v1, v3, v4

    .line 81
    iget-object v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->vertexArray:[F

    const/4 v4, 0x2

    aput v2, v3, v4

    .line 83
    iget-object v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->vertexArray:[F

    const/4 v4, 0x3

    neg-float v5, v0

    aput v5, v3, v4

    .line 84
    iget-object v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->vertexArray:[F

    const/4 v4, 0x4

    neg-float v5, v1

    aput v5, v3, v4

    .line 85
    iget-object v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->vertexArray:[F

    const/4 v4, 0x5

    aput v2, v3, v4

    .line 87
    iget-object v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->vertexArray:[F

    const/4 v4, 0x6

    aput v0, v3, v4

    .line 88
    iget-object v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->vertexArray:[F

    const/4 v4, 0x7

    neg-float v5, v1

    aput v5, v3, v4

    .line 89
    iget-object v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->vertexArray:[F

    const/16 v4, 0x8

    aput v2, v3, v4

    .line 91
    iget-object v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->vertexArray:[F

    const/16 v4, 0x9

    aput v0, v3, v4

    .line 92
    iget-object v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->vertexArray:[F

    const/16 v4, 0xa

    neg-float v5, v1

    aput v5, v3, v4

    .line 93
    iget-object v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->vertexArray:[F

    const/16 v4, 0xb

    aput v2, v3, v4

    .line 95
    iget-object v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->vertexArray:[F

    const/16 v4, 0xc

    aput v0, v3, v4

    .line 96
    iget-object v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->vertexArray:[F

    const/16 v4, 0xd

    aput v1, v3, v4

    .line 97
    iget-object v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->vertexArray:[F

    const/16 v4, 0xe

    aput v2, v3, v4

    .line 99
    iget-object v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->vertexArray:[F

    const/16 v4, 0xf

    neg-float v5, v0

    aput v5, v3, v4

    .line 100
    iget-object v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->vertexArray:[F

    const/16 v4, 0x10

    aput v1, v3, v4

    .line 101
    iget-object v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->vertexArray:[F

    const/16 v4, 0x11

    aput v2, v3, v4

    .line 103
    iget-object v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 104
    iget-object v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/wepie/snake/module/game/map/MapRect;->vertexArray:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 105
    iget-object v3, p0, Lcom/wepie/snake/module/game/map/MapRect;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 106
    return-void
.end method
