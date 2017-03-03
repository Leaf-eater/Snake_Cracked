.class public Lcom/wepie/snake/helper/clip/ClipZoomImageView;
.super Landroid/widget/ImageView;
.source "ClipZoomImageView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;
    }
.end annotation


# static fields
.field public static SCALE_MAX:F

.field private static SCALE_MID:F

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private initScale:F

.field private isAutoScale:Z

.field private isCanDrag:Z

.field private isDefaultVerticalPadding:Z

.field private lastPointerCount:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHorizontalPadding:I

.field private mLastX:F

.field private mLastY:F

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final mScaleMatrix:Landroid/graphics/Matrix;

.field private mTouchSlop:I

.field private mVerticalPadding:I

.field private final matrixValues:[F

.field private once:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->TAG:Ljava/lang/String;

    .line 31
    const/high16 v0, 0x40800000    # 4.0f

    sput v0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->SCALE_MAX:F

    .line 32
    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->SCALE_MID:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->initScale:F

    .line 38
    iput-boolean v1, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->once:Z

    .line 43
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->matrixValues:[F

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 303
    iput-boolean v1, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->isDefaultVerticalPadding:Z

    .line 71
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 72
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/wepie/snake/helper/clip/ClipZoomImageView$1;

    invoke-direct {v1, p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView$1;-><init>(Lcom/wepie/snake/helper/clip/ClipZoomImageView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 94
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 95
    invoke-virtual {p0, p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/helper/clip/ClipZoomImageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->isAutoScale:Z

    return v0
.end method

.method static synthetic access$002(Lcom/wepie/snake/helper/clip/ClipZoomImageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/helper/clip/ClipZoomImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->isAutoScale:Z

    return p1
.end method

.method static synthetic access$100()F
    .locals 1

    .prologue
    .line 26
    sget v0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->SCALE_MID:F

    return v0
.end method

.method static synthetic access$200(Lcom/wepie/snake/helper/clip/ClipZoomImageView;)F
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    .prologue
    .line 26
    iget v0, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->initScale:F

    return v0
.end method

.method static synthetic access$300(Lcom/wepie/snake/helper/clip/ClipZoomImageView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wepie/snake/helper/clip/ClipZoomImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->checkBorder()V

    return-void
.end method

.method private checkBorder()V
    .locals 12

    .prologue
    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    .line 362
    invoke-direct {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getMatrixRectF()Landroid/graphics/RectF;

    move-result-object v3

    .line 363
    .local v3, "rect":Landroid/graphics/RectF;
    const/4 v0, 0x0

    .line 364
    .local v0, "deltaX":F
    const/4 v1, 0x0

    .line 366
    .local v1, "deltaY":F
    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getWidth()I

    move-result v4

    .line 367
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getHeight()I

    move-result v2

    .line 370
    .local v2, "height":I
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-double v6, v5

    add-double/2addr v6, v10

    iget v5, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mHorizontalPadding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    int-to-double v8, v5

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_1

    .line 371
    iget v5, v3, Landroid/graphics/RectF;->left:F

    iget v6, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mHorizontalPadding:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 372
    iget v5, v3, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v6, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mHorizontalPadding:I

    int-to-float v6, v6

    add-float v0, v5, v6

    .line 374
    :cond_0
    iget v5, v3, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mHorizontalPadding:I

    sub-int v6, v4, v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 375
    iget v5, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mHorizontalPadding:I

    sub-int v5, v4, v5

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/RectF;->right:F

    sub-float v0, v5, v6

    .line 378
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-double v6, v5

    add-double/2addr v6, v10

    iget v5, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mVerticalPadding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    int-to-double v8, v5

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_3

    .line 379
    iget v5, v3, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mVerticalPadding:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 380
    iget v5, v3, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    iget v6, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mVerticalPadding:I

    int-to-float v6, v6

    add-float v1, v5, v6

    .line 382
    :cond_2
    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mVerticalPadding:I

    sub-int v6, v2, v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 383
    iget v5, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mVerticalPadding:I

    sub-int v5, v2, v5

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v5, v6

    .line 386
    :cond_3
    iget-object v5, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 387
    return-void
.end method

.method private getMatrixRectF()Landroid/graphics/RectF;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 189
    iget-object v1, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 190
    .local v1, "matrix":Landroid/graphics/Matrix;
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 191
    .local v2, "rect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 192
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 194
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 196
    :cond_0
    return-object v2
.end method

.method private isCanDrag(FF)Z
    .locals 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 393
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mTouchSlop:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private move2Center()V
    .locals 11

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 315
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 343
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-boolean v8, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->isDefaultVerticalPadding:Z

    if-eqz v8, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getWidth()I

    move-result v9

    iget v10, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mHorizontalPadding:I

    mul-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mVerticalPadding:I

    .line 320
    iget v8, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mVerticalPadding:I

    if-gez v8, :cond_1

    const/4 v8, 0x0

    iput v8, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mVerticalPadding:I

    .line 323
    :cond_1
    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getWidth()I

    move-result v7

    .line 324
    .local v7, "width":I
    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getHeight()I

    move-result v4

    .line 326
    .local v4, "height":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 327
    .local v2, "dw":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 328
    .local v1, "dh":I
    const/high16 v5, 0x3f800000    # 1.0f

    .line 330
    .local v5, "scale":F
    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mHorizontalPadding:I

    mul-int/lit8 v9, v9, 0x2

    sub-int v6, v8, v9

    .line 331
    .local v6, "w":I
    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mVerticalPadding:I

    mul-int/lit8 v9, v9, 0x2

    sub-int v3, v8, v9

    .line 333
    .local v3, "h":I
    int-to-float v8, v6

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    int-to-float v9, v2

    div-float v5, v8, v9

    .line 335
    iput v5, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->initScale:F

    .line 336
    iget v8, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->initScale:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    sput v8, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->SCALE_MID:F

    .line 337
    iget v8, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->initScale:F

    const/high16 v9, 0x40800000    # 4.0f

    mul-float/2addr v8, v9

    sput v8, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->SCALE_MAX:F

    .line 338
    iget-object v8, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    sub-int v9, v7, v2

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-int v10, v4, v1

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 339
    iget-object v8, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    .line 340
    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    .line 339
    invoke-virtual {v8, v5, v5, v9, v10}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 342
    iget-object v8, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v8}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public clip()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 351
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 352
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->draw(Landroid/graphics/Canvas;)V

    .line 353
    iget v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mHorizontalPadding:I

    iget v3, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mVerticalPadding:I

    .line 354
    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mHorizontalPadding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 355
    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mVerticalPadding:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    .line 353
    invoke-static {v0, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public final getScale()F
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->matrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 279
    iget-object v0, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->matrixValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 284
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 285
    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 286
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 291
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 292
    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 293
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->once:Z

    if-eqz v0, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->move2Center()V

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->once:Z

    .line 311
    :cond_0
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v5, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 154
    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getScale()F

    move-result v0

    .line 155
    .local v0, "scale":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 157
    .local v1, "scaleFactor":F
    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v5

    .line 162
    :cond_1
    sget v2, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->SCALE_MAX:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    cmpl-float v2, v1, v3

    if-gtz v2, :cond_3

    :cond_2
    iget v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->initScale:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    cmpg-float v2, v1, v3

    if-gez v2, :cond_0

    .line 167
    :cond_3
    mul-float v2, v1, v0

    iget v3, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->initScale:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 168
    iget v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->initScale:F

    div-float v1, v2, v0

    .line 170
    :cond_4
    mul-float v2, v1, v0

    sget v3, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->SCALE_MAX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 171
    sget v2, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->SCALE_MAX:F

    div-float v1, v2, v0

    .line 176
    :cond_5
    iget-object v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 177
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    .line 176
    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 178
    invoke-direct {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->checkBorder()V

    .line 179
    iget-object v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 207
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 212
    iget-object v7, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 271
    :goto_0
    return v10

    .line 214
    :cond_0
    iget-object v7, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v7, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 216
    const/4 v5, 0x0

    .local v5, "x":F
    const/4 v6, 0x0

    .line 218
    .local v6, "y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 220
    .local v3, "pointerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 221
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float/2addr v5, v7

    .line 222
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    add-float/2addr v6, v7

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 224
    :cond_1
    int-to-float v7, v3

    div-float/2addr v5, v7

    .line 225
    int-to-float v7, v3

    div-float/2addr v6, v7

    .line 230
    iget v7, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->lastPointerCount:I

    if-eq v3, v7, :cond_2

    .line 231
    iput-boolean v8, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->isCanDrag:Z

    .line 232
    iput v5, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mLastX:F

    .line 233
    iput v6, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mLastY:F

    .line 236
    :cond_2
    iput v3, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->lastPointerCount:I

    .line 237
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 267
    :pswitch_0
    iput v8, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->lastPointerCount:I

    goto :goto_0

    .line 239
    :pswitch_1
    iget v7, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mLastX:F

    sub-float v0, v5, v7

    .line 240
    .local v0, "dx":F
    iget v7, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mLastY:F

    sub-float v1, v6, v7

    .line 242
    .local v1, "dy":F
    iget-boolean v7, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->isCanDrag:Z

    if-nez v7, :cond_3

    .line 243
    invoke-direct {p0, v0, v1}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->isCanDrag(FF)Z

    move-result v7

    iput-boolean v7, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->isCanDrag:Z

    .line 245
    :cond_3
    iget-boolean v7, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->isCanDrag:Z

    if-eqz v7, :cond_6

    .line 246
    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 247
    invoke-direct {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getMatrixRectF()Landroid/graphics/RectF;

    move-result-object v4

    .line 249
    .local v4, "rectF":Landroid/graphics/RectF;
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mHorizontalPadding:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_4

    .line 250
    const/4 v0, 0x0

    .line 253
    :cond_4
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mVerticalPadding:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_5

    .line 254
    const/4 v1, 0x0

    .line 256
    :cond_5
    iget-object v7, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 257
    invoke-direct {p0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->checkBorder()V

    .line 258
    iget-object v7, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v7}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 261
    .end local v4    # "rectF":Landroid/graphics/RectF;
    :cond_6
    iput v5, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mLastX:F

    .line 262
    iput v6, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mLastY:F

    goto/16 :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHorizontalPadding(I)V
    .locals 0
    .param p1, "mHorizontalPadding"    # I

    .prologue
    .line 403
    iput p1, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mHorizontalPadding:I

    .line 404
    return-void
.end method

.method public setHorizontalPadding(II)V
    .locals 1
    .param p1, "mHorizontalPadding"    # I
    .param p2, "verticalPadding"    # I

    .prologue
    .line 397
    iput p1, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mHorizontalPadding:I

    .line 398
    iput p2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mVerticalPadding:I

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->isDefaultVerticalPadding:Z

    .line 400
    return-void
.end method
