.class public Lcom/wepie/snake/module/game/util/MatrixUtil;
.super Ljava/lang/Object;
.source "MatrixUtil.java"


# static fields
.field public static cameraFloatBuffer:Ljava/nio/FloatBuffer;

.field static cameraLocation:[F

.field static cbb:Ljava/nio/ByteBuffer;

.field public static lightLocation:[F

.field public static lightPositionFB:Ljava/nio/FloatBuffer;

.field static llbbL:Ljava/nio/ByteBuffer;

.field private static mCurMatrix:[F

.field private static mMVPMatrix:[F

.field private static mProjectionMatrix:[F

.field static mStack:[[F

.field private static mVMatrix:[F

.field static stackTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x3

    const/16 v1, 0x10

    .line 14
    new-array v0, v1, [F

    sput-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->mProjectionMatrix:[F

    .line 15
    new-array v0, v1, [F

    sput-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->mVMatrix:[F

    .line 16
    new-array v0, v1, [F

    sput-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->mMVPMatrix:[F

    .line 19
    const/16 v0, 0xa

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->mStack:[[F

    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->stackTop:I

    .line 53
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->cbb:Ljava/nio/ByteBuffer;

    .line 54
    new-array v0, v2, [F

    sput-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->cameraLocation:[F

    .line 94
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->llbbL:Ljava/nio/ByteBuffer;

    .line 95
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->lightLocation:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFinalMatrix()[F
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->mCurMatrix:[F

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/MatrixUtil;->getFinalMatrix([F)[F

    move-result-object v0

    return-object v0
.end method

.method public static getFinalMatrix([F)[F
    .locals 6
    .param p0, "src"    # [F

    .prologue
    const/4 v1, 0x0

    .line 78
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->mMVPMatrix:[F

    sget-object v2, Lcom/wepie/snake/module/game/util/MatrixUtil;->mVMatrix:[F

    move v3, v1

    move-object v4, p0

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 79
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->mMVPMatrix:[F

    sget-object v2, Lcom/wepie/snake/module/game/util/MatrixUtil;->mProjectionMatrix:[F

    sget-object v4, Lcom/wepie/snake/module/game/util/MatrixUtil;->mMVPMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 80
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->mMVPMatrix:[F

    return-object v0
.end method

.method public static getMMatrix()[F
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->mCurMatrix:[F

    return-object v0
.end method

.method public static initStack()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 23
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->mCurMatrix:[F

    .line 24
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->mCurMatrix:[F

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 25
    return-void
.end method

.method public static popMatrix()V
    .locals 4

    .prologue
    .line 35
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 36
    sget-object v1, Lcom/wepie/snake/module/game/util/MatrixUtil;->mCurMatrix:[F

    sget-object v2, Lcom/wepie/snake/module/game/util/MatrixUtil;->mStack:[[F

    sget v3, Lcom/wepie/snake/module/game/util/MatrixUtil;->stackTop:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    aput v2, v1, v0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    sget v1, Lcom/wepie/snake/module/game/util/MatrixUtil;->stackTop:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/wepie/snake/module/game/util/MatrixUtil;->stackTop:I

    .line 39
    return-void
.end method

.method public static pushMatrix()V
    .locals 3

    .prologue
    .line 28
    sget v1, Lcom/wepie/snake/module/game/util/MatrixUtil;->stackTop:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/wepie/snake/module/game/util/MatrixUtil;->stackTop:I

    .line 29
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 30
    sget-object v1, Lcom/wepie/snake/module/game/util/MatrixUtil;->mStack:[[F

    sget v2, Lcom/wepie/snake/module/game/util/MatrixUtil;->stackTop:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/wepie/snake/module/game/util/MatrixUtil;->mCurMatrix:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public static rotate(FFFF)V
    .locals 6
    .param p0, "angle"    # F
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 46
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->mCurMatrix:[F

    const/4 v1, 0x0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 47
    return-void
.end method

.method public static scale(FFF)V
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F

    .prologue
    .line 50
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->mCurMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 51
    return-void
.end method

.method public static setCamera(FFFFFFFFF)V
    .locals 11
    .param p0, "eyeX"    # F
    .param p1, "eyeY"    # F
    .param p2, "eyeZ"    # F
    .param p3, "cx"    # F
    .param p4, "cy"    # F
    .param p5, "cz"    # F
    .param p6, "ux"    # F
    .param p7, "uy"    # F
    .param p8, "uz"    # F

    .prologue
    .line 59
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->mVMatrix:[F

    const/4 v1, 0x0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 61
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->cameraLocation:[F

    const/4 v1, 0x0

    aput p0, v0, v1

    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->cameraLocation:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->cameraLocation:[F

    const/4 v1, 0x2

    aput p2, v0, v1

    .line 62
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->cbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 63
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->cbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 64
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->cbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->cameraFloatBuffer:Ljava/nio/FloatBuffer;

    .line 65
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->cameraFloatBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/wepie/snake/module/game/util/MatrixUtil;->cameraLocation:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 66
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->cameraFloatBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 67
    return-void
.end method

.method public static setLightLocation(FFF)V
    .locals 3
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F

    .prologue
    const/4 v2, 0x0

    .line 98
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->llbbL:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 100
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->lightLocation:[F

    aput p0, v0, v2

    .line 101
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->lightLocation:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 102
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->lightLocation:[F

    const/4 v1, 0x2

    aput p2, v0, v1

    .line 104
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->llbbL:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 105
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->llbbL:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->lightPositionFB:Ljava/nio/FloatBuffer;

    .line 106
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->lightPositionFB:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/wepie/snake/module/game/util/MatrixUtil;->lightLocation:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 107
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->lightPositionFB:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 108
    return-void
.end method

.method public static setProjectFrustum(FFFFFF)V
    .locals 8
    .param p0, "left"    # F
    .param p1, "right"    # F
    .param p2, "bottom"    # F
    .param p3, "top"    # F
    .param p4, "near"    # F
    .param p5, "far"    # F

    .prologue
    .line 74
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->mProjectionMatrix:[F

    const/4 v1, 0x0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 75
    return-void
.end method

.method public static setProjectOrtho(FFFFFF)V
    .locals 8
    .param p0, "left"    # F
    .param p1, "right"    # F
    .param p2, "bottom"    # F
    .param p3, "top"    # F
    .param p4, "near"    # F
    .param p5, "far"    # F

    .prologue
    .line 70
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->mProjectionMatrix:[F

    const/4 v1, 0x0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 71
    return-void
.end method

.method public static translate(FFF)V
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F

    .prologue
    .line 42
    sget-object v0, Lcom/wepie/snake/module/game/util/MatrixUtil;->mCurMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 43
    return-void
.end method
