.class Lcom/wepie/snake/module/game/SnakeSurfaceView$1;
.super Ljava/lang/Object;
.source "SnakeSurfaceView.java"

# interfaces
.implements Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/game/SnakeSurfaceView;->init()V
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
    .line 95
    iput-object p1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$1;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFPSRefresh(F)V
    .locals 1
    .param p1, "fps"    # F

    .prologue
    .line 104
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$1;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameInfoView:Lcom/wepie/snake/module/game/GameInfoView;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$100(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/GameInfoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wepie/snake/module/game/GameInfoView;->doFPSRefresh(F)V

    .line 105
    return-void
.end method

.method public onGameOver()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$1;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameInfoView:Lcom/wepie/snake/module/game/GameInfoView;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$100(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/GameInfoView;

    move-result-object v0

    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$1;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameType:I
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$200(Lcom/wepie/snake/module/game/SnakeSurfaceView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/game/GameInfoView;->doGameOver(I)V

    .line 110
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$1;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    const/4 v1, 0x1

    # setter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->isGameOver:Z
    invoke-static {v0, v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$302(Lcom/wepie/snake/module/game/SnakeSurfaceView;Z)Z

    .line 111
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$1;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # invokes: Lcom/wepie/snake/module/game/SnakeSurfaceView;->pauseTimer()V
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$400(Lcom/wepie/snake/module/game/SnakeSurfaceView;)V

    .line 112
    invoke-static {}, Lcom/wepie/snake/module/util/VoiceUtil;->getInstance()Lcom/wepie/snake/module/util/VoiceUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wepie/snake/module/util/VoiceUtil;->startEndVoice()V

    .line 113
    return-void
.end method

.method public onKillAi()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$1;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameInfoView:Lcom/wepie/snake/module/game/GameInfoView;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$100(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/GameInfoView;

    move-result-object v0

    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$1;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    iget v1, v1, Lcom/wepie/snake/module/game/snake/SnakeStatus;->killNum:I

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/game/GameInfoView;->doKillAi(I)V

    .line 99
    invoke-static {}, Lcom/wepie/snake/module/util/VoiceUtil;->getInstance()Lcom/wepie/snake/module/util/VoiceUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wepie/snake/module/util/VoiceUtil;->startKillingVoice()V

    .line 100
    return-void
.end method

.method public onRefreshRank(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wepie/snake/module/game/snake/SnakeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "snakeInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/module/game/snake/SnakeInfo;>;"
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$1;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameInfoView:Lcom/wepie/snake/module/game/GameInfoView;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$100(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/GameInfoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wepie/snake/module/game/GameInfoView;->refreshGameRank(Ljava/util/ArrayList;)V

    .line 126
    return-void
.end method

.method public onSnakeLengthChange(Lcom/wepie/snake/module/game/snake/SnakeInfo;)V
    .locals 2
    .param p1, "changeSnake"    # Lcom/wepie/snake/module/game/snake/SnakeInfo;

    .prologue
    .line 117
    iget-boolean v0, p1, Lcom/wepie/snake/module/game/snake/SnakeInfo;->isSnakeAi:Z

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$1;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameInfoView:Lcom/wepie/snake/module/game/GameInfoView;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$100(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/GameInfoView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wepie/snake/module/game/snake/SnakeInfo;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/game/GameInfoView;->doEatFood(I)V

    .line 121
    :cond_0
    return-void
.end method
