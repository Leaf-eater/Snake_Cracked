.class Lcom/wepie/snake/module/game/SnakeSurfaceView$2;
.super Ljava/util/TimerTask;
.source "SnakeSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/game/SnakeSurfaceView;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/game/SnakeSurfaceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$2;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 166
    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$2;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    iget v1, v1, Lcom/wepie/snake/module/game/SnakeSurfaceView;->remainSecond:I

    if-gtz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$2;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    const/4 v2, 0x0

    iput v2, v1, Lcom/wepie/snake/module/game/SnakeSurfaceView;->remainSecond:I

    .line 168
    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$2;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameInfoView:Lcom/wepie/snake/module/game/GameInfoView;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$100(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/GameInfoView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$2;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameStatusCallback:Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$500(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;->onGameOver()V

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$2;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    iget v1, v1, Lcom/wepie/snake/module/game/SnakeSurfaceView;->remainSecond:I

    invoke-static {v1}, Lcom/wepie/snake/module/game/GameTypeUtil;->getTimeString(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "timeString":Ljava/lang/String;
    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$2;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameInfoView:Lcom/wepie/snake/module/game/GameInfoView;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$100(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/GameInfoView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$2;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameInfoView:Lcom/wepie/snake/module/game/GameInfoView;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$100(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/GameInfoView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wepie/snake/module/game/GameInfoView;->doRefreshTime(Ljava/lang/String;)V

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$2;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->isTimerPaused:Z
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$600(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$2;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    iget v2, v1, Lcom/wepie/snake/module/game/SnakeSurfaceView;->remainSecond:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/wepie/snake/module/game/SnakeSurfaceView;->remainSecond:I

    .line 175
    :cond_2
    return-void
.end method
