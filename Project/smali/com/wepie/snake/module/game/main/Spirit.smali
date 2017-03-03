.class public Lcom/wepie/snake/module/game/main/Spirit;
.super Ljava/lang/Object;
.source "Spirit.java"


# instance fields
.field cbb:Ljava/nio/ByteBuffer;

.field private initVCount:I

.field private mContext:Landroid/content/Context;

.field private mProgram:I

.field private mTexCoorBuffer:Ljava/nio/FloatBuffer;

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private maPositionHandle:I

.field private maTexCoorHandle:I

.field private muMVPMatrixHandle:I

.field textureCoordArray:[F

.field private textureId:I

.field private vCount:I

.field vbb:Ljava/nio/ByteBuffer;

.field private vertexArray:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res_id"    # I
    .param p3, "initSpiritCount"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/wepie/snake/module/game/main/Spirit;->mContext:Landroid/content/Context;

    .line 41
    mul-int/lit8 v0, p3, 0x6

    iput v0, p0, Lcom/wepie/snake/module/game/main/Spirit;->initVCount:I

    .line 42
    invoke-direct {p0, p1}, Lcom/wepie/snake/module/game/main/Spirit;->initShader(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p0, p2}, Lcom/wepie/snake/module/game/main/Spirit;->initTexture(I)I

    .line 44
    iget v0, p0, Lcom/wepie/snake/module/game/main/Spirit;->initVCount:I

    invoke-direct {p0, v0}, Lcom/wepie/snake/module/game/main/Spirit;->initVertexArray(I)V

    .line 45
    iget v0, p0, Lcom/wepie/snake/module/game/main/Spirit;->initVCount:I

    invoke-direct {p0, v0}, Lcom/wepie/snake/module/game/main/Spirit;->initTexCoorArray(I)V

    .line 46
    return-void
.end method

.method private checkCapacity(I)V
    .locals 2
    .param p1, "curSpiritCount"    # I

    .prologue
    .line 81
    mul-int/lit8 v0, p1, 0x6

    .line 82
    .local v0, "curVCount":I
    iget v1, p0, Lcom/wepie/snake/module/game/main/Spirit;->initVCount:I

    if-le v0, v1, :cond_0

    .line 83
    iget v1, p0, Lcom/wepie/snake/module/game/main/Spirit;->initVCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/wepie/snake/module/game/main/Spirit;->initVCount:I

    .line 84
    iget v1, p0, Lcom/wepie/snake/module/game/main/Spirit;->initVCount:I

    invoke-direct {p0, v1}, Lcom/wepie/snake/module/game/main/Spirit;->initTexCoorArray(I)V

    .line 85
    iget v1, p0, Lcom/wepie/snake/module/game/main/Spirit;->initVCount:I

    invoke-direct {p0, v1}, Lcom/wepie/snake/module/game/main/Spirit;->initVertexArray(I)V

    .line 87
    :cond_0
    iput v0, p0, Lcom/wepie/snake/module/game/main/Spirit;->vCount:I

    .line 88
    return-void
.end method

.method private initShader(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const-string v2, "common_texture_vertex.sh"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wepie/snake/module/game/util/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "mVertexShader":Ljava/lang/String;
    const-string v2, "common_texture_frag.sh"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wepie/snake/module/game/util/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "mFragShader":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/wepie/snake/module/game/util/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/wepie/snake/module/game/main/Spirit;->mProgram:I

    .line 52
    iget v2, p0, Lcom/wepie/snake/module/game/main/Spirit;->mProgram:I

    const-string v3, "uMVPMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/wepie/snake/module/game/main/Spirit;->muMVPMatrixHandle:I

    .line 53
    iget v2, p0, Lcom/wepie/snake/module/game/main/Spirit;->mProgram:I

    const-string v3, "aPosition"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/wepie/snake/module/game/main/Spirit;->maPositionHandle:I

    .line 54
    iget v2, p0, Lcom/wepie/snake/module/game/main/Spirit;->mProgram:I

    const-string v3, "aTextureCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/wepie/snake/module/game/main/Spirit;->maTexCoorHandle:I

    .line 55
    return-void
.end method

.method private initTexCoorArray(I)V
    .locals 7
    .param p1, "vcount"    # I

    .prologue
    const/4 v6, 0x0

    .line 117
    mul-int/lit8 v4, p1, 0x2

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/wepie/snake/module/game/main/Spirit;->textureCoordArray:[F

    .line 118
    const/high16 v3, 0x3f800000    # 1.0f

    .line 119
    .local v3, "tRange":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 120
    .local v2, "sRange":F
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/Spirit;->textureCoordArray:[F

    array-length v0, v4

    .line 121
    .local v0, "coorlen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 123
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/Spirit;->textureCoordArray:[F

    aput v6, v4, v1

    .line 124
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/Spirit;->textureCoordArray:[F

    add-int/lit8 v5, v1, 0x1

    aput v6, v4, v5

    .line 126
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/Spirit;->textureCoordArray:[F

    add-int/lit8 v5, v1, 0x2

    aput v6, v4, v5

    .line 127
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/Spirit;->textureCoordArray:[F

    add-int/lit8 v5, v1, 0x3

    aput v3, v4, v5

    .line 129
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/Spirit;->textureCoordArray:[F

    add-int/lit8 v5, v1, 0x4

    aput v2, v4, v5

    .line 130
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/Spirit;->textureCoordArray:[F

    add-int/lit8 v5, v1, 0x5

    aput v3, v4, v5

    .line 132
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/Spirit;->textureCoordArray:[F

    add-int/lit8 v5, v1, 0x6

    aput v2, v4, v5

    .line 133
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/Spirit;->textureCoordArray:[F

    add-int/lit8 v5, v1, 0x7

    aput v3, v4, v5

    .line 135
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/Spirit;->textureCoordArray:[F

    add-int/lit8 v5, v1, 0x8

    aput v2, v4, v5

    .line 136
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/Spirit;->textureCoordArray:[F

    add-int/lit8 v5, v1, 0x9

    aput v6, v4, v5

    .line 138
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/Spirit;->textureCoordArray:[F

    add-int/lit8 v5, v1, 0xa

    aput v6, v4, v5

    .line 139
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/Spirit;->textureCoordArray:[F

    add-int/lit8 v5, v1, 0xb

    aput v6, v4, v5

    .line 121
    add-int/lit8 v1, v1, 0xc

    goto :goto_0

    .line 142
    :cond_0
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/Spirit;->textureCoordArray:[F

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/wepie/snake/module/game/main/Spirit;->cbb:Ljava/nio/ByteBuffer;

    .line 143
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/Spirit;->cbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 144
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/Spirit;->cbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/wepie/snake/module/game/main/Spirit;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    .line 145
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/Spirit;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/wepie/snake/module/game/main/Spirit;->textureCoordArray:[F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 146
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/Spirit;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    return-void
.end method

.method private initVertexArray(I)V
    .locals 2
    .param p1, "vcount"    # I

    .prologue
    .line 110
    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/wepie/snake/module/game/main/Spirit;->vertexArray:[F

    .line 111
    iget-object v0, p0, Lcom/wepie/snake/module/game/main/Spirit;->vertexArray:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/wepie/snake/module/game/main/Spirit;->vbb:Ljava/nio/ByteBuffer;

    .line 112
    iget-object v0, p0, Lcom/wepie/snake/module/game/main/Spirit;->vbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 113
    iget-object v0, p0, Lcom/wepie/snake/module/game/main/Spirit;->vbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/wepie/snake/module/game/main/Spirit;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 114
    return-void
.end method


# virtual methods
.method public drawSelf()V
    .locals 6

    .prologue
    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 97
    iget v0, p0, Lcom/wepie/snake/module/game/main/Spirit;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 98
    iget v0, p0, Lcom/wepie/snake/module/game/main/Spirit;->muMVPMatrixHandle:I

    const/4 v1, 0x1

    invoke-static {}, Lcom/wepie/snake/module/game/util/MatrixUtil;->getFinalMatrix()[F

    move-result-object v4

    invoke-static {v0, v1, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 99
    iget v0, p0, Lcom/wepie/snake/module/game/main/Spirit;->maPositionHandle:I

    const/4 v1, 0x3

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/wepie/snake/module/game/main/Spirit;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 100
    iget v0, p0, Lcom/wepie/snake/module/game/main/Spirit;->maTexCoorHandle:I

    const/4 v1, 0x2

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/wepie/snake/module/game/main/Spirit;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 101
    iget v0, p0, Lcom/wepie/snake/module/game/main/Spirit;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 102
    iget v0, p0, Lcom/wepie/snake/module/game/main/Spirit;->maTexCoorHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 104
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 105
    const/16 v0, 0xde1

    iget v1, p0, Lcom/wepie/snake/module/game/main/Spirit;->textureId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 106
    const/4 v0, 0x4

    iget v1, p0, Lcom/wepie/snake/module/game/main/Spirit;->vCount:I

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 107
    return-void
.end method

.method public getVertexArray(I)[F
    .locals 1
    .param p1, "curSpiritCount"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/wepie/snake/module/game/main/Spirit;->checkCapacity(I)V

    .line 77
    iget-object v0, p0, Lcom/wepie/snake/module/game/main/Spirit;->vertexArray:[F

    return-object v0
.end method

.method public initTexture(I)I
    .locals 7
    .param p1, "res_id"    # I

    .prologue
    const/4 v2, 0x1

    const v6, 0x47012f00    # 33071.0f

    const/4 v5, 0x0

    const/16 v4, 0xde1

    .line 58
    new-array v1, v2, [I

    .line 59
    .local v1, "textures":[I
    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 60
    aget v2, v1, v5

    iput v2, p0, Lcom/wepie/snake/module/game/main/Spirit;->textureId:I

    .line 62
    iget v2, p0, Lcom/wepie/snake/module/game/main/Spirit;->textureId:I

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 64
    const/16 v2, 0x2801

    const/high16 v3, 0x46180000    # 9728.0f

    invoke-static {v4, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 65
    const/16 v2, 0x2800

    const v3, 0x46180400    # 9729.0f

    invoke-static {v4, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 67
    const/16 v2, 0x2802

    invoke-static {v4, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 68
    const/16 v2, 0x2803

    invoke-static {v4, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 69
    invoke-static {p1}, Lcom/wepie/snake/module/game/util/ResUtil;->getBitmapFromRes(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v4, v5, v0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 72
    iget v2, p0, Lcom/wepie/snake/module/game/main/Spirit;->textureId:I

    return v2
.end method

.method public refreshVertexBuffer()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/wepie/snake/module/game/main/Spirit;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 92
    iget-object v0, p0, Lcom/wepie/snake/module/game/main/Spirit;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/wepie/snake/module/game/main/Spirit;->vertexArray:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 93
    iget-object v0, p0, Lcom/wepie/snake/module/game/main/Spirit;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 94
    return-void
.end method
