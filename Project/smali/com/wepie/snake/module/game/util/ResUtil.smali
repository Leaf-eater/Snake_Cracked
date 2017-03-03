.class public Lcom/wepie/snake/module/game/util/ResUtil;
.super Ljava/lang/Object;
.source "ResUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmapFromRes(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "res_id"    # I

    .prologue
    .line 14
    invoke-static {p0}, Lcom/wepie/snake/helper/imageloader/ImageLoaderUtil;->loadDrawableBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
