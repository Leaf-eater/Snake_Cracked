.class public Lcom/wepie/snake/module/game/snake/SnakeInfo;
.super Ljava/lang/Object;
.source "SnakeInfo.java"


# static fields
.field private static final CACHE_V_COUNT:I = 0x1f4

.field public static point_space:F


# instance fields
.field public bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

.field private bodyNode:Lcom/wepie/snake/module/game/main/MultiNode;

.field private halfVisualAngle:F

.field public isSnakeAi:Z

.field public moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

.field public name:Ljava/lang/String;

.field private nickH:F

.field private nickW:F

.field public skinInfo:Lcom/wepie/snake/module/game/skin/SkinInfo;

.field public snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

.field private visualDegree:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    sget v0, Lcom/wepie/snake/module/game/snake/GameConfig;->DEFAULT_BODY_RADIUS:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    sget v1, Lcom/wepie/snake/module/game/snake/GameConfig;->PER_NODE_POINT_COUNT:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    sput v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->point_space:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/wepie/snake/module/game/skin/SkinInfo;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "skinInfo"    # Lcom/wepie/snake/module/game/skin/SkinInfo;

    .prologue
    const/4 v4, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v4, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->isSnakeAi:Z

    .line 25
    const-string v2, ""

    iput-object v2, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->name:Ljava/lang/String;

    .line 143
    const/16 v2, 0x2d

    iput v2, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->visualDegree:I

    .line 144
    iget v2, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->visualDegree:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->halfVisualAngle:F

    .line 30
    iput-object p2, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->skinInfo:Lcom/wepie/snake/module/game/skin/SkinInfo;

    .line 31
    iput-object p1, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->name:Ljava/lang/String;

    .line 32
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    const-string v2, "snake"

    iput-object v2, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->name:Ljava/lang/String;

    .line 35
    :cond_0
    new-instance v2, Lcom/wepie/snake/module/game/main/MultiNode;

    const/16 v3, 0x1f4

    invoke-direct {v2, v3}, Lcom/wepie/snake/module/game/main/MultiNode;-><init>(I)V

    iput-object v2, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyNode:Lcom/wepie/snake/module/game/main/MultiNode;

    .line 36
    new-instance v2, Lcom/wepie/snake/module/game/snake/MoveInfo;

    invoke-direct {v2}, Lcom/wepie/snake/module/game/snake/MoveInfo;-><init>()V

    iput-object v2, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    .line 37
    new-instance v2, Lcom/wepie/snake/module/game/snake/BodyInfo;

    invoke-direct {v2, p0}, Lcom/wepie/snake/module/game/snake/BodyInfo;-><init>(Lcom/wepie/snake/module/game/snake/SnakeInfo;)V

    iput-object v2, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    .line 39
    new-instance v2, Lcom/wepie/snake/module/game/snake/SnakeStatus;

    invoke-direct {v2}, Lcom/wepie/snake/module/game/snake/SnakeStatus;-><init>()V

    iput-object v2, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    .line 41
    invoke-virtual {p2, p1}, Lcom/wepie/snake/module/game/skin/SkinInfo;->getSkinTextures(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    .line 42
    .local v1, "textures":[Ljava/lang/Object;
    aget-object v0, v1, v4

    check-cast v0, Landroid/graphics/Bitmap;

    .line 43
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/wepie/snake/module/game/util/CoordUtil;->screenSize2GLSize(F)F

    move-result v2

    iput v2, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->nickW:F

    .line 44
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/wepie/snake/module/game/util/CoordUtil;->screenSize2GLSize(F)F

    move-result v2

    iput v2, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->nickH:F

    .line 46
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyNode:Lcom/wepie/snake/module/game/main/MultiNode;

    invoke-virtual {v2, v1}, Lcom/wepie/snake/module/game/main/MultiNode;->initTextures([Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method private addFood(Lcom/wepie/snake/module/game/food/FoodFactory;)V
    .locals 4
    .param p1, "foodFactory"    # Lcom/wepie/snake/module/game/food/FoodFactory;

    .prologue
    .line 137
    iget-object v3, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    invoke-virtual {v3}, Lcom/wepie/snake/module/game/snake/BodyInfo;->getTailPoint()Lcom/wepie/snake/module/game/snake/PointInfo;

    move-result-object v0

    .line 138
    .local v0, "foodPos":Lcom/wepie/snake/module/game/snake/PointInfo;
    iget v1, v0, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    .line 139
    .local v1, "rx":F
    iget v2, v0, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    .line 140
    .local v2, "ry":F
    iget-object v3, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->skinInfo:Lcom/wepie/snake/module/game/skin/SkinInfo;

    iget v3, v3, Lcom/wepie/snake/module/game/skin/SkinInfo;->drop_id:I

    invoke-virtual {p1, v1, v2, v3}, Lcom/wepie/snake/module/game/food/FoodFactory;->addFood(FFI)V

    .line 141
    return-void
.end method

.method private addNode()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/snake/BodyInfo;->addNode()V

    .line 130
    return-void
.end method

.method private removeNode()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/snake/BodyInfo;->removeNode()V

    .line 134
    return-void
.end method


# virtual methods
.method public doDie()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/snake/SnakeStatus;->doDie()V

    .line 122
    return-void
.end method

.method public doEatFood()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    invoke-virtual {v1}, Lcom/wepie/snake/module/game/snake/BodyInfo;->getBodyCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/game/snake/SnakeStatus;->eatFood2Increase(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/wepie/snake/module/game/snake/SnakeInfo;->addNode()V

    .line 112
    :cond_0
    return-void
.end method

.method public doEatWreck()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    invoke-virtual {v1}, Lcom/wepie/snake/module/game/snake/BodyInfo;->getBodyCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/game/snake/SnakeStatus;->eatWreck2Increase(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/wepie/snake/module/game/snake/SnakeInfo;->addNode()V

    .line 118
    :cond_0
    return-void
.end method

.method public doMove(Lcom/wepie/snake/module/game/food/FoodFactory;)V
    .locals 6
    .param p1, "foodFactory"    # Lcom/wepie/snake/module/game/food/FoodFactory;

    .prologue
    .line 96
    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    iget-boolean v1, v1, Lcom/wepie/snake/module/game/snake/SnakeStatus;->isAlive:Z

    if-nez v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    sget v2, Lcom/wepie/snake/module/game/snake/SnakeInfo;->point_space:F

    invoke-virtual {v1, v2}, Lcom/wepie/snake/module/game/snake/MoveInfo;->moveByDirection(F)V

    .line 98
    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    iget v2, v2, Lcom/wepie/snake/module/game/snake/MoveInfo;->dx:F

    iget-object v3, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    iget v3, v3, Lcom/wepie/snake/module/game/snake/MoveInfo;->dy:F

    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    iget v4, v4, Lcom/wepie/snake/module/game/snake/SnakeStatus;->speedRate:I

    iget-object v5, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    iget v5, v5, Lcom/wepie/snake/module/game/snake/MoveInfo;->cur_direction:F

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/wepie/snake/module/game/snake/BodyInfo;->moveBody(FFIF)V

    .line 100
    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    invoke-virtual {v2}, Lcom/wepie/snake/module/game/snake/BodyInfo;->getBodyCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wepie/snake/module/game/snake/SnakeStatus;->updateMoveStatus(I)I

    move-result v0

    .line 101
    .local v0, "code":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 102
    invoke-direct {p0, p1}, Lcom/wepie/snake/module/game/snake/SnakeInfo;->addFood(Lcom/wepie/snake/module/game/food/FoodFactory;)V

    goto :goto_0

    .line 103
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/wepie/snake/module/game/snake/SnakeInfo;->removeNode()V

    goto :goto_0
.end method

.method public drawSelf()V
    .locals 24

    .prologue
    .line 50
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    iget-boolean v3, v3, Lcom/wepie/snake/module/game/snake/SnakeStatus;->isAlive:Z

    if-nez v3, :cond_0

    .line 51
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    const/4 v6, 0x0

    iput v6, v3, Lcom/wepie/snake/module/game/snake/MoveInfo;->dx:F

    .line 52
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    const/4 v6, 0x0

    iput v6, v3, Lcom/wepie/snake/module/game/snake/MoveInfo;->dy:F

    .line 93
    :goto_0
    return-void

    .line 56
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    iget v0, v3, Lcom/wepie/snake/module/game/snake/BodyInfo;->bodyGlWith:F

    move/from16 v18, v0

    .line 57
    .local v18, "bodyGlWith":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    invoke-virtual {v3}, Lcom/wepie/snake/module/game/snake/BodyInfo;->getBodyCount()I

    move-result v3

    add-int/lit8 v17, v3, -0x1

    .line 58
    .local v17, "bodyCount":I
    add-int/lit8 v3, v17, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v20, v3, 0x1

    .line 59
    .local v20, "nodeCount":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyNode:Lcom/wepie/snake/module/game/main/MultiNode;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/wepie/snake/module/game/main/MultiNode;->getVertexArray(I)[F

    move-result-object v2

    .line 63
    .local v2, "vertexArray":[F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    invoke-virtual {v3}, Lcom/wepie/snake/module/game/snake/BodyInfo;->getTailPoint()Lcom/wepie/snake/module/game/snake/PointInfo;

    move-result-object v21

    .line 64
    .local v21, "tailPoint":Lcom/wepie/snake/module/game/snake/PointInfo;
    move-object/from16 v0, v21

    iget v3, v0, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    float-to-double v6, v3

    const v3, 0x3f666666    # 0.9f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->skinInfo:Lcom/wepie/snake/module/game/skin/SkinInfo;

    iget v10, v10, Lcom/wepie/snake/module/game/skin/SkinInfo;->tailRateH:F

    add-float/2addr v3, v10

    mul-float v3, v3, v18

    float-to-double v10, v3

    move-object/from16 v0, v21

    iget v3, v0, Lcom/wepie/snake/module/game/snake/PointInfo;->direction:F

    float-to-double v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v10, v14

    sub-double/2addr v6, v10

    double-to-float v4, v6

    .line 65
    .local v4, "tx":F
    move-object/from16 v0, v21

    iget v3, v0, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    float-to-double v6, v3

    const v3, 0x3f666666    # 0.9f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->skinInfo:Lcom/wepie/snake/module/game/skin/SkinInfo;

    iget v10, v10, Lcom/wepie/snake/module/game/skin/SkinInfo;->tailRateH:F

    add-float/2addr v3, v10

    mul-float v3, v3, v18

    float-to-double v10, v3

    move-object/from16 v0, v21

    iget v3, v0, Lcom/wepie/snake/module/game/snake/PointInfo;->direction:F

    float-to-double v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v10, v14

    sub-double/2addr v6, v10

    double-to-float v5, v6

    .line 67
    .local v5, "ty":F
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->skinInfo:Lcom/wepie/snake/module/game/skin/SkinInfo;

    iget v6, v6, Lcom/wepie/snake/module/game/skin/SkinInfo;->tailRateW:F

    mul-float v6, v6, v18

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->skinInfo:Lcom/wepie/snake/module/game/skin/SkinInfo;

    iget v7, v7, Lcom/wepie/snake/module/game/skin/SkinInfo;->tailRateH:F

    mul-float v7, v7, v18

    move-object/from16 v0, v21

    iget v8, v0, Lcom/wepie/snake/module/game/snake/PointInfo;->direction:F

    const/high16 v9, 0x40400000    # 3.0f

    invoke-static/range {v2 .. v9}, Lcom/wepie/snake/module/game/snake/BaseVertexInfo;->updateVertexByDirection([FIFFFFFF)V

    .line 71
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    const/16 v6, 0x12

    invoke-virtual {v3, v2, v6}, Lcom/wepie/snake/module/game/snake/BodyInfo;->refreshVertexArray([FI)V

    .line 74
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    invoke-virtual {v3}, Lcom/wepie/snake/module/game/snake/BodyInfo;->getHeadPoint()Lcom/wepie/snake/module/game/snake/PointInfo;

    move-result-object v19

    .line 75
    .local v19, "headPoint":Lcom/wepie/snake/module/game/snake/PointInfo;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    move/from16 v22, v0

    .line 76
    .local v22, "x":F
    move-object/from16 v0, v19

    iget v0, v0, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    move/from16 v23, v0

    .line 79
    .local v23, "y":F
    move/from16 v0, v22

    float-to-double v6, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->skinInfo:Lcom/wepie/snake/module/game/skin/SkinInfo;

    iget v3, v3, Lcom/wepie/snake/module/game/skin/SkinInfo;->headOffset:F

    mul-float v3, v3, v18

    float-to-double v10, v3

    move-object/from16 v0, v19

    iget v3, v0, Lcom/wepie/snake/module/game/snake/PointInfo;->direction:F

    float-to-double v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v10, v14

    add-double/2addr v6, v10

    double-to-float v8, v6

    .line 80
    .local v8, "hx":F
    move/from16 v0, v23

    float-to-double v6, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->skinInfo:Lcom/wepie/snake/module/game/skin/SkinInfo;

    iget v3, v3, Lcom/wepie/snake/module/game/skin/SkinInfo;->headOffset:F

    mul-float v3, v3, v18

    float-to-double v10, v3

    move-object/from16 v0, v19

    iget v3, v0, Lcom/wepie/snake/module/game/snake/PointInfo;->direction:F

    float-to-double v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v10, v14

    add-double/2addr v6, v10

    double-to-float v9, v6

    .line 82
    .local v9, "hy":F
    mul-int/lit8 v3, v17, 0x12

    add-int/lit8 v7, v3, 0x12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->skinInfo:Lcom/wepie/snake/module/game/skin/SkinInfo;

    iget v3, v3, Lcom/wepie/snake/module/game/skin/SkinInfo;->headRateW:F

    mul-float v10, v18, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->skinInfo:Lcom/wepie/snake/module/game/skin/SkinInfo;

    iget v3, v3, Lcom/wepie/snake/module/game/skin/SkinInfo;->headRateH:F

    mul-float v11, v18, v3

    move-object/from16 v0, v19

    iget v12, v0, Lcom/wepie/snake/module/game/snake/PointInfo;->direction:F

    const/high16 v13, 0x40000000    # 2.0f

    move-object v6, v2

    invoke-static/range {v6 .. v13}, Lcom/wepie/snake/module/game/snake/BaseVertexInfo;->updateVertexByDirection([FIFFFFFF)V

    .line 86
    move/from16 v12, v22

    .line 87
    .local v12, "nickx":F
    const/high16 v3, 0x40200000    # 2.5f

    mul-float v3, v3, v18

    add-float v13, v23, v3

    .line 88
    .local v13, "nicky":F
    mul-int/lit8 v3, v17, 0x12

    add-int/lit8 v11, v3, 0x24

    move-object/from16 v0, p0

    iget v14, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->nickW:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->nickH:F

    const/high16 v16, 0x3f800000    # 1.0f

    move-object v10, v2

    invoke-static/range {v10 .. v16}, Lcom/wepie/snake/module/game/snake/BaseVertexInfo;->updateVertexBySize([FIFFFFF)V

    .line 90
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyNode:Lcom/wepie/snake/module/game/main/MultiNode;

    invoke-virtual {v3}, Lcom/wepie/snake/module/game/main/MultiNode;->refreshVertexBuffer()V

    .line 91
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyNode:Lcom/wepie/snake/module/game/main/MultiNode;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->skinInfo:Lcom/wepie/snake/module/game/skin/SkinInfo;

    iget v6, v6, Lcom/wepie/snake/module/game/skin/SkinInfo;->render_tag:F

    invoke-virtual {v3, v6}, Lcom/wepie/snake/module/game/main/MultiNode;->drawSelf(F)V

    goto/16 :goto_0
.end method

.method public getLength()I
    .locals 7

    .prologue
    .line 161
    iget-object v5, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    invoke-virtual {v5}, Lcom/wepie/snake/module/game/snake/BodyInfo;->getBodyCount()I

    move-result v0

    .line 162
    .local v0, "bodyCount":I
    div-int/lit16 v4, v0, 0xfa

    .line 163
    .local v4, "step":I
    mul-int/lit16 v5, v4, 0x5dc

    add-int/lit8 v6, v4, 0x1

    mul-int/2addr v5, v6

    div-int/lit8 v3, v5, 0x2

    .line 164
    .local v3, "prefStepLen":I
    mul-int/lit16 v5, v4, 0xfa

    sub-int v5, v0, v5

    iget-object v6, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    invoke-virtual {v6, v0}, Lcom/wepie/snake/module/game/snake/SnakeStatus;->getFoodCountForIncreaseNode(I)I

    move-result v6

    mul-int v1, v5, v6

    .line 165
    .local v1, "curStepLen":I
    add-int v5, v3, v1

    iget-object v6, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    iget v6, v6, Lcom/wepie/snake/module/game/snake/SnakeStatus;->foodCount:I

    add-int v2, v5, v6

    .line 166
    .local v2, "len":I
    return v2
.end method

.method public isPointVisual(FF)Z
    .locals 12
    .param p1, "px"    # F
    .param p2, "py"    # F

    .prologue
    const/4 v8, 0x0

    .line 146
    iget-object v9, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    iget-boolean v9, v9, Lcom/wepie/snake/module/game/snake/SnakeStatus;->isAlive:Z

    if-nez v9, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v8

    .line 147
    :cond_1
    iget-object v9, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    iget-object v9, v9, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wepie/snake/module/game/snake/PointInfo;

    .line 148
    .local v2, "pointInfo":Lcom/wepie/snake/module/game/snake/PointInfo;
    iget v6, v2, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    .line 149
    .local v6, "x":F
    iget v7, v2, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    .line 151
    .local v7, "y":F
    iget-object v9, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    iget v9, v9, Lcom/wepie/snake/module/game/snake/MoveInfo;->cur_direction:F

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v0, v10

    .line 152
    .local v0, "curVectorX":F
    iget-object v9, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    iget v9, v9, Lcom/wepie/snake/module/game/snake/MoveInfo;->cur_direction:F

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v1, v10

    .line 154
    .local v1, "curVectorY":F
    sub-float v4, p1, v6

    .line 155
    .local v4, "targetVectorX":F
    sub-float v5, p2, v7

    .line 156
    .local v5, "targetVectorY":F
    invoke-static {v4, v5, v0, v1}, Lcom/wepie/snake/module/game/util/CoordUtil;->getVectorRadians(FFFF)F

    move-result v3

    .line 157
    .local v3, "targetAndCurDirectionAngle":F
    iget v9, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->halfVisualAngle:F

    cmpg-float v9, v3, v9

    if-gez v9, :cond_0

    const/4 v8, 0x1

    goto :goto_0
.end method

.method public speedUp()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    invoke-virtual {v1}, Lcom/wepie/snake/module/game/snake/BodyInfo;->getBodyCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/game/snake/SnakeStatus;->speedUp(I)V

    .line 126
    return-void
.end method
