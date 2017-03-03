.class Lcom/wepie/snake/helper/clip/ClipZoomImageView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ClipZoomImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/helper/clip/ClipZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/helper/clip/ClipZoomImageView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/helper/clip/ClipZoomImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$1;->this$0:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v8, 0x10

    const/4 v6, 0x1

    .line 76
    iget-object v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$1;->this$0:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    # getter for: Lcom/wepie/snake/helper/clip/ClipZoomImageView;->isAutoScale:Z
    invoke-static {v2}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->access$000(Lcom/wepie/snake/helper/clip/ClipZoomImageView;)Z

    move-result v2

    if-ne v2, v6, :cond_0

    .line 91
    :goto_0
    return v6

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 80
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 81
    .local v1, "y":F
    iget-object v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$1;->this$0:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    invoke-virtual {v2}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->getScale()F

    move-result v2

    # getter for: Lcom/wepie/snake/helper/clip/ClipZoomImageView;->SCALE_MID:F
    invoke-static {}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->access$100()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$1;->this$0:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    new-instance v3, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;

    iget-object v4, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$1;->this$0:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    .line 83
    # getter for: Lcom/wepie/snake/helper/clip/ClipZoomImageView;->SCALE_MID:F
    invoke-static {}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->access$100()F

    move-result v5

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;-><init>(Lcom/wepie/snake/helper/clip/ClipZoomImageView;FFF)V

    .line 82
    invoke-virtual {v2, v3, v8, v9}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    iget-object v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$1;->this$0:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    # setter for: Lcom/wepie/snake/helper/clip/ClipZoomImageView;->isAutoScale:Z
    invoke-static {v2, v6}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->access$002(Lcom/wepie/snake/helper/clip/ClipZoomImageView;Z)Z

    goto :goto_0

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$1;->this$0:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    new-instance v3, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;

    iget-object v4, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$1;->this$0:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    iget-object v5, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$1;->this$0:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    .line 87
    # getter for: Lcom/wepie/snake/helper/clip/ClipZoomImageView;->initScale:F
    invoke-static {v5}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->access$200(Lcom/wepie/snake/helper/clip/ClipZoomImageView;)F

    move-result v5

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/wepie/snake/helper/clip/ClipZoomImageView$AutoScaleRunnable;-><init>(Lcom/wepie/snake/helper/clip/ClipZoomImageView;FFF)V

    .line 86
    invoke-virtual {v2, v3, v8, v9}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    iget-object v2, p0, Lcom/wepie/snake/helper/clip/ClipZoomImageView$1;->this$0:Lcom/wepie/snake/helper/clip/ClipZoomImageView;

    # setter for: Lcom/wepie/snake/helper/clip/ClipZoomImageView;->isAutoScale:Z
    invoke-static {v2, v6}, Lcom/wepie/snake/helper/clip/ClipZoomImageView;->access$002(Lcom/wepie/snake/helper/clip/ClipZoomImageView;Z)Z

    goto :goto_0
.end method
