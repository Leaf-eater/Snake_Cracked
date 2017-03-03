.class public Lcom/wepie/snake/module/game/util/FPSUtil;
.super Ljava/lang/Object;
.source "FPSUtil.java"


# static fields
.field private static frameCount:I

.field private static lCTM:J

.field public static mFPS:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static count(Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;)V
    .locals 8
    .param p0, "callback"    # Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;

    .prologue
    .line 15
    sget v4, Lcom/wepie/snake/module/game/util/FPSUtil;->frameCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/wepie/snake/module/game/util/FPSUtil;->frameCount:I

    .line 16
    sget v4, Lcom/wepie/snake/module/game/util/FPSUtil;->frameCount:I

    const/16 v5, 0x64

    if-lt v4, v5, :cond_1

    .line 17
    const/4 v4, 0x0

    sput v4, Lcom/wepie/snake/module/game/util/FPSUtil;->frameCount:I

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 19
    .local v0, "CTM":J
    sget-wide v4, Lcom/wepie/snake/module/game/util/FPSUtil;->lCTM:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 20
    sget-wide v4, Lcom/wepie/snake/module/game/util/FPSUtil;->lCTM:J

    sub-long v2, v0, v4

    .line 21
    .local v2, "dt":J
    const/high16 v4, 0x447a0000    # 1000.0f

    long-to-float v5, v2

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    div-float/2addr v4, v5

    sput v4, Lcom/wepie/snake/module/game/util/FPSUtil;->mFPS:F

    .line 22
    sget v4, Lcom/wepie/snake/module/game/util/FPSUtil;->mFPS:F

    invoke-interface {p0, v4}, Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;->onFPSRefresh(F)V

    .line 34
    .end local v2    # "dt":J
    :cond_0
    sput-wide v0, Lcom/wepie/snake/module/game/util/FPSUtil;->lCTM:J

    .line 36
    .end local v0    # "CTM":J
    :cond_1
    return-void
.end method
