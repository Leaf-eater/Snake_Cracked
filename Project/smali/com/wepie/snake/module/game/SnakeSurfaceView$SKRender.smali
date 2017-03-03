.class Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;
.super Ljava/lang/Object;
.source "SnakeSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wepie/snake/module/game/SnakeSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SKRender"
.end annotation


# instance fields
.field frameCount:I

.field reset:Z

.field final synthetic this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/game/SnakeSurfaceView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;

    .prologue
    const/4 v0, 0x0

    .line 262
    iput-object p1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-boolean v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->reset:Z

    .line 264
    iput v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->frameCount:I

    return-void
.end method

.method private initEntity()V
    .locals 5

    .prologue
    .line 346
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v1

    const-string v2, "name"

    const-string v3, "snake"

    invoke-virtual {v1, v2, v3}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/wepie/snake/module/game/snake/SnakeFactory;->creatSnakeSelf(Ljava/lang/String;I)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v1

    # setter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v0, v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$002(Lcom/wepie/snake/module/game/SnakeSurfaceView;Lcom/wepie/snake/module/game/snake/SnakeInfo;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    .line 347
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    new-instance v1, Lcom/wepie/snake/module/game/snake/AiManager;

    iget-object v2, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v2}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/wepie/snake/module/game/snake/AiManager;-><init>(Lcom/wepie/snake/module/game/snake/SnakeInfo;)V

    # setter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->aiManager:Lcom/wepie/snake/module/game/snake/AiManager;
    invoke-static {v0, v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$1002(Lcom/wepie/snake/module/game/SnakeSurfaceView;Lcom/wepie/snake/module/game/snake/AiManager;)Lcom/wepie/snake/module/game/snake/AiManager;

    .line 349
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->allSnakes:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$1100(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 350
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->allSnakes:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$1100(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->allSnakes:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$1100(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->aiManager:Lcom/wepie/snake/module/game/snake/AiManager;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$1000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/AiManager;

    move-result-object v1

    iget-object v1, v1, Lcom/wepie/snake/module/game/snake/AiManager;->snakeAis:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 353
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    new-instance v1, Lcom/wepie/snake/module/game/snake/MeshUtil;

    invoke-direct {v1}, Lcom/wepie/snake/module/game/snake/MeshUtil;-><init>()V

    # setter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->meshUtil:Lcom/wepie/snake/module/game/snake/MeshUtil;
    invoke-static {v0, v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$702(Lcom/wepie/snake/module/game/SnakeSurfaceView;Lcom/wepie/snake/module/game/snake/MeshUtil;)Lcom/wepie/snake/module/game/snake/MeshUtil;

    .line 354
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    new-instance v1, Lcom/wepie/snake/module/game/map/MapRect;

    iget-object v2, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$1200(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/wepie/snake/module/game/map/MapRect;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->mapRect:Lcom/wepie/snake/module/game/map/MapRect;

    .line 356
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    new-instance v1, Lcom/wepie/snake/module/game/food/FoodFactory;

    iget-object v2, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$1200(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->meshUtil:Lcom/wepie/snake/module/game/snake/MeshUtil;
    invoke-static {v3}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$700(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/MeshUtil;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/wepie/snake/module/game/food/FoodFactory;-><init>(Landroid/content/Context;Lcom/wepie/snake/module/game/snake/MeshUtil;)V

    # setter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->foodFactory:Lcom/wepie/snake/module/game/food/FoodFactory;
    invoke-static {v0, v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$802(Lcom/wepie/snake/module/game/SnakeSurfaceView;Lcom/wepie/snake/module/game/food/FoodFactory;)Lcom/wepie/snake/module/game/food/FoodFactory;

    .line 357
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    new-instance v1, Lcom/wepie/snake/module/game/food/WreckFactory;

    iget-object v2, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->meshUtil:Lcom/wepie/snake/module/game/snake/MeshUtil;
    invoke-static {v2}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$700(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/MeshUtil;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/wepie/snake/module/game/food/WreckFactory;-><init>(Lcom/wepie/snake/module/game/snake/MeshUtil;)V

    # setter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->wreckFactory:Lcom/wepie/snake/module/game/food/WreckFactory;
    invoke-static {v0, v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$902(Lcom/wepie/snake/module/game/SnakeSurfaceView;Lcom/wepie/snake/module/game/food/WreckFactory;)Lcom/wepie/snake/module/game/food/WreckFactory;

    .line 359
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    new-instance v1, Lcom/wepie/snake/module/game/snake/CollisionUtil;

    iget-object v2, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->meshUtil:Lcom/wepie/snake/module/game/snake/MeshUtil;
    invoke-static {v2}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$700(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/MeshUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->wreckFactory:Lcom/wepie/snake/module/game/food/WreckFactory;
    invoke-static {v3}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$900(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/food/WreckFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameStatusCallback:Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;
    invoke-static {v4}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$500(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/wepie/snake/module/game/snake/CollisionUtil;-><init>(Lcom/wepie/snake/module/game/snake/MeshUtil;Lcom/wepie/snake/module/game/food/WreckFactory;Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;)V

    iput-object v1, v0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->collisionUtil:Lcom/wepie/snake/module/game/snake/CollisionUtil;

    .line 361
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    iget v1, v1, Lcom/wepie/snake/module/game/snake/BodyInfo;->initX:F

    iput v1, v0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->cx:F

    .line 362
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    iget v1, v1, Lcom/wepie/snake/module/game/snake/BodyInfo;->initY:F

    iput v1, v0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->cy:F

    .line 363
    const/4 v0, 0x0

    iput v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->frameCount:I

    .line 365
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameStatusCallback:Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$500(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;->onSnakeLengthChange(Lcom/wepie/snake/module/game/snake/SnakeInfo;)V

    .line 366
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameStatusCallback:Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$500(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;->onKillAi()V

    .line 367
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameStatusCallback:Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$500(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->allSnakes:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$1100(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;->onRefreshRank(Ljava/util/ArrayList;)V

    .line 368
    return-void
.end method

.method private resetEntity()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 371
    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->initEntity()V

    .line 398
    :goto_0
    return-void

    .line 376
    :cond_0
    const/4 v0, 0x5

    .line 377
    .local v0, "selfLen":I
    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->isReviveSelf:Z
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$1300(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->lastSelfLen:I
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$1400(Lcom/wepie/snake/module/game/SnakeSurfaceView;)I

    move-result v0

    .line 379
    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # setter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->isReviveSelf:Z
    invoke-static {v1, v5}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$1302(Lcom/wepie/snake/module/game/SnakeSurfaceView;Z)Z

    .line 380
    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    const/4 v2, 0x5

    # setter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->lastSelfLen:I
    invoke-static {v1, v2}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$1402(Lcom/wepie/snake/module/game/SnakeSurfaceView;I)I

    .line 382
    :cond_1
    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v2

    const-string v3, "name"

    const-string v4, "snake"

    invoke-virtual {v2, v3, v4}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/wepie/snake/module/game/snake/SnakeFactory;->creatSnakeSelf(Ljava/lang/String;I)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v2

    # setter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v1, v2}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$002(Lcom/wepie/snake/module/game/SnakeSurfaceView;Lcom/wepie/snake/module/game/snake/SnakeInfo;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    .line 383
    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->aiManager:Lcom/wepie/snake/module/game/snake/AiManager;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$1000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/AiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v2}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wepie/snake/module/game/snake/AiManager;->resetAis(Lcom/wepie/snake/module/game/snake/SnakeInfo;)V

    .line 385
    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->allSnakes:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$1100(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 386
    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->allSnakes:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$1100(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v2}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->allSnakes:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$1100(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->aiManager:Lcom/wepie/snake/module/game/snake/AiManager;
    invoke-static {v2}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$1000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/AiManager;

    move-result-object v2

    iget-object v2, v2, Lcom/wepie/snake/module/game/snake/AiManager;->snakeAis:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 389
    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->foodFactory:Lcom/wepie/snake/module/game/food/FoodFactory;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$800(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/food/FoodFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wepie/snake/module/game/food/FoodFactory;->reset()V

    .line 390
    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->wreckFactory:Lcom/wepie/snake/module/game/food/WreckFactory;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$900(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/food/WreckFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wepie/snake/module/game/food/WreckFactory;->reset()V

    .line 391
    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    iget-object v2, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v2}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    iget v2, v2, Lcom/wepie/snake/module/game/snake/BodyInfo;->initX:F

    iput v2, v1, Lcom/wepie/snake/module/game/SnakeSurfaceView;->cx:F

    .line 392
    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    iget-object v2, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v2}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    iget v2, v2, Lcom/wepie/snake/module/game/snake/BodyInfo;->initY:F

    iput v2, v1, Lcom/wepie/snake/module/game/SnakeSurfaceView;->cy:F

    .line 393
    iput v5, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->frameCount:I

    .line 395
    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameStatusCallback:Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$500(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v2}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;->onSnakeLengthChange(Lcom/wepie/snake/module/game/snake/SnakeInfo;)V

    .line 396
    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameStatusCallback:Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$500(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;->onKillAi()V

    .line 397
    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameStatusCallback:Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$500(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->allSnakes:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$1100(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;->onRefreshRank(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .param p1, "gl10"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 301
    .local v10, "time":J
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 303
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->isGameOver:Z
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$300(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    iget-boolean v0, v0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->isAlive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/snake/SnakeInfo;->doDie()V

    .line 307
    :cond_0
    iget-boolean v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->reset:Z

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # setter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->isGameOver:Z
    invoke-static {v0, v9}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$302(Lcom/wepie/snake/module/game/SnakeSurfaceView;Z)Z

    .line 309
    iput-boolean v9, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->reset:Z

    .line 310
    invoke-direct {p0}, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->resetEntity()V

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->meshUtil:Lcom/wepie/snake/module/game/snake/MeshUtil;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$700(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/MeshUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/snake/MeshUtil;->reset()V

    .line 314
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->foodFactory:Lcom/wepie/snake/module/game/food/FoodFactory;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$800(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/food/FoodFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/game/snake/SnakeInfo;->doMove(Lcom/wepie/snake/module/game/food/FoodFactory;)V

    .line 315
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    iget v1, v0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->cx:F

    iget-object v2, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v2}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    iget v2, v2, Lcom/wepie/snake/module/game/snake/MoveInfo;->dx:F

    iget-object v3, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v3}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    iget v3, v3, Lcom/wepie/snake/module/game/snake/SnakeStatus;->speedRate:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->cx:F

    .line 316
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    iget v1, v0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->cy:F

    iget-object v2, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v2}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    iget v2, v2, Lcom/wepie/snake/module/game/snake/MoveInfo;->dy:F

    iget-object v3, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v3}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    iget v3, v3, Lcom/wepie/snake/module/game/snake/SnakeStatus;->speedRate:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->cy:F

    .line 317
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    iget v0, v0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->cx:F

    sget v1, Lcom/wepie/snake/module/game/snake/GameConfig;->factor:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    iget v1, v1, Lcom/wepie/snake/module/game/SnakeSurfaceView;->cy:F

    sget v2, Lcom/wepie/snake/module/game/snake/GameConfig;->factor:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    iget-object v3, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    iget v3, v3, Lcom/wepie/snake/module/game/SnakeSurfaceView;->cx:F

    sget v4, Lcom/wepie/snake/module/game/snake/GameConfig;->factor:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    iget v4, v4, Lcom/wepie/snake/module/game/SnakeSurfaceView;->cy:F

    sget v6, Lcom/wepie/snake/module/game/snake/GameConfig;->factor:F

    mul-float/2addr v4, v6

    const/high16 v7, 0x3f800000    # 1.0f

    move v6, v5

    move v8, v5

    invoke-static/range {v0 .. v8}, Lcom/wepie/snake/module/game/util/MatrixUtil;->setCamera(FFFFFFFFF)V

    .line 320
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    iget-object v0, v0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->mapRect:Lcom/wepie/snake/module/game/map/MapRect;

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/map/MapRect;->drawSelf()V

    .line 321
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->foodFactory:Lcom/wepie/snake/module/game/food/FoodFactory;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$800(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/food/FoodFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/food/FoodFactory;->drawFoods()V

    .line 322
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->wreckFactory:Lcom/wepie/snake/module/game/food/WreckFactory;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$900(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/food/WreckFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/food/WreckFactory;->drawWrecks()V

    .line 324
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->aiManager:Lcom/wepie/snake/module/game/snake/AiManager;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$1000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/AiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/game/snake/AiManager;->checkAiAliveStatus(Lcom/wepie/snake/module/game/snake/SnakeInfo;)V

    .line 325
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->aiManager:Lcom/wepie/snake/module/game/snake/AiManager;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$1000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/AiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->meshUtil:Lcom/wepie/snake/module/game/snake/MeshUtil;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$700(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/MeshUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->foodFactory:Lcom/wepie/snake/module/game/food/FoodFactory;
    invoke-static {v2}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$800(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/food/FoodFactory;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wepie/snake/module/game/snake/AiManager;->doMoveAndDraw(Lcom/wepie/snake/module/game/snake/MeshUtil;Lcom/wepie/snake/module/game/food/FoodFactory;)V

    .line 326
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/snake/SnakeInfo;->drawSelf()V

    .line 328
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->foodFactory:Lcom/wepie/snake/module/game/food/FoodFactory;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$800(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/food/FoodFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/food/FoodFactory;->initFoodMesh()V

    .line 329
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->wreckFactory:Lcom/wepie/snake/module/game/food/WreckFactory;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$900(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/food/WreckFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/food/WreckFactory;->initWreckMesh()V

    .line 331
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->meshUtil:Lcom/wepie/snake/module/game/snake/MeshUtil;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$700(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/MeshUtil;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/game/snake/BodyInfo;->refreshMesh(Lcom/wepie/snake/module/game/snake/MeshUtil;)V

    .line 333
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    iget-object v0, v0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->collisionUtil:Lcom/wepie/snake/module/game/snake/CollisionUtil;

    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->detectionSnake(Lcom/wepie/snake/module/game/snake/SnakeInfo;)V

    .line 334
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->aiManager:Lcom/wepie/snake/module/game/snake/AiManager;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$1000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/AiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    iget-object v1, v1, Lcom/wepie/snake/module/game/SnakeSurfaceView;->collisionUtil:Lcom/wepie/snake/module/game/snake/CollisionUtil;

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/game/snake/AiManager;->detAis(Lcom/wepie/snake/module/game/snake/CollisionUtil;)V

    .line 336
    iget v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->frameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->frameCount:I

    .line 337
    iget v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->frameCount:I

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_2

    .line 338
    iput v9, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->frameCount:I

    .line 339
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameStatusCallback:Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$500(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->allSnakes:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$1100(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;->onRefreshRank(Ljava/util/ArrayList;)V

    .line 342
    :cond_2
    const-string v0, "999"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------->onDrawFrame time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v2}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    invoke-virtual {v2}, Lcom/wepie/snake/module/game/snake/BodyInfo;->getBodyCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 10
    .param p1, "gl10"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 280
    int-to-float v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float v1, p3

    div-float v9, v0, v1

    .line 281
    .local v9, "rate":F
    sput v9, Lcom/wepie/snake/module/game/util/CoordUtil;->rate:F

    .line 282
    sput v9, Lcom/wepie/snake/module/game/util/CoordUtil;->camera_left:F

    .line 283
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/wepie/snake/module/game/util/CoordUtil;->camera_top:F

    .line 286
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 287
    sget v0, Lcom/wepie/snake/module/game/util/CoordUtil;->camera_left:F

    neg-float v0, v0

    sget v1, Lcom/wepie/snake/module/game/util/CoordUtil;->camera_left:F

    sget v2, Lcom/wepie/snake/module/game/util/CoordUtil;->camera_top:F

    neg-float v2, v2

    sget v3, Lcom/wepie/snake/module/game/util/CoordUtil;->camera_top:F

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static/range {v0 .. v5}, Lcom/wepie/snake/module/game/util/MatrixUtil;->setProjectOrtho(FFFFFF)V

    .line 288
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x41a00000    # 20.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/wepie/snake/module/game/util/MatrixUtil;->setCamera(FFFFFFFFF)V

    .line 289
    invoke-static {}, Lcom/wepie/snake/module/game/util/MatrixUtil;->initStack()V

    .line 291
    const-string v0, "999"

    const-string v1, "----->SnakeSurfaceView onSurfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    # getter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->initEntity()V

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "gl10"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "eglConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const v2, 0x3de147ae    # 0.11f

    .line 268
    const v0, 0x3ee66666    # 0.45f

    const/4 v1, 0x0

    invoke-static {v0, v2, v2, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 269
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 270
    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 271
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 272
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 274
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->this$0:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    const/4 v1, 0x0

    # setter for: Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {v0, v1}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->access$002(Lcom/wepie/snake/module/game/SnakeSurfaceView;Lcom/wepie/snake/module/game/snake/SnakeInfo;)Lcom/wepie/snake/module/game/snake/SnakeInfo;

    .line 275
    const-string v0, "999"

    const-string v1, "----->SnakeSurfaceView onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void
.end method
