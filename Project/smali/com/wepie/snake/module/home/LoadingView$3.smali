.class Lcom/wepie/snake/module/home/LoadingView$3;
.super Ljava/lang/Object;
.source "LoadingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/LoadingView;->startLoadingProgressInner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/LoadingView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/LoadingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/LoadingView;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/wepie/snake/module/home/LoadingView$3;->this$0:Lcom/wepie/snake/module/home/LoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 124
    iget-object v0, p0, Lcom/wepie/snake/module/home/LoadingView$3;->this$0:Lcom/wepie/snake/module/home/LoadingView;

    # getter for: Lcom/wepie/snake/module/home/LoadingView;->stopLoadingProgress:Z
    invoke-static {v0}, Lcom/wepie/snake/module/home/LoadingView;->access$200(Lcom/wepie/snake/module/home/LoadingView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/wepie/snake/module/home/LoadingView$3;->this$0:Lcom/wepie/snake/module/home/LoadingView;

    # getter for: Lcom/wepie/snake/module/home/LoadingView;->progress:Lcom/daimajia/numberprogressbar/NumberProgressBar;
    invoke-static {v0}, Lcom/wepie/snake/module/home/LoadingView;->access$400(Lcom/wepie/snake/module/home/LoadingView;)Lcom/daimajia/numberprogressbar/NumberProgressBar;

    move-result-object v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-object v1, p0, Lcom/wepie/snake/module/home/LoadingView$3;->this$0:Lcom/wepie/snake/module/home/LoadingView;

    # getter for: Lcom/wepie/snake/module/home/LoadingView;->startLoadingTimestamp:J
    invoke-static {v1}, Lcom/wepie/snake/module/home/LoadingView;->access$300(Lcom/wepie/snake/module/home/LoadingView;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/daimajia/numberprogressbar/NumberProgressBar;->setProgress(I)V

    .line 126
    iget-object v0, p0, Lcom/wepie/snake/module/home/LoadingView$3;->this$0:Lcom/wepie/snake/module/home/LoadingView;

    # invokes: Lcom/wepie/snake/module/home/LoadingView;->startLoadingProgressInner()V
    invoke-static {v0}, Lcom/wepie/snake/module/home/LoadingView;->access$500(Lcom/wepie/snake/module/home/LoadingView;)V

    .line 128
    :cond_0
    return-void
.end method
