.class Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;
.super Ljava/lang/Object;
.source "ClipZoomImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wepie/snake/helper/clip/ClipZoomImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoScaleRunnable"
.end annotation


# static fields
.field static final BIGGER:F = 1.07f

.field static final SMALLER:F = 0.93f


# instance fields
.field private mTargetScale:F

.field final synthetic this$0:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

.field private tmpScale:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/wepie/snake/helper/clip/ClipZoomImageView;FFF)V
    .locals 2
    .param p2, "targetScale"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 116
    iput-object p1, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->mTargetScale:F

    .line 118
    iput p3, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->x:F

    .line 119
    iput p4, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->y:F

    .line 120
    invoke-virtual {p1}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getScale()F

    move-result v0

    iget v1, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->mTargetScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 121
    const v0, 0x3f88f5c3    # 1.07f

    iput v0, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->tmpScale:F

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    const v0, 0x3f6e147b    # 0.93f

    iput v0, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->tmpScale:F

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 131
    iget-object v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    # getter for: Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;
    invoke-static {v2}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->access$300(Lcom/wepie/snake/helper/clip/ClipZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->tmpScale:F

    iget v4, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->tmpScale:F

    iget v5, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->x:F

    iget v6, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->y:F

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 132
    iget-object v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    # invokes: Lcom/wepie/snake/helper/clip/ClipZoomImageView;->checkBorder()V
    invoke-static {v2}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->access$400(Lcom/wepie/snake/helper/clip/ClipZoomImageView;)V

    .line 133
    iget-object v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    iget-object v3, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    # getter for: Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->access$300(Lcom/wepie/snake/helper/clip/ClipZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 135
    iget-object v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    invoke-virtual {v2}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getScale()F

    move-result v0

    .line 137
    .local v0, "currentScale":F
    iget v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->tmpScale:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_0

    iget v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->mTargetScale:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->tmpScale:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_2

    iget v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->mTargetScale:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_2

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    const-wide/16 v4, 0x10

    invoke-virtual {v2, p0, v4, v5}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    :goto_0
    return-void

    .line 142
    :cond_2
    iget v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->mTargetScale:F

    div-float v1, v2, v0

    .line 143
    .local v1, "deltaScale":F
    iget-object v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    # getter for: Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;
    invoke-static {v2}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->access$300(Lcom/wepie/snake/helper/clip/ClipZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->x:F

    iget v4, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->y:F

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 144
    iget-object v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    # invokes: Lcom/wepie/snake/helper/clip/ClipZoomImageView;->checkBorder()V
    invoke-static {v2}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->access$400(Lcom/wepie/snake/helper/clip/ClipZoomImageView;)V

    .line 145
    iget-object v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    iget-object v3, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    # getter for: Lcom/wepie/snake/helper/clip/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->access$300(Lcom/wepie/snake/helper/clip/ClipZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 146
    iget-object v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    const/4 v3, 0x0

    # setter for: Lcom/wepie/snake/helper/clip/ClipZoomImageView;->isAutoScale:Z
    invoke-static {v2, v3}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->access$002(Lcom/wepie/snake/helper/clip/ClipZoomImageView;Z)Z

    goto :goto_0
.end method
