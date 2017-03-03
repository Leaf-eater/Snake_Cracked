.class public Lcom/wepie/snake/module/game/snake/SnakeFactory;
.super Ljava/lang/Object;
.source "SnakeFactory.java"


# static fields
.field static bigSnakeCount:I

.field static mediumSnakeCount:I

.field private static r:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/wepie/snake/module/game/snake/SnakeFactory;->r:Ljava/util/Random;

    .line 18
    sput v1, Lcom/wepie/snake/module/game/snake/SnakeFactory;->bigSnakeCount:I

    .line 19
    sput v1, Lcom/wepie/snake/module/game/snake/SnakeFactory;->mediumSnakeCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static creatSnakeSelf(Ljava/lang/String;I)Lcom/wepie/snake/module/game/snake/SnakeInfo;
    .locals 5
    .param p0, "nick"    # Ljava/lang/String;
    .param p1, "selfLen"    # I

    .prologue
    const/4 v4, 0x0

    .line 22
    invoke-static {}, Lcom/wepie/snake/helper/config/SkinConfig;->getInUserSkinId()I

    move-result v1

    .line 23
    .local v1, "skin_id_inuse":I
    invoke-static {v1}, Lcom/wepie/snake/module/game/skin/SkinManager;->getSkin(I)Lcom/wepie/snake/module/game/skin/SkinInfo;

    move-result-object v0

    .line 24
    .local v0, "skinInfo":Lcom/wepie/snake/module/game/skin/SkinInfo;
    new-instance v2, Lcom/wepie/snake/module/game/snake/SnakeInfo;

    invoke-direct {v2, p0, v0}, Lcom/wepie/snake/module/game/snake/SnakeInfo;-><init>(Ljava/lang/String;Lcom/wepie/snake/module/game/skin/SkinInfo;)V

    .line 25
    .local v2, "snakeInfo":Lcom/wepie/snake/module/game/snake/SnakeInfo;
    iget-object v3, v2, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    invoke-static {v2, v4, v4, p1}, Lcom/wepie/snake/module/game/snake/SnakeFactory;->getBodyPoints(Lcom/wepie/snake/module/game/snake/SnakeInfo;FFI)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wepie/snake/module/game/snake/BodyInfo;->initBodyPoints(Ljava/util/ArrayList;)V

    .line 26
    return-object v2
.end method

.method public static createSnakes(Lcom/wepie/snake/module/game/snake/SnakeInfo;)Ljava/util/ArrayList;
    .locals 18
    .param p0, "selfSnake"    # Lcom/wepie/snake/module/game/snake/SnakeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wepie/snake/module/game/snake/SnakeInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wepie/snake/module/game/snake/SnakeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v6, "snakeAis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/module/game/snake/SnakeInfo;>;"
    const/16 v7, 0x14

    .line 33
    .local v7, "snakeCount":I
    const/4 v15, 0x0

    sput v15, Lcom/wepie/snake/module/game/snake/SnakeFactory;->bigSnakeCount:I

    .line 34
    const/4 v15, 0x0

    sput v15, Lcom/wepie/snake/module/game/snake/SnakeFactory;->mediumSnakeCount:I

    .line 35
    const/high16 v15, 0x43960000    # 300.0f

    invoke-static {v15}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v15

    int-to-float v15, v15

    invoke-static {v15}, Lcom/wepie/snake/module/game/util/CoordUtil;->screenSize2GLSize(F)F

    move-result v11

    .line 36
    .local v11, "warnDis":F
    const/high16 v15, 0x43960000    # 300.0f

    invoke-static {v15}, Lcom/wepie/snake/module/game/util/CoordUtil;->screenSize2GLSize(F)F

    move-result v12

    .line 37
    .local v12, "warnY":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    iget v9, v15, Lcom/wepie/snake/module/game/snake/BodyInfo;->initX:F

    .line 38
    .local v9, "sx":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    iget v10, v15, Lcom/wepie/snake/module/game/snake/BodyInfo;->initY:F

    .line 40
    .local v10, "sy":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v7, :cond_2

    .line 41
    invoke-static {}, Lcom/wepie/snake/module/game/snake/SnakeFactory;->getRandomHeadX()F

    move-result v13

    .line 42
    .local v13, "x":F
    invoke-static {}, Lcom/wepie/snake/module/game/snake/SnakeFactory;->getRandomHeadY()F

    move-result v14

    .line 43
    .local v14, "y":F
    sub-float v15, v9, v13

    sub-float v16, v10, v13

    mul-float v15, v15, v16

    sub-float v16, v10, v14

    sub-float v17, v9, v14

    mul-float v16, v16, v17

    add-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v3, v0

    .line 44
    .local v3, "dis":F
    :goto_1
    cmpg-float v15, v3, v11

    if-ltz v15, :cond_0

    sub-float v15, v14, v10

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpg-float v15, v15, v12

    if-gez v15, :cond_1

    .line 45
    :cond_0
    invoke-static {}, Lcom/wepie/snake/module/game/snake/SnakeFactory;->getRandomHeadX()F

    move-result v13

    .line 46
    invoke-static {}, Lcom/wepie/snake/module/game/snake/SnakeFactory;->getRandomHeadY()F

    move-result v14

    .line 47
    sub-float v15, v9, v13

    sub-float v16, v10, v13

    mul-float v15, v15, v16

    sub-float v16, v10, v14

    sub-float v17, v9, v14

    mul-float v16, v16, v17

    add-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v3, v0

    goto :goto_1

    .line 50
    :cond_1
    sget-object v15, Lcom/wepie/snake/module/game/snake/SnakeFactory;->r:Ljava/util/Random;

    const/16 v16, 0x168

    invoke-virtual/range {v15 .. v16}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v2, v0

    .line 51
    .local v2, "direction":F
    new-instance v8, Lcom/wepie/snake/module/game/snake/SnakeInfo;

    invoke-static {}, Lcom/wepie/snake/module/game/nick/NickConfig;->getRandomNick()Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/wepie/snake/module/game/skin/SkinManager;->getRandomSkin()Lcom/wepie/snake/module/game/skin/SkinInfo;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v8, v15, v0}, Lcom/wepie/snake/module/game/snake/SnakeInfo;-><init>(Ljava/lang/String;Lcom/wepie/snake/module/game/skin/SkinInfo;)V

    .line 52
    .local v8, "snakeInfo":Lcom/wepie/snake/module/game/snake/SnakeInfo;
    invoke-static {}, Lcom/wepie/snake/module/game/snake/SnakeFactory;->getRandomBodyLen()I

    move-result v15

    invoke-static {v8, v13, v14, v15}, Lcom/wepie/snake/module/game/snake/SnakeFactory;->getBodyPoints(Lcom/wepie/snake/module/game/snake/SnakeInfo;FFI)Ljava/util/ArrayList;

    move-result-object v5

    .line 53
    .local v5, "pointArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/module/game/snake/PointInfo;>;"
    iget-object v15, v8, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    invoke-virtual {v15, v5}, Lcom/wepie/snake/module/game/snake/BodyInfo;->initBodyPoints(Ljava/util/ArrayList;)V

    .line 54
    const/4 v15, 0x1

    iput-boolean v15, v8, Lcom/wepie/snake/module/game/snake/SnakeInfo;->isSnakeAi:Z

    .line 55
    iget-object v15, v8, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    iput v2, v15, Lcom/wepie/snake/module/game/snake/MoveInfo;->cur_direction:F

    .line 56
    iget-object v15, v8, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    iput v2, v15, Lcom/wepie/snake/module/game/snake/MoveInfo;->target_rad:F

    .line 57
    iget-object v15, v8, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    const/16 v16, 0x3c

    move/from16 v0, v16

    iput v0, v15, Lcom/wepie/snake/module/game/snake/SnakeStatus;->superFrameCount:I

    .line 59
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 61
    .end local v2    # "direction":F
    .end local v3    # "dis":F
    .end local v5    # "pointArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/module/game/snake/PointInfo;>;"
    .end local v8    # "snakeInfo":Lcom/wepie/snake/module/game/snake/SnakeInfo;
    .end local v13    # "x":F
    .end local v14    # "y":F
    :cond_2
    return-object v6
.end method

.method public static getBodyPoints(Lcom/wepie/snake/module/game/snake/SnakeInfo;FFI)Ljava/util/ArrayList;
    .locals 12
    .param p0, "snakeInfo"    # Lcom/wepie/snake/module/game/snake/SnakeInfo;
    .param p1, "firstx"    # F
    .param p2, "firsty"    # F
    .param p3, "bodyCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wepie/snake/module/game/snake/SnakeInfo;",
            "FFI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wepie/snake/module/game/snake/PointInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 86
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v3, "pointArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/module/game/snake/PointInfo;>;"
    sget v5, Lcom/wepie/snake/module/game/snake/GameConfig;->PER_NODE_POINT_COUNT:I

    .line 89
    .local v5, "step":I
    mul-int v4, p3, v5

    .line 91
    .local v4, "size":I
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    .line 92
    .local v0, "bodyInfo":Lcom/wepie/snake/module/game/snake/BodyInfo;
    invoke-virtual {v0}, Lcom/wepie/snake/module/game/snake/BodyInfo;->clearZorder()V

    .line 93
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 94
    int-to-float v8, v1

    sget v9, Lcom/wepie/snake/module/game/snake/SnakeInfo;->point_space:F

    mul-float/2addr v8, v9

    invoke-static {v8}, Lcom/wepie/snake/module/game/util/CoordUtil;->screenSize2GLSize(F)F

    move-result v8

    add-float v6, p1, v8

    .line 95
    .local v6, "x":F
    add-float v7, p2, v11

    .line 96
    .local v7, "y":F
    new-instance v2, Lcom/wepie/snake/module/game/snake/PointInfo;

    invoke-direct {v2}, Lcom/wepie/snake/module/game/snake/PointInfo;-><init>()V

    .line 97
    .local v2, "point":Lcom/wepie/snake/module/game/snake/PointInfo;
    iput v6, v2, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    .line 98
    iput v7, v2, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    .line 99
    iget v8, v0, Lcom/wepie/snake/module/game/snake/BodyInfo;->bodyGlWith:F

    iget v9, v2, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    iget v10, v2, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    invoke-virtual {v2, v8, v9, v10, v11}, Lcom/wepie/snake/module/game/snake/PointInfo;->setPointsByDirection(FFFF)V

    .line 100
    iput-object p0, v2, Lcom/wepie/snake/module/game/snake/PointInfo;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    .line 101
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    rem-int v8, v1, v5

    if-nez v8, :cond_0

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/snake/BodyInfo;->addZorder()V

    .line 93
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v2    # "point":Lcom/wepie/snake/module/game/snake/PointInfo;
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_1
    return-object v3
.end method

.method private static getInitBigSnakeBodyLen()I
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/wepie/snake/module/game/snake/SnakeFactory;->r:Ljava/util/Random;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method private static getInitMediumSnakeBodyLen()I
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/wepie/snake/module/game/snake/SnakeFactory;->r:Ljava/util/Random;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private static getRandomBodyLen()I
    .locals 4

    .prologue
    const/4 v1, 0x5

    const/4 v3, 0x3

    .line 65
    sget-object v2, Lcom/wepie/snake/module/game/snake/SnakeFactory;->r:Ljava/util/Random;

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 66
    .local v0, "snakeType":I
    if-nez v0, :cond_1

    sget v2, Lcom/wepie/snake/module/game/snake/SnakeFactory;->bigSnakeCount:I

    if-ge v2, v3, :cond_1

    .line 67
    sget v1, Lcom/wepie/snake/module/game/snake/SnakeFactory;->bigSnakeCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/wepie/snake/module/game/snake/SnakeFactory;->bigSnakeCount:I

    .line 68
    invoke-static {}, Lcom/wepie/snake/module/game/snake/SnakeFactory;->getInitBigSnakeBodyLen()I

    move-result v1

    .line 73
    :cond_0
    :goto_0
    return v1

    .line 69
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget v2, Lcom/wepie/snake/module/game/snake/SnakeFactory;->mediumSnakeCount:I

    if-ge v2, v1, :cond_0

    .line 70
    sget v1, Lcom/wepie/snake/module/game/snake/SnakeFactory;->mediumSnakeCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/wepie/snake/module/game/snake/SnakeFactory;->mediumSnakeCount:I

    .line 71
    invoke-static {}, Lcom/wepie/snake/module/game/snake/SnakeFactory;->getInitMediumSnakeBodyLen()I

    move-result v1

    goto :goto_0
.end method

.method public static getRandomHeadX()F
    .locals 5

    .prologue
    .line 110
    invoke-static {}, Lcom/wepie/snake/module/game/util/ScreenUtil;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/wepie/snake/module/game/snake/GameConfig;->MAP_WIDTH:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-static {v4}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v4

    sub-int v1, v3, v4

    .line 111
    .local v1, "mpw":I
    sget-object v3, Lcom/wepie/snake/module/game/snake/SnakeFactory;->r:Ljava/util/Random;

    div-int/lit8 v4, v1, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v2, v3, -0x64

    .line 112
    .local v2, "x":I
    sget-object v3, Lcom/wepie/snake/module/game/snake/SnakeFactory;->r:Ljava/util/Random;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, -0x1

    .line 113
    .local v0, "dirX":I
    :goto_0
    mul-int v3, v2, v0

    int-to-float v3, v3

    invoke-static {v3}, Lcom/wepie/snake/module/game/util/CoordUtil;->screenSize2GLSize(F)F

    move-result v3

    return v3

    .line 112
    .end local v0    # "dirX":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getRandomHeadY()F
    .locals 5

    .prologue
    .line 117
    invoke-static {}, Lcom/wepie/snake/module/game/util/ScreenUtil;->getScreenHeight()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/wepie/snake/module/game/snake/GameConfig;->MAP_HEIGHT:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-static {v4}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v4

    sub-int v1, v3, v4

    .line 118
    .local v1, "mph":I
    sget-object v3, Lcom/wepie/snake/module/game/snake/SnakeFactory;->r:Ljava/util/Random;

    div-int/lit8 v4, v1, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 119
    .local v2, "y":I
    sget-object v3, Lcom/wepie/snake/module/game/snake/SnakeFactory;->r:Ljava/util/Random;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, -0x1

    .line 120
    .local v0, "dirY":I
    :goto_0
    mul-int v3, v2, v0

    int-to-float v3, v3

    invoke-static {v3}, Lcom/wepie/snake/module/game/util/CoordUtil;->screenSize2GLSize(F)F

    move-result v3

    return v3

    .line 119
    .end local v0    # "dirY":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
