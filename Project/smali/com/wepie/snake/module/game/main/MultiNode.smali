.class public Lcom/wepie/snake/module/game/main/MultiNode;
.super Ljava/lang/Object;
.source "MultiNode.java"


# static fields
.field public static res_array:[I


# instance fields
.field cbb:Ljava/nio/ByteBuffer;

.field private initVCount:I

.field private mGLTexUnitArray:[I

.field private mProgram:I

.field private mTexCoorBuffer:Ljava/nio/FloatBuffer;

.field private mTexHandlerArray:[I

.field private mTexIdArray:[I

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private maPositionHandle:I

.field private maTexCoorHandle:I

.field private muMVPMatrixHandle:I

.field private muRenderTagHandle:I

.field textureCoordArray:[F

.field private vCount:I

.field vbb:Ljava/nio/ByteBuffer;

.field private vertexArray:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/wepie/snake/module/game/main/MultiNode;->res_array:[I

    return-void

    :array_0
    .array-data 4
        0x7f02004d
        0x7f02004e
        0x7f02004f
        0x7f020050
        0x7f020051
        0x7f020052
        0x7f020053
        0x7f020054
        0x7f02004d
        0x7f02004e
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initSpiritCount"    # I

    .prologue
    const/16 v1, 0xa

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mGLTexUnitArray:[I

    .line 44
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mTexHandlerArray:[I

    .line 45
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mTexIdArray:[I

    .line 53
    mul-int/lit8 v0, p1, 0x6

    iput v0, p0, Lcom/wepie/snake/module/game/main/MultiNode;->initVCount:I

    .line 54
    invoke-direct {p0}, Lcom/wepie/snake/module/game/main/MultiNode;->initShader()V

    .line 56
    iget v0, p0, Lcom/wepie/snake/module/game/main/MultiNode;->initVCount:I

    invoke-direct {p0, v0}, Lcom/wepie/snake/module/game/main/MultiNode;->initVertexArray(I)V

    .line 57
    iget v0, p0, Lcom/wepie/snake/module/game/main/MultiNode;->initVCount:I

    invoke-direct {p0, v0}, Lcom/wepie/snake/module/game/main/MultiNode;->initTexCoorArray(I)V

    .line 58
    return-void

    .line 39
    :array_0
    .array-data 4
        0x84c0
        0x84c1
        0x84c2
        0x84c3
        0x84c4
        0x84c5
        0x84c6
        0x84c7
        0x84c8
        0x84c9
    .end array-data
.end method

.method private actTexture()V
    .locals 3

    .prologue
    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mTexIdArray:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mGLTexUnitArray:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 166
    const/16 v1, 0xde1

    iget-object v2, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mTexIdArray:[I

    aget v2, v2, v0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 167
    iget-object v1, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mTexHandlerArray:[I

    aget v1, v1, v0

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-void
.end method

.method private checkCapacity(I)V
    .locals 2
    .param p1, "curSpiritCount"    # I

    .prologue
    .line 134
    mul-int/lit8 v0, p1, 0x6

    .line 135
    .local v0, "curVCount":I
    iget v1, p0, Lcom/wepie/snake/module/game/main/MultiNode;->initVCount:I

    if-le v0, v1, :cond_0

    .line 136
    iget v1, p0, Lcom/wepie/snake/module/game/main/MultiNode;->initVCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/wepie/snake/module/game/main/MultiNode;->initVCount:I

    .line 137
    iget v1, p0, Lcom/wepie/snake/module/game/main/MultiNode;->initVCount:I

    invoke-direct {p0, v1}, Lcom/wepie/snake/module/game/main/MultiNode;->initTexCoorArray(I)V

    .line 138
    iget v1, p0, Lcom/wepie/snake/module/game/main/MultiNode;->initVCount:I

    invoke-direct {p0, v1}, Lcom/wepie/snake/module/game/main/MultiNode;->initVertexArray(I)V

    .line 140
    :cond_0
    iput v0, p0, Lcom/wepie/snake/module/game/main/MultiNode;->vCount:I

    .line 141
    return-void
.end method

.method private initShader()V
    .locals 4

    .prologue
    .line 61
    const-string v2, "multi_texture_vertex.sh"

    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wepie/snake/base/SkApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wepie/snake/module/game/util/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "mVertexShader":Ljava/lang/String;
    const-string v2, "multi_texture_frag.sh"

    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wepie/snake/base/SkApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wepie/snake/module/game/util/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "mFragShader":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/wepie/snake/module/game/util/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mProgram:I

    .line 64
    iget v2, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mProgram:I

    const-string v3, "uMVPMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/wepie/snake/module/game/main/MultiNode;->muMVPMatrixHandle:I

    .line 65
    iget v2, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mProgram:I

    const-string v3, "aPosition"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/wepie/snake/module/game/main/MultiNode;->maPositionHandle:I

    .line 66
    iget v2, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mProgram:I

    const-string v3, "aTextureCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/wepie/snake/module/game/main/MultiNode;->maTexCoorHandle:I

    .line 67
    iget v2, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mProgram:I

    const-string v3, "uRender_tag"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/wepie/snake/module/game/main/MultiNode;->muRenderTagHandle:I

    .line 69
    return-void
.end method

.method private initTexCoorArray(I)V
    .locals 7
    .param p1, "vcount"    # I

    .prologue
    const/4 v6, 0x0

    .line 179
    mul-int/lit8 v4, p1, 0x2

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/wepie/snake/module/game/main/MultiNode;->textureCoordArray:[F

    .line 180
    const/high16 v3, 0x3f800000    # 1.0f

    .line 181
    .local v3, "tRange":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 182
    .local v2, "sRange":F
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/MultiNode;->textureCoordArray:[F

    array-length v0, v4

    .line 183
    .local v0, "coorlen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 185
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/MultiNode;->textureCoordArray:[F

    aput v6, v4, v1

    .line 186
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/MultiNode;->textureCoordArray:[F

    add-int/lit8 v5, v1, 0x1

    aput v6, v4, v5

    .line 188
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/MultiNode;->textureCoordArray:[F

    add-int/lit8 v5, v1, 0x2

    aput v6, v4, v5

    .line 189
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/MultiNode;->textureCoordArray:[F

    add-int/lit8 v5, v1, 0x3

    aput v3, v4, v5

    .line 191
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/MultiNode;->textureCoordArray:[F

    add-int/lit8 v5, v1, 0x4

    aput v2, v4, v5

    .line 192
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/MultiNode;->textureCoordArray:[F

    add-int/lit8 v5, v1, 0x5

    aput v3, v4, v5

    .line 194
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/MultiNode;->textureCoordArray:[F

    add-int/lit8 v5, v1, 0x6

    aput v2, v4, v5

    .line 195
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/MultiNode;->textureCoordArray:[F

    add-int/lit8 v5, v1, 0x7

    aput v3, v4, v5

    .line 197
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/MultiNode;->textureCoordArray:[F

    add-int/lit8 v5, v1, 0x8

    aput v2, v4, v5

    .line 198
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/MultiNode;->textureCoordArray:[F

    add-int/lit8 v5, v1, 0x9

    aput v6, v4, v5

    .line 200
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/MultiNode;->textureCoordArray:[F

    add-int/lit8 v5, v1, 0xa

    aput v6, v4, v5

    .line 201
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/MultiNode;->textureCoordArray:[F

    add-int/lit8 v5, v1, 0xb

    aput v6, v4, v5

    .line 183
    add-int/lit8 v1, v1, 0xc

    goto :goto_0

    .line 204
    :cond_0
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/MultiNode;->textureCoordArray:[F

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/wepie/snake/module/game/main/MultiNode;->cbb:Ljava/nio/ByteBuffer;

    .line 205
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/MultiNode;->cbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 206
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/MultiNode;->cbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    .line 207
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/wepie/snake/module/game/main/MultiNode;->textureCoordArray:[F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 208
    iget-object v4, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 209
    return-void
.end method

.method private initTexture(I)I
    .locals 8
    .param p1, "res_id"    # I

    .prologue
    const/4 v3, 0x1

    const v7, 0x47012f00    # 33071.0f

    const/4 v6, 0x0

    const/16 v5, 0xde1

    .line 95
    new-array v2, v3, [I

    .line 96
    .local v2, "textures":[I
    invoke-static {v3, v2, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 97
    aget v1, v2, v6

    .line 99
    .local v1, "textureId":I
    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 101
    const/16 v3, 0x2801

    const/high16 v4, 0x46180000    # 9728.0f

    invoke-static {v5, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 102
    const/16 v3, 0x2800

    const v4, 0x46180400    # 9729.0f

    invoke-static {v5, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 104
    const/16 v3, 0x2802

    invoke-static {v5, v3, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 105
    const/16 v3, 0x2803

    invoke-static {v5, v3, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 106
    invoke-static {p1}, Lcom/wepie/snake/module/game/util/ResUtil;->getBitmapFromRes(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v5, v6, v0, v6}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 109
    return v1
.end method

.method private initTexture(Landroid/graphics/Bitmap;)I
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    const v6, 0x47012f00    # 33071.0f

    const/4 v5, 0x0

    const/16 v4, 0xde1

    .line 113
    new-array v1, v2, [I

    .line 114
    .local v1, "textures":[I
    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 115
    aget v0, v1, v5

    .line 117
    .local v0, "textureId":I
    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 119
    const/16 v2, 0x2801

    const/high16 v3, 0x46180000    # 9728.0f

    invoke-static {v4, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 120
    const/16 v2, 0x2800

    const v3, 0x46180400    # 9729.0f

    invoke-static {v4, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 122
    const/16 v2, 0x2802

    invoke-static {v4, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 123
    const/16 v2, 0x2803

    invoke-static {v4, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 124
    invoke-static {v4, v5, p1, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 125
    return v0
.end method

.method private initTextureHandler()V
    .locals 5

    .prologue
    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mTexHandlerArray:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mTexHandlerArray:[I

    iget v2, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mProgram:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usTexture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 89
    iget-object v1, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mTexIdArray:[I

    sget-object v2, Lcom/wepie/snake/module/game/main/MultiNode;->res_array:[I

    aget v2, v2, v0

    invoke-direct {p0, v2}, Lcom/wepie/snake/module/game/main/MultiNode;->initTexture(I)I

    move-result v2

    aput v2, v1, v0

    .line 90
    const-string v1, "999"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---->initTextureHandler id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mTexIdArray:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method private initVertexArray(I)V
    .locals 2
    .param p1, "vcount"    # I

    .prologue
    .line 172
    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/wepie/snake/module/game/main/MultiNode;->vertexArray:[F

    .line 173
    iget-object v0, p0, Lcom/wepie/snake/module/game/main/MultiNode;->vertexArray:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/wepie/snake/module/game/main/MultiNode;->vbb:Ljava/nio/ByteBuffer;

    .line 174
    iget-object v0, p0, Lcom/wepie/snake/module/game/main/MultiNode;->vbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 175
    iget-object v0, p0, Lcom/wepie/snake/module/game/main/MultiNode;->vbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 176
    return-void
.end method


# virtual methods
.method public drawSelf(F)V
    .locals 6
    .param p1, "render_tag"    # F

    .prologue
    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 150
    iget v0, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 151
    iget v0, p0, Lcom/wepie/snake/module/game/main/MultiNode;->muMVPMatrixHandle:I

    const/4 v1, 0x1

    invoke-static {}, Lcom/wepie/snake/module/game/util/MatrixUtil;->getFinalMatrix()[F

    move-result-object v4

    invoke-static {v0, v1, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 152
    iget v0, p0, Lcom/wepie/snake/module/game/main/MultiNode;->maPositionHandle:I

    const/4 v1, 0x3

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 153
    iget v0, p0, Lcom/wepie/snake/module/game/main/MultiNode;->maTexCoorHandle:I

    const/4 v1, 0x2

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 155
    iget v0, p0, Lcom/wepie/snake/module/game/main/MultiNode;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 156
    iget v0, p0, Lcom/wepie/snake/module/game/main/MultiNode;->maTexCoorHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 157
    iget v0, p0, Lcom/wepie/snake/module/game/main/MultiNode;->muRenderTagHandle:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 159
    invoke-direct {p0}, Lcom/wepie/snake/module/game/main/MultiNode;->actTexture()V

    .line 160
    const/4 v0, 0x4

    iget v1, p0, Lcom/wepie/snake/module/game/main/MultiNode;->vCount:I

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 161
    return-void
.end method

.method public getVertexArray(I)[F
    .locals 1
    .param p1, "curSpiritCount"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/wepie/snake/module/game/main/MultiNode;->checkCapacity(I)V

    .line 130
    iget-object v0, p0, Lcom/wepie/snake/module/game/main/MultiNode;->vertexArray:[F

    return-object v0
.end method

.method public initTextures([Ljava/lang/Object;)V
    .locals 7
    .param p1, "textures"    # [Ljava/lang/Object;

    .prologue
    .line 72
    array-length v1, p1

    .line 73
    .local v1, "len":I
    new-array v3, v1, [I

    iput-object v3, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mTexIdArray:[I

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 75
    aget-object v2, p1, v0

    .line 76
    .local v2, "obj":Ljava/lang/Object;
    const-string v3, "999"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "------>MultiNode initTextures len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    instance-of v3, v2, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 78
    iget-object v3, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mTexIdArray:[I

    check-cast v2, Landroid/graphics/Bitmap;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/wepie/snake/module/game/main/MultiNode;->initTexture(Landroid/graphics/Bitmap;)I

    move-result v4

    aput v4, v3, v0

    .line 82
    :goto_1
    iget-object v3, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mTexHandlerArray:[I

    iget v4, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mProgram:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "usTexture"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mTexIdArray:[I

    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/wepie/snake/module/game/main/MultiNode;->initTexture(I)I

    move-result v4

    aput v4, v3, v0

    goto :goto_1

    .line 84
    :cond_1
    return-void
.end method

.method public refreshVertexBuffer()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 145
    iget-object v0, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/wepie/snake/module/game/main/MultiNode;->vertexArray:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 146
    iget-object v0, p0, Lcom/wepie/snake/module/game/main/MultiNode;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    return-void
.end method
