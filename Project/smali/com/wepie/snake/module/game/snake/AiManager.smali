.class public Lcom/wepie/snake/module/game/snake/AiManager;
.super Ljava/lang/Object;
.source "AiManager.java"


# instance fields
.field private executor:Ljava/util/concurrent/ExecutorService;

.field private r:Ljava/util/Random;

.field private reviveMeshUtil:Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;

.field public snakeAis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wepie/snake/module/game/snake/SnakeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/wepie/snake/module/game/snake/SnakeInfo;)V
    .locals 2
    .param p1, "selfSnake"    # Lcom/wepie/snake/module/game/snake/SnakeInfo;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/game/snake/AiManager;->snakeAis:Ljava/util/ArrayList;

    .line 22
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/wepie/snake/module/game/snake/AiManager;->executor:Ljava/util/concurrent/ExecutorService;

    .line 23
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/game/snake/AiManager;->r:Ljava/util/Random;

    .line 26
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/AiManager;->snakeAis:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/wepie/snake/module/game/snake/SnakeFactory;->createSnakes(Lcom/wepie/snake/module/game/snake/SnakeInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/module/game/snake/AiManager;)Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/game/snake/AiManager;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/AiManager;->reviveMeshUtil:Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wepie/snake/module/game/snake/AiManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/game/snake/AiManager;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/wepie/snake/module/game/snake/AiManager;->getRandomBodyLen()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/wepie/snake/module/game/snake/AiManager;)Ljava/util/Random;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/game/snake/AiManager;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/AiManager;->r:Ljava/util/Random;

    return-object v0
.end method

.method private doAliveAi(Lcom/wepie/snake/module/game/snake/SnakeInfo;Lcom/wepie/snake/module/game/snake/SnakeInfo;)V
    .locals 7
    .param p1, "reviveSnake"    # Lcom/wepie/snake/module/game/snake/SnakeInfo;
    .param p2, "selfSnake"    # Lcom/wepie/snake/module/game/snake/SnakeInfo;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/AiManager;->reviveMeshUtil:Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;

    invoke-direct {v0}, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/game/snake/AiManager;->reviveMeshUtil:Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;

    .line 81
    :cond_0
    iget-object v0, p2, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/snake/BodyInfo;->getHeadPoint()Lcom/wepie/snake/module/game/snake/PointInfo;

    move-result-object v0

    iget v4, v0, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    .line 82
    .local v4, "selfX":F
    iget-object v0, p2, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/snake/BodyInfo;->getHeadPoint()Lcom/wepie/snake/module/game/snake/PointInfo;

    move-result-object v0

    iget v5, v0, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    .line 84
    .local v5, "selfY":F
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v2, "tempArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/module/game/snake/PointInfo;>;"
    iget-object v0, p2, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 87
    iget-object v6, p0, Lcom/wepie/snake/module/game/snake/AiManager;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/wepie/snake/module/game/snake/AiManager$1;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/wepie/snake/module/game/snake/AiManager$1;-><init>(Lcom/wepie/snake/module/game/snake/AiManager;Ljava/util/ArrayList;Lcom/wepie/snake/module/game/snake/SnakeInfo;FF)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 139
    return-void
.end method

.method private getRandomBodyLen()I
    .locals 3

    .prologue
    .line 142
    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/AiManager;->r:Ljava/util/Random;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 143
    .local v0, "snakeType":I
    if-nez v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/AiManager;->r:Ljava/util/Random;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    .line 148
    :goto_0
    return v1

    .line 145
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/AiManager;->r:Ljava/util/Random;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    goto :goto_0

    .line 148
    :cond_1
    const/4 v1, 0x5

    goto :goto_0
.end method


# virtual methods
.method public checkAiAliveStatus(Lcom/wepie/snake/module/game/snake/SnakeInfo;)V
    .locals 8
    .param p1, "selfSnake"    # Lcom/wepie/snake/module/game/snake/SnakeInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 50
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/AiManager;->snakeAis:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 51
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 52
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/AiManager;->snakeAis:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;

    .line 53
    .local v0, "aiSnake":Lcom/wepie/snake/module/game/snake/SnakeInfo;
    iget-object v1, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    .line 54
    .local v1, "aiStatus":Lcom/wepie/snake/module/game/snake/SnakeStatus;
    iget-boolean v4, v1, Lcom/wepie/snake/module/game/snake/SnakeStatus;->isAlive:Z

    if-nez v4, :cond_0

    .line 55
    iget-boolean v4, v1, Lcom/wepie/snake/module/game/snake/SnakeStatus;->needRevive:Z

    if-nez v4, :cond_2

    .line 56
    iget v4, v1, Lcom/wepie/snake/module/game/snake/SnakeStatus;->reviveFrameCount:I

    const/16 v5, 0x64

    if-ge v4, v5, :cond_1

    .line 57
    iget v4, v1, Lcom/wepie/snake/module/game/snake/SnakeStatus;->reviveFrameCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/wepie/snake/module/game/snake/SnakeStatus;->reviveFrameCount:I

    .line 51
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_1
    iget-boolean v4, v1, Lcom/wepie/snake/module/game/snake/SnakeStatus;->isReviving:Z

    if-nez v4, :cond_0

    .line 60
    iput-boolean v7, v1, Lcom/wepie/snake/module/game/snake/SnakeStatus;->isReviving:Z

    .line 61
    invoke-direct {p0, v0, p1}, Lcom/wepie/snake/module/game/snake/AiManager;->doAliveAi(Lcom/wepie/snake/module/game/snake/SnakeInfo;Lcom/wepie/snake/module/game/snake/SnakeInfo;)V

    goto :goto_1

    .line 65
    :cond_2
    iput-boolean v7, v1, Lcom/wepie/snake/module/game/snake/SnakeStatus;->isAlive:Z

    .line 66
    iput-boolean v6, v1, Lcom/wepie/snake/module/game/snake/SnakeStatus;->needRevive:Z

    .line 67
    iput-boolean v6, v1, Lcom/wepie/snake/module/game/snake/SnakeStatus;->isReviving:Z

    .line 68
    iput v6, v1, Lcom/wepie/snake/module/game/snake/SnakeStatus;->reviveFrameCount:I

    .line 69
    const/16 v4, 0x3c

    iput v4, v1, Lcom/wepie/snake/module/game/snake/SnakeStatus;->superFrameCount:I

    .line 70
    iget-object v4, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    invoke-virtual {v4}, Lcom/wepie/snake/module/game/snake/BodyInfo;->doRevive()V

    goto :goto_1

    .line 74
    .end local v0    # "aiSnake":Lcom/wepie/snake/module/game/snake/SnakeInfo;
    .end local v1    # "aiStatus":Lcom/wepie/snake/module/game/snake/SnakeStatus;
    :cond_3
    return-void
.end method

.method public detAis(Lcom/wepie/snake/module/game/snake/CollisionUtil;)V
    .locals 3
    .param p1, "collisionUtil"    # Lcom/wepie/snake/module/game/snake/CollisionUtil;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/AiManager;->snakeAis:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;

    .line 45
    .local v0, "aiSnake":Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-virtual {p1, v0}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->detectionSnake(Lcom/wepie/snake/module/game/snake/SnakeInfo;)V

    goto :goto_0

    .line 47
    .end local v0    # "aiSnake":Lcom/wepie/snake/module/game/snake/SnakeInfo;
    :cond_0
    return-void
.end method

.method public doMoveAndDraw(Lcom/wepie/snake/module/game/snake/MeshUtil;Lcom/wepie/snake/module/game/food/FoodFactory;)V
    .locals 3
    .param p1, "meshUtil"    # Lcom/wepie/snake/module/game/snake/MeshUtil;
    .param p2, "foodFactory"    # Lcom/wepie/snake/module/game/food/FoodFactory;

    .prologue
    .line 35
    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/AiManager;->snakeAis:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;

    .line 36
    .local v0, "aiSnake":Lcom/wepie/snake/module/game/snake/SnakeInfo;
    iget-object v2, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    iget-boolean v2, v2, Lcom/wepie/snake/module/game/snake/SnakeStatus;->isAlive:Z

    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {v0, p2}, Lcom/wepie/snake/module/game/snake/SnakeInfo;->doMove(Lcom/wepie/snake/module/game/food/FoodFactory;)V

    .line 38
    invoke-virtual {v0}, Lcom/wepie/snake/module/game/snake/SnakeInfo;->drawSelf()V

    .line 39
    iget-object v2, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    invoke-virtual {v2, p1}, Lcom/wepie/snake/module/game/snake/BodyInfo;->refreshMesh(Lcom/wepie/snake/module/game/snake/MeshUtil;)V

    goto :goto_0

    .line 41
    .end local v0    # "aiSnake":Lcom/wepie/snake/module/game/snake/SnakeInfo;
    :cond_1
    return-void
.end method

.method public resetAis(Lcom/wepie/snake/module/game/snake/SnakeInfo;)V
    .locals 2
    .param p1, "selfSnake"    # Lcom/wepie/snake/module/game/snake/SnakeInfo;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/AiManager;->snakeAis:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/AiManager;->snakeAis:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/wepie/snake/module/game/snake/SnakeFactory;->createSnakes(Lcom/wepie/snake/module/game/snake/SnakeInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 32
    return-void
.end method
