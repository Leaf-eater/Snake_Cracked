.class public Lcom/wepie/snake/helper/clip/ClipImageLayout;
.super Landroid/widget/RelativeLayout;
.source "ClipImageLayout.java"


# instance fields
.field private mClipImageView:Lcom/wepie/snake/helper/clip/ClipImageBorderView;

.field private mContext:Landroid/content/Context;

.field private mHorizontalPadding:I

.field private mZoomImageView:Lcom/wepie/snake/helper/clip/ClipZoomImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/16 v1, 0x14

    iput v1, p0, Lcom/wepie/snake/helper/clip/ClipImageLayout;->mHorizontalPadding:I

    .line 24
    iput-object p1, p0, Lcom/wepie/snake/helper/clip/ClipImageLayout;->mContext:Landroid/content/Context;

    .line 25
    new-instance v1, Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    invoke-direct {v1, p1}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wepie/snake/helper/clip/ClipImageLayout;->mZoomImageView:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    .line 26
    new-instance v1, Lcom/wepie/snake/helper/clip/ClipImageBorderView;

    invoke-direct {v1, p1}, Lcom/wepie/snake/helper/clip/ClipImageBorderView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wepie/snake/helper/clip/ClipImageLayout;->mClipImageView:Lcom/wepie/snake/helper/clip/ClipImageBorderView;

    .line 28
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 32
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/wepie/snake/helper/clip/ClipImageLayout;->mZoomImageView:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    invoke-virtual {p0, v1, v0}, Lcom/wepie/snake/helper/clip/ClipImageLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    iget-object v1, p0, Lcom/wepie/snake/helper/clip/ClipImageLayout;->mClipImageView:Lcom/wepie/snake/helper/clip/ClipImageBorderView;

    invoke-virtual {p0, v1, v0}, Lcom/wepie/snake/helper/clip/ClipImageLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    const/4 v1, 0x1

    iget v2, p0, Lcom/wepie/snake/helper/clip/ClipImageLayout;->mHorizontalPadding:I

    int-to-float v2, v2

    .line 37
    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipImageLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 38
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 36
    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/wepie/snake/helper/clip/ClipImageLayout;->mHorizontalPadding:I

    .line 39
    iget-object v1, p0, Lcom/wepie/snake/helper/clip/ClipImageLayout;->mZoomImageView:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    iget v2, p0, Lcom/wepie/snake/helper/clip/ClipImageLayout;->mHorizontalPadding:I

    invoke-virtual {v1, v2}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->setHorizontalPadding(I)V

    .line 40
    iget-object v1, p0, Lcom/wepie/snake/helper/clip/ClipImageLayout;->mClipImageView:Lcom/wepie/snake/helper/clip/ClipImageBorderView;

    iget v2, p0, Lcom/wepie/snake/helper/clip/ClipImageLayout;->mHorizontalPadding:I

    invoke-virtual {v1, v2}, Lcom/wepie/snake/helper/clip/ClipImageBorderView;->setHorizontalPadding(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public clip()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wepie/snake/helper/clip/ClipImageLayout;->mZoomImageView:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->clip()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setHorizontalPadding(I)V
    .locals 9
    .param p1, "mHorizontalPadding"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/wepie/snake/helper/clip/ClipImageLayout;->mHorizontalPadding:I

    .line 53
    const/4 v6, 0x1

    int-to-float v7, p1

    .line 54
    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipImageLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 55
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 53
    invoke-static {v6, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int p1, v6

    .line 57
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 58
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v6, p0, Lcom/wepie/snake/helper/clip/ClipImageLayout;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 60
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 61
    .local v4, "sw":I
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 62
    .local v3, "sh":I
    mul-int/lit8 v6, p1, 0x2

    sub-int v2, v4, v6

    .line 63
    .local v2, "rw":I
    int-to-float v6, v3

    int-to-float v7, v2

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    int-to-float v8, v4

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 64
    .local v1, "rh":I
    sub-int v6, v3, v1

    div-int/lit8 v5, v6, 0x2

    .line 65
    .local v5, "verticalPadding":I
    iget-object v6, p0, Lcom/wepie/snake/helper/clip/ClipImageLayout;->mZoomImageView:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    invoke-virtual {v6, p1, v5}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->setHorizontalPadding(II)V

    .line 66
    iget-object v6, p0, Lcom/wepie/snake/helper/clip/ClipImageLayout;->mClipImageView:Lcom/wepie/snake/helper/clip/ClipImageBorderView;

    invoke-virtual {v6, p1, v5}, Lcom/wepie/snake/helper/clip/ClipImageBorderView;->setHorizontalPadding(II)V

    .line 67
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wepie/snake/helper/clip/ClipImageLayout;->mZoomImageView:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    const/16 v1, 0x258

    const/16 v2, 0x320

    invoke-static {p1, v1, v2}, Lcom/wepie/snake/helper/clip/ClipUtil;->decodeSampledBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 45
    return-void
.end method

.method public setSquarePadding(I)V
    .locals 9
    .param p1, "mHorizontalPadding"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/wepie/snake/helper/clip/ClipImageLayout;->mHorizontalPadding:I

    .line 75
    const/4 v6, 0x1

    int-to-float v7, p1

    .line 76
    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipImageLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 77
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 75
    invoke-static {v6, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int p1, v6

    .line 79
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 80
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v6, p0, Lcom/wepie/snake/helper/clip/ClipImageLayout;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 82
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 83
    .local v4, "sw":I
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 84
    .local v3, "sh":I
    mul-int/lit8 v6, p1, 0x2

    sub-int v2, v4, v6

    .line 85
    .local v2, "rw":I
    int-to-float v6, v3

    int-to-float v7, v2

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    int-to-float v8, v4

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 87
    .local v1, "rh":I
    sub-int v6, v3, v2

    div-int/lit8 v5, v6, 0x2

    .line 88
    .local v5, "verticalPadding":I
    iget-object v6, p0, Lcom/wepie/snake/helper/clip/ClipImageLayout;->mZoomImageView:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    invoke-virtual {v6, p1, v5}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->setHorizontalPadding(II)V

    .line 89
    iget-object v6, p0, Lcom/wepie/snake/helper/clip/ClipImageLayout;->mClipImageView:Lcom/wepie/snake/helper/clip/ClipImageBorderView;

    invoke-virtual {v6, p1, v5}, Lcom/wepie/snake/helper/clip/ClipImageBorderView;->setHorizontalPadding(II)V

    .line 90
    return-void
.end method
