.class Lcom/wepie/snake/module/game/SnakeSurfaceView$DetectionThread;
.super Ljava/lang/Thread;
.source "SnakeSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wepie/snake/module/game/SnakeSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DetectionThread"
.end annotation


# instance fields
.field public flag:Z

.field final synthetic this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/game/SnakeSurfaceView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$DetectionThread;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$DetectionThread;->flag:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 406
    :goto_0
    iget-boolean v4, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$DetectionThread;->flag:Z

    if-eqz v4, :cond_1

    .line 408
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 409
    .local v2, "time":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v4, 0x2710

    if-ge v1, v4, :cond_0

    .line 410
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Lcom/wepie/snake/module/game/snake/MeshUtil;->getMeshNum(FF)I

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 412
    :cond_0
    const-string v4, "999"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "------>DetectionThread time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const-wide/16 v4, 0x14

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    .end local v1    # "i":I
    .end local v2    # "time":J
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 418
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method
