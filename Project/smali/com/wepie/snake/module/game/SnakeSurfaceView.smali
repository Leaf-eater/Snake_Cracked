.class public Lcom/wepie/snake/module/game/SnakeSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "SnakeSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;,
        Lcom/wepie/snake/module/game/SnakeSurfaceView$DetectionThread;,
        Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;
    }
.end annotation


# instance fields
.field private aiManager:Lcom/wepie/snake/module/game/snake/AiManager;

.field private allSnakes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wepie/snake/module/game/snake/SnakeInfo;",
            ">;"
        }
    .end annotation
.end field

.field collisionUtil:Lcom/wepie/snake/module/game/snake/CollisionUtil;

.field cx:F

.field cy:F

.field private detectionThread:Lcom/wepie/snake/module/game/SnakeSurfaceView$DetectionThread;

.field private foodFactory:Lcom/wepie/snake/module/game/food/FoodFactory;

.field private gameInfoView:Lcom/wepie/snake/module/game/GameInfoView;

.field private gameStatusCallback:Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;

.field private gameType:I

.field private isGameOver:Z

.field private isReviveSelf:Z

.field private isTimerPaused:Z

.field private lastSelfLen:I

.field private mContext:Landroid/content/Context;

.field mapRect:Lcom/wepie/snake/module/game/map/MapRect;

.field private meshUtil:Lcom/wepie/snake/module/game/snake/MeshUtil;

.field remainSecond:I

.field render:Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;

.field rouletteView:Lcom/wepie/snake/module/game/RouletteView;

.field private snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;

.field private timer:Ljava/util/Timer;

.field touchSlop:I

.field private wreckFactory:Lcom/wepie/snake/module/game/food/WreckFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 49
    iput v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->cx:F

    .line 50
    iput v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->cy:F

    .line 55
    iput-boolean v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->isGameOver:Z

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->allSnakes:Ljava/util/ArrayList;

    .line 190
    iput-boolean v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->isTimerPaused:Z

    .line 260
    iput-boolean v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->isReviveSelf:Z

    .line 261
    const/4 v0, 0x5

    iput v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->lastSelfLen:I

    .line 64
    iput-object p1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->mContext:Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->init()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->cx:F

    .line 50
    iput v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->cy:F

    .line 55
    iput-boolean v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->isGameOver:Z

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->allSnakes:Ljava/util/ArrayList;

    .line 190
    iput-boolean v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->isTimerPaused:Z

    .line 260
    iput-boolean v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->isReviveSelf:Z

    .line 261
    const/4 v0, 0x5

    iput v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->lastSelfLen:I

    .line 70
    iput-object p1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->mContext:Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->init()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/SnakeInfo;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/wepie/snake/module/game/SnakeSurfaceView;Lcom/wepie/snake/module/game/snake/SnakeInfo;)Lcom/wepie/snake/module/game/snake/SnakeInfo;
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;
    .param p1, "x1"    # Lcom/wepie/snake/module/game/snake/SnakeInfo;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/GameInfoView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameInfoView:Lcom/wepie/snake/module/game/GameInfoView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/AiManager;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->aiManager:Lcom/wepie/snake/module/game/snake/AiManager;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/wepie/snake/module/game/SnakeSurfaceView;Lcom/wepie/snake/module/game/snake/AiManager;)Lcom/wepie/snake/module/game/snake/AiManager;
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;
    .param p1, "x1"    # Lcom/wepie/snake/module/game/snake/AiManager;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->aiManager:Lcom/wepie/snake/module/game/snake/AiManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->allSnakes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->isReviveSelf:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/wepie/snake/module/game/SnakeSurfaceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->isReviveSelf:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/wepie/snake/module/game/SnakeSurfaceView;)I
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;

    .prologue
    .line 37
    iget v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->lastSelfLen:I

    return v0
.end method

.method static synthetic access$1402(Lcom/wepie/snake/module/game/SnakeSurfaceView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->lastSelfLen:I

    return p1
.end method

.method static synthetic access$200(Lcom/wepie/snake/module/game/SnakeSurfaceView;)I
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;

    .prologue
    .line 37
    iget v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameType:I

    return v0
.end method

.method static synthetic access$300(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->isGameOver:Z

    return v0
.end method

.method static synthetic access$302(Lcom/wepie/snake/module/game/SnakeSurfaceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->isGameOver:Z

    return p1
.end method

.method static synthetic access$400(Lcom/wepie/snake/module/game/SnakeSurfaceView;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->pauseTimer()V

    return-void
.end method

.method static synthetic access$500(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameStatusCallback:Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->isTimerPaused:Z

    return v0
.end method

.method static synthetic access$700(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/snake/MeshUtil;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->meshUtil:Lcom/wepie/snake/module/game/snake/MeshUtil;

    return-object v0
.end method

.method static synthetic access$702(Lcom/wepie/snake/module/game/SnakeSurfaceView;Lcom/wepie/snake/module/game/snake/MeshUtil;)Lcom/wepie/snake/module/game/snake/MeshUtil;
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;
    .param p1, "x1"    # Lcom/wepie/snake/module/game/snake/MeshUtil;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->meshUtil:Lcom/wepie/snake/module/game/snake/MeshUtil;

    return-object p1
.end method

.method static synthetic access$800(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/food/FoodFactory;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->foodFactory:Lcom/wepie/snake/module/game/food/FoodFactory;

    return-object v0
.end method

.method static synthetic access$802(Lcom/wepie/snake/module/game/SnakeSurfaceView;Lcom/wepie/snake/module/game/food/FoodFactory;)Lcom/wepie/snake/module/game/food/FoodFactory;
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;
    .param p1, "x1"    # Lcom/wepie/snake/module/game/food/FoodFactory;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->foodFactory:Lcom/wepie/snake/module/game/food/FoodFactory;

    return-object p1
.end method

.method static synthetic access$900(Lcom/wepie/snake/module/game/SnakeSurfaceView;)Lcom/wepie/snake/module/game/food/WreckFactory;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->wreckFactory:Lcom/wepie/snake/module/game/food/WreckFactory;

    return-object v0
.end method

.method static synthetic access$902(Lcom/wepie/snake/module/game/SnakeSurfaceView;Lcom/wepie/snake/module/game/food/WreckFactory;)Lcom/wepie/snake/module/game/food/WreckFactory;
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/game/SnakeSurfaceView;
    .param p1, "x1"    # Lcom/wepie/snake/module/game/food/WreckFactory;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->wreckFactory:Lcom/wepie/snake/module/game/food/WreckFactory;

    return-object p1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->setEGLContextClientVersion(I)V

    .line 88
    new-instance v0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;

    invoke-direct {v0, p0}, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;-><init>(Lcom/wepie/snake/module/game/SnakeSurfaceView;)V

    iput-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->render:Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;

    .line 89
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->render:Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->setRenderMode(I)V

    .line 91
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/wepie/snake/module/game/snake/GameConfig;->factor:F

    .line 93
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->touchSlop:I

    .line 95
    new-instance v0, Lcom/wepie/snake/module/game/SnakeSurfaceView$1;

    invoke-direct {v0, p0}, Lcom/wepie/snake/module/game/SnakeSurfaceView$1;-><init>(Lcom/wepie/snake/module/game/SnakeSurfaceView;)V

    iput-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameStatusCallback:Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;

    .line 129
    invoke-static {}, Lcom/wepie/snake/module/game/GameTypeUtil;->getGameType()I

    move-result v0

    iput v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameType:I

    .line 130
    invoke-direct {p0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->setGameType()V

    .line 131
    return-void
.end method

.method private pauseTimer()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->isTimerPaused:Z

    .line 193
    return-void
.end method

.method private setGameType()V
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->closeTimer()V

    .line 139
    const/16 v0, 0x12c

    iput v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->remainSecond:I

    .line 140
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameInfoView:Lcom/wepie/snake/module/game/GameInfoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameInfoView:Lcom/wepie/snake/module/game/GameInfoView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/game/GameInfoView;->doRefreshTime(Ljava/lang/String;)V

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->startTimer()V

    .line 146
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameInfoView:Lcom/wepie/snake/module/game/GameInfoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameInfoView:Lcom/wepie/snake/module/game/GameInfoView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/game/GameInfoView;->doRefreshTime(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startTimer()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->isTimerPaused:Z

    .line 162
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->timer:Ljava/util/Timer;

    .line 163
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/wepie/snake/module/game/SnakeSurfaceView$2;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/game/SnakeSurfaceView$2;-><init>(Lcom/wepie/snake/module/game/SnakeSurfaceView;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 177
    return-void
.end method


# virtual methods
.method public checkRestartTimer()V
    .locals 3

    .prologue
    .line 149
    iget v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 150
    iget-boolean v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->isGameOver:Z

    if-eqz v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->closeTimer()V

    .line 153
    invoke-static {}, Lcom/wepie/snake/module/game/GameTypeUtil;->getRemainTime()I

    move-result v1

    iput v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->remainSecond:I

    .line 154
    iget v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->remainSecond:I

    invoke-static {v1}, Lcom/wepie/snake/module/game/GameTypeUtil;->getTimeString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "timeString":Ljava/lang/String;
    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameInfoView:Lcom/wepie/snake/module/game/GameInfoView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameInfoView:Lcom/wepie/snake/module/game/GameInfoView;

    invoke-virtual {v1, v0}, Lcom/wepie/snake/module/game/GameInfoView;->doRefreshTime(Ljava/lang/String;)V

    .line 156
    :cond_2
    invoke-direct {p0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->startTimer()V

    goto :goto_0
.end method

.method public closeTimer()V
    .locals 1

    .prologue
    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->timer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public doReStartGame()V
    .locals 2

    .prologue
    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->isReviveSelf:Z

    .line 248
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->render:Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->reset:Z

    .line 249
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/wepie/snake/module/game/snake/GameConfig;->factor:F

    .line 250
    invoke-direct {p0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->setGameType()V

    .line 251
    return-void
.end method

.method public doReviveSelf()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 254
    iput-boolean v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->isReviveSelf:Z

    .line 255
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/snake/BodyInfo;->getBodyCount()I

    move-result v0

    iput v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->lastSelfLen:I

    .line 256
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->isTimerPaused:Z

    .line 257
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->render:Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;

    iput-boolean v1, v0, Lcom/wepie/snake/module/game/SnakeSurfaceView$SKRender;->reset:Z

    .line 258
    return-void
.end method

.method public isGameOver()Z
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->isGameOver:Z

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 83
    const-string v0, "999"

    const-string v1, "----->SnakeSurfaceView onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 77
    const-string v0, "999"

    const-string v1, "----->SnakeSurfaceView onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 218
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 219
    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 243
    :cond_0
    :goto_0
    :pswitch_0
    return v10

    .line 223
    :pswitch_1
    iget-object v6, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->rouletteView:Lcom/wepie/snake/module/game/RouletteView;

    if-eqz v6, :cond_0

    .line 225
    invoke-static {}, Lcom/wepie/snake/module/game/util/ScreenUtil;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float v5, v6, v5

    .line 226
    iget-object v6, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->rouletteView:Lcom/wepie/snake/module/game/RouletteView;

    invoke-virtual {v6}, Lcom/wepie/snake/module/game/RouletteView;->getCenterX()I

    move-result v6

    int-to-float v6, v6

    sub-float v1, v4, v6

    .line 227
    .local v1, "dx":F
    iget-object v6, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->rouletteView:Lcom/wepie/snake/module/game/RouletteView;

    invoke-virtual {v6}, Lcom/wepie/snake/module/game/RouletteView;->getCenterY()I

    move-result v6

    int-to-float v6, v6

    sub-float v2, v5, v6

    .line 230
    .local v2, "dy":F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 231
    .local v0, "dis":F
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v6, v8}, Lcom/wepie/snake/module/game/util/CoordUtil;->getVectorRadians(FFFF)F

    move-result v3

    .line 232
    .local v3, "r":F
    cmpg-float v6, v2, v8

    if-gez v6, :cond_1

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v8, v3

    sub-double/2addr v6, v8

    double-to-float v3, v6

    .line 233
    :cond_1
    iget-object v6, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v6, v6, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    invoke-virtual {v6, v3}, Lcom/wepie/snake/module/game/snake/MoveInfo;->setTargetDirection(F)V

    .line 235
    :cond_2
    iget-object v6, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->rouletteView:Lcom/wepie/snake/module/game/RouletteView;

    invoke-virtual {v6, v0, v3}, Lcom/wepie/snake/module/game/RouletteView;->refresh(FF)V

    goto :goto_0

    .line 239
    .end local v0    # "dis":F
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v3    # "r":F
    :pswitch_2
    iget-object v6, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->rouletteView:Lcom/wepie/snake/module/game/RouletteView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->rouletteView:Lcom/wepie/snake/module/game/RouletteView;

    invoke-virtual {v6, v8, v8}, Lcom/wepie/snake/module/game/RouletteView;->refresh(FF)V

    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public saveRemainTime()V
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->remainSecond:I

    invoke-static {v0}, Lcom/wepie/snake/module/game/GameTypeUtil;->saveRemainTime(I)V

    .line 197
    return-void
.end method

.method public setGameInfoView(Lcom/wepie/snake/module/game/GameInfoView;)V
    .locals 2
    .param p1, "view"    # Lcom/wepie/snake/module/game/GameInfoView;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameInfoView:Lcom/wepie/snake/module/game/GameInfoView;

    .line 204
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameInfoView:Lcom/wepie/snake/module/game/GameInfoView;

    iget-object v0, v0, Lcom/wepie/snake/module/game/GameInfoView;->gameRankView:Lcom/wepie/snake/ui/GameRankView;

    iget v1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->gameType:I

    invoke-virtual {v0, v1}, Lcom/wepie/snake/ui/GameRankView;->updateTodayBestInfo(I)V

    .line 205
    return-void
.end method

.method public setRouletteView(Lcom/wepie/snake/module/game/RouletteView;)V
    .locals 0
    .param p1, "view"    # Lcom/wepie/snake/module/game/RouletteView;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->rouletteView:Lcom/wepie/snake/module/game/RouletteView;

    .line 201
    return-void
.end method

.method public speedDown()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/snake/SnakeStatus;->speedDown()V

    .line 213
    :cond_0
    return-void
.end method

.method public speedUp()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/game/SnakeSurfaceView;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/snake/SnakeInfo;->speedUp()V

    .line 209
    :cond_0
    return-void
.end method
