.class Lcom/wepie/snake/module/game/snake/AiManager$1;
.super Ljava/lang/Object;
.source "AiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/game/snake/AiManager;->doAliveAi(Lcom/wepie/snake/module/game/snake/SnakeInfo;Lcom/wepie/snake/module/game/snake/SnakeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/wepie/snake/module/game/snake/AiManager;

.field final synthetic val$reviveSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

.field final synthetic val$selfX:F

.field final synthetic val$selfY:F

.field final synthetic val$tempArray:Ljava/util/ArrayList;

.field warnDis:F

.field warnY:F

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/game/snake/AiManager;Ljava/util/ArrayList;Lcom/wepie/snake/module/game/snake/SnakeInfo;FF)V
    .locals 1
    .param p1, "this$0"    # Lcom/wepie/snake/module/game/snake/AiManager;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->this$0:Lcom/wepie/snake/module/game/snake/AiManager;

    iput-object p2, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->val$tempArray:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->val$reviveSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iput p4, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->val$selfX:F

    iput p5, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->val$selfY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/CoordUtil;->screenSize2GLSize(F)F

    move-result v0

    iput v0, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->warnDis:F

    .line 90
    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/CoordUtil;->screenSize2GLSize(F)F

    move-result v0

    iput v0, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->warnY:F

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->count:I

    return-void
.end method

.method private getRandomXY()V
    .locals 15

    .prologue
    .line 107
    iget-object v11, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->this$0:Lcom/wepie/snake/module/game/snake/AiManager;

    # getter for: Lcom/wepie/snake/module/game/snake/AiManager;->r:Ljava/util/Random;
    invoke-static {v11}, Lcom/wepie/snake/module/game/snake/AiManager;->access$200(Lcom/wepie/snake/module/game/snake/AiManager;)Ljava/util/Random;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 108
    .local v1, "meshIndex":I
    iget-object v11, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->this$0:Lcom/wepie/snake/module/game/snake/AiManager;

    # getter for: Lcom/wepie/snake/module/game/snake/AiManager;->reviveMeshUtil:Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;
    invoke-static {v11}, Lcom/wepie/snake/module/game/snake/AiManager;->access$000(Lcom/wepie/snake/module/game/snake/AiManager;)Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->getMinSelfBodyMeshNum(I)I

    move-result v2

    .line 109
    .local v2, "meshNum":I
    iget-object v11, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->this$0:Lcom/wepie/snake/module/game/snake/AiManager;

    # getter for: Lcom/wepie/snake/module/game/snake/AiManager;->reviveMeshUtil:Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;
    invoke-static {v11}, Lcom/wepie/snake/module/game/snake/AiManager;->access$000(Lcom/wepie/snake/module/game/snake/AiManager;)Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;

    invoke-static {v2}, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->getMeshStartX(I)F

    move-result v3

    .line 110
    .local v3, "startX":F
    iget-object v11, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->this$0:Lcom/wepie/snake/module/game/snake/AiManager;

    # getter for: Lcom/wepie/snake/module/game/snake/AiManager;->reviveMeshUtil:Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;
    invoke-static {v11}, Lcom/wepie/snake/module/game/snake/AiManager;->access$000(Lcom/wepie/snake/module/game/snake/AiManager;)Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;

    invoke-static {v2}, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->getMeshStartY(I)F

    move-result v4

    .line 111
    .local v4, "startY":F
    sget v11, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->unitx:F

    const/high16 v12, 0x447a0000    # 1000.0f

    mul-float/2addr v11, v12

    float-to-int v5, v11

    .line 112
    .local v5, "xRandom":I
    sget v11, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->unity:F

    const/high16 v12, 0x447a0000    # 1000.0f

    mul-float/2addr v11, v12

    float-to-int v9, v11

    .line 113
    .local v9, "yRandom":I
    iget-object v11, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->this$0:Lcom/wepie/snake/module/game/snake/AiManager;

    # getter for: Lcom/wepie/snake/module/game/snake/AiManager;->r:Ljava/util/Random;
    invoke-static {v11}, Lcom/wepie/snake/module/game/snake/AiManager;->access$200(Lcom/wepie/snake/module/game/snake/AiManager;)Ljava/util/Random;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v11, v12

    const/high16 v12, 0x447a0000    # 1000.0f

    div-float/2addr v11, v12

    add-float/2addr v11, v3

    iput v11, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->x:F

    .line 114
    iget-object v11, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->this$0:Lcom/wepie/snake/module/game/snake/AiManager;

    # getter for: Lcom/wepie/snake/module/game/snake/AiManager;->r:Ljava/util/Random;
    invoke-static {v11}, Lcom/wepie/snake/module/game/snake/AiManager;->access$200(Lcom/wepie/snake/module/game/snake/AiManager;)Ljava/util/Random;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v11, v12

    const/high16 v12, 0x447a0000    # 1000.0f

    div-float/2addr v11, v12

    sub-float v11, v4, v11

    iput v11, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->y:F

    .line 115
    sget v6, Lcom/wepie/snake/module/game/snake/CollisionUtil;->topBorder:F

    .line 116
    .local v6, "xleft":F
    sget v7, Lcom/wepie/snake/module/game/snake/CollisionUtil;->rightBorder:F

    .line 117
    .local v7, "xright":F
    sget v10, Lcom/wepie/snake/module/game/snake/CollisionUtil;->topBorder:F

    .line 118
    .local v10, "yTop":F
    sget v8, Lcom/wepie/snake/module/game/snake/CollisionUtil;->bottomBorder:F

    .line 120
    .local v8, "yBottom":F
    const/4 v11, 0x0

    iput v11, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->count:I

    .line 121
    iget v11, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->val$selfX:F

    iget v12, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->x:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->val$selfX:F

    iget v13, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->x:F

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->val$selfY:F

    iget v13, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->y:F

    sub-float/2addr v12, v13

    iget v13, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->val$selfY:F

    iget v14, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->y:F

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v0, v12

    .line 122
    .local v0, "dis":F
    :goto_0
    iget v11, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->count:I

    const/16 v12, 0x3e8

    if-ge v11, v12, :cond_1

    iget v11, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->warnDis:F

    cmpg-float v11, v0, v11

    if-ltz v11, :cond_0

    iget v11, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->y:F

    iget v12, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->val$selfY:F

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iget v12, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->warnY:F

    cmpg-float v11, v11, v12

    if-ltz v11, :cond_0

    .line 123
    invoke-direct {p0, v6, v7, v10, v8}, Lcom/wepie/snake/module/game/snake/AiManager$1;->nearBorder(FFFF)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 124
    :cond_0
    iget-object v11, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->this$0:Lcom/wepie/snake/module/game/snake/AiManager;

    # getter for: Lcom/wepie/snake/module/game/snake/AiManager;->r:Ljava/util/Random;
    invoke-static {v11}, Lcom/wepie/snake/module/game/snake/AiManager;->access$200(Lcom/wepie/snake/module/game/snake/AiManager;)Ljava/util/Random;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v11, v12

    const/high16 v12, 0x447a0000    # 1000.0f

    div-float/2addr v11, v12

    add-float/2addr v11, v3

    iput v11, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->x:F

    .line 125
    iget-object v11, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->this$0:Lcom/wepie/snake/module/game/snake/AiManager;

    # getter for: Lcom/wepie/snake/module/game/snake/AiManager;->r:Ljava/util/Random;
    invoke-static {v11}, Lcom/wepie/snake/module/game/snake/AiManager;->access$200(Lcom/wepie/snake/module/game/snake/AiManager;)Ljava/util/Random;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v11, v12

    const/high16 v12, 0x447a0000    # 1000.0f

    div-float/2addr v11, v12

    sub-float v11, v4, v11

    iput v11, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->y:F

    .line 126
    iget v11, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->val$selfX:F

    iget v12, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->x:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->val$selfX:F

    iget v13, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->x:F

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->val$selfY:F

    iget v13, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->y:F

    sub-float/2addr v12, v13

    iget v13, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->val$selfY:F

    iget v14, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->y:F

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v0, v12

    .line 127
    iget v11, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->count:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->count:I

    goto :goto_0

    .line 129
    :cond_1
    return-void
.end method

.method private nearBorder(FFFF)Z
    .locals 3
    .param p1, "xleft"    # F
    .param p2, "xRight"    # F
    .param p3, "yTop"    # F
    .param p4, "yBottom"    # F

    .prologue
    .line 132
    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/wepie/snake/module/game/util/CoordUtil;->screenSize2GLSize(F)F

    move-result v0

    .line 133
    .local v0, "space":F
    iget v1, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->x:F

    add-float v2, p1, v0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->x:F

    sub-float v2, p2, v0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->y:F

    sub-float v2, p3, v0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->y:F

    add-float v2, p4, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 134
    :cond_0
    const/4 v1, 0x1

    .line 136
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 95
    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->this$0:Lcom/wepie/snake/module/game/snake/AiManager;

    # getter for: Lcom/wepie/snake/module/game/snake/AiManager;->reviveMeshUtil:Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;
    invoke-static {v1}, Lcom/wepie/snake/module/game/snake/AiManager;->access$000(Lcom/wepie/snake/module/game/snake/AiManager;)Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->reset()V

    .line 96
    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->this$0:Lcom/wepie/snake/module/game/snake/AiManager;

    # getter for: Lcom/wepie/snake/module/game/snake/AiManager;->reviveMeshUtil:Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;
    invoke-static {v1}, Lcom/wepie/snake/module/game/snake/AiManager;->access$000(Lcom/wepie/snake/module/game/snake/AiManager;)Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->val$tempArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->refreshMeshInfo(Ljava/util/ArrayList;)V

    .line 98
    invoke-direct {p0}, Lcom/wepie/snake/module/game/snake/AiManager$1;->getRandomXY()V

    .line 99
    iget v1, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->count:I

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lcom/wepie/snake/module/game/snake/AiManager$1;->getRandomXY()V

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->val$reviveSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget v2, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->x:F

    iget v3, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->y:F

    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->this$0:Lcom/wepie/snake/module/game/snake/AiManager;

    # invokes: Lcom/wepie/snake/module/game/snake/AiManager;->getRandomBodyLen()I
    invoke-static {v4}, Lcom/wepie/snake/module/game/snake/AiManager;->access$100(Lcom/wepie/snake/module/game/snake/AiManager;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/wepie/snake/module/game/snake/SnakeFactory;->getBodyPoints(Lcom/wepie/snake/module/game/snake/SnakeInfo;FFI)Ljava/util/ArrayList;

    move-result-object v0

    .line 102
    .local v0, "revivePoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/module/game/snake/PointInfo;>;"
    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->val$reviveSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v1, v1, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    invoke-virtual {v1, v0}, Lcom/wepie/snake/module/game/snake/BodyInfo;->addRevivePoints(Ljava/util/ArrayList;)V

    .line 103
    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/AiManager$1;->val$reviveSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v1, v1, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/wepie/snake/module/game/snake/SnakeStatus;->needRevive:Z

    .line 104
    return-void
.end method
