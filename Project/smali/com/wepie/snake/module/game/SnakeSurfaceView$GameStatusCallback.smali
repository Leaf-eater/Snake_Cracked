.class public interface abstract Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;
.super Ljava/lang/Object;
.source "SnakeSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wepie/snake/module/game/SnakeSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GameStatusCallback"
.end annotation


# virtual methods
.method public abstract onFPSRefresh(F)V
.end method

.method public abstract onGameOver()V
.end method

.method public abstract onKillAi()V
.end method

.method public abstract onRefreshRank(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wepie/snake/module/game/snake/SnakeInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSnakeLengthChange(Lcom/wepie/snake/module/game/snake/SnakeInfo;)V
.end method
