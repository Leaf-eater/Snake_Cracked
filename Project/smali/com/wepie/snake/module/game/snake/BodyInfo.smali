.class public Lcom/wepie/snake/module/game/snake/BodyInfo;
.super Ljava/lang/Object;
.source "BodyInfo.java"


# static fields
.field private static final BODY_GL_WIDTH_DEFAULT:F

.field private static final BODY_GL_WIDTH_MAX:F

.field private static final BODY_SCALE_RATE:F

.field private static final MAP_SCALE_RATE:F = 9.6153846E-5f


# instance fields
.field public bodyGlWith:F

.field public bodyTypeCount:I

.field public initX:F

.field public initY:F

.field private movePoint0:Lcom/wepie/snake/module/game/snake/PointInfo;

.field private movePoint1:Lcom/wepie/snake/module/game/snake/PointInfo;

.field public pointArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wepie/snake/module/game/snake/PointInfo;",
            ">;"
        }
    .end annotation
.end field

.field public reviveArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wepie/snake/module/game/snake/PointInfo;",
            ">;"
        }
    .end annotation
.end field

.field private snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;

.field public zIndex:I

.field public zOrderArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    sget v0, Lcom/wepie/snake/module/game/snake/GameConfig;->DEFAULT_BODY_RADIUS:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/CoordUtil;->screenSize2GLSize(F)F

    move-result v0

    sput v0, Lcom/wepie/snake/module/game/snake/BodyInfo;->BODY_GL_WIDTH_DEFAULT:F

    .line 21
    sget v0, Lcom/wepie/snake/module/game/snake/GameConfig;->MAX_BODY_RADIUS:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/CoordUtil;->screenSize2GLSize(F)F

    move-result v0

    sput v0, Lcom/wepie/snake/module/game/snake/BodyInfo;->BODY_GL_WIDTH_MAX:F

    .line 22
    sget v0, Lcom/wepie/snake/module/game/snake/GameConfig;->MAX_BODY_RADIUS:I

    sget v1, Lcom/wepie/snake/module/game/snake/GameConfig;->DEFAULT_BODY_RADIUS:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 23
    invoke-static {v0}, Lcom/wepie/snake/module/game/util/CoordUtil;->screenSize2GLSize(F)F

    move-result v0

    const v1, 0x45a28000    # 5200.0f

    div-float/2addr v0, v1

    sput v0, Lcom/wepie/snake/module/game/snake/BodyInfo;->BODY_SCALE_RATE:F

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/wepie/snake/module/game/snake/SnakeInfo;)V
    .locals 2
    .param p1, "snakeInfo"    # Lcom/wepie/snake/module/game/snake/SnakeInfo;

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->zOrderArray:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->reviveArray:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Lcom/wepie/snake/module/game/snake/PointInfo;

    invoke-direct {v0}, Lcom/wepie/snake/module/game/snake/PointInfo;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->movePoint0:Lcom/wepie/snake/module/game/snake/PointInfo;

    .line 18
    new-instance v0, Lcom/wepie/snake/module/game/snake/PointInfo;

    invoke-direct {v0}, Lcom/wepie/snake/module/game/snake/PointInfo;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->movePoint1:Lcom/wepie/snake/module/game/snake/PointInfo;

    .line 27
    sget v0, Lcom/wepie/snake/module/game/snake/BodyInfo;->BODY_GL_WIDTH_DEFAULT:F

    iput v0, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->bodyGlWith:F

    .line 30
    iput v1, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->initX:F

    .line 31
    iput v1, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->initY:F

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->zIndex:I

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->bodyTypeCount:I

    .line 37
    invoke-direct {p0, p1}, Lcom/wepie/snake/module/game/snake/BodyInfo;->bindSnake(Lcom/wepie/snake/module/game/snake/SnakeInfo;)V

    .line 38
    return-void
.end method

.method private bindSnake(Lcom/wepie/snake/module/game/snake/SnakeInfo;)V
    .locals 2
    .param p1, "snakeInfo"    # Lcom/wepie/snake/module/game/snake/SnakeInfo;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    .line 47
    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->movePoint0:Lcom/wepie/snake/module/game/snake/PointInfo;

    iput-object p1, v1, Lcom/wepie/snake/module/game/snake/PointInfo;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    .line 48
    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->movePoint1:Lcom/wepie/snake/module/game/snake/PointInfo;

    iput-object p1, v1, Lcom/wepie/snake/module/game/snake/PointInfo;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    .line 50
    iget-object v0, p1, Lcom/wepie/snake/module/game/snake/SnakeInfo;->skinInfo:Lcom/wepie/snake/module/game/skin/SkinInfo;

    .line 51
    .local v0, "skinInfo":Lcom/wepie/snake/module/game/skin/SkinInfo;
    iget v1, v0, Lcom/wepie/snake/module/game/skin/SkinInfo;->bodyTypeCount:I

    iput v1, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->bodyTypeCount:I

    .line 52
    return-void
.end method

.method private nextZIndex()V
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->zIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->zIndex:I

    .line 135
    iget v0, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->zIndex:I

    iget v1, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->bodyTypeCount:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->zIndex:I

    .line 136
    :cond_0
    return-void
.end method

.method private refreshMapScaleFactor(I)V
    .locals 4
    .param p1, "length"    # I

    .prologue
    .line 167
    const v1, 0x3f8012ae    # 1.00057f

    int-to-float v2, p1

    const v3, 0x38c9a634

    mul-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 168
    .local v0, "result":F
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    .line 169
    :cond_0
    sput v0, Lcom/wepie/snake/module/game/snake/GameConfig;->factor:F

    .line 170
    return-void
.end method


# virtual methods
.method public addNode()V
    .locals 14

    .prologue
    .line 106
    iget-object v10, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x2

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wepie/snake/module/game/snake/PointInfo;

    .line 107
    .local v3, "lastPoint0":Lcom/wepie/snake/module/game/snake/PointInfo;
    iget-object v10, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wepie/snake/module/game/snake/PointInfo;

    .line 108
    .local v4, "lastPoint1":Lcom/wepie/snake/module/game/snake/PointInfo;
    iget v6, v3, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    .line 109
    .local v6, "x0":F
    iget v8, v3, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    .line 110
    .local v8, "y0":F
    iget v7, v4, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    .line 111
    .local v7, "x1":F
    iget v9, v4, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    .line 112
    .local v9, "y1":F
    sub-float v0, v7, v6

    .line 113
    .local v0, "dx":F
    sub-float v1, v9, v8

    .line 115
    .local v1, "dy":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v10, Lcom/wepie/snake/module/game/snake/GameConfig;->PER_NODE_POINT_COUNT:I

    if-ge v2, v10, :cond_0

    .line 116
    new-instance v5, Lcom/wepie/snake/module/game/snake/PointInfo;

    invoke-direct {v5}, Lcom/wepie/snake/module/game/snake/PointInfo;-><init>()V

    .line 117
    .local v5, "newPoint":Lcom/wepie/snake/module/game/snake/PointInfo;
    int-to-float v10, v2

    mul-float/2addr v10, v0

    add-float/2addr v10, v7

    iput v10, v5, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    .line 118
    int-to-float v10, v2

    mul-float/2addr v10, v1

    add-float/2addr v10, v9

    iput v10, v5, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    .line 119
    iget v10, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->bodyGlWith:F

    iget v11, v5, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    iget v12, v5, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    iget v13, v3, Lcom/wepie/snake/module/game/snake/PointInfo;->direction:F

    invoke-virtual {v5, v10, v11, v12, v13}, Lcom/wepie/snake/module/game/snake/PointInfo;->setPointsByDirection(FFFF)V

    .line 120
    iget-object v10, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iput-object v10, v5, Lcom/wepie/snake/module/game/snake/PointInfo;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    .line 121
    iget-object v10, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v5    # "newPoint":Lcom/wepie/snake/module/game/snake/PointInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/wepie/snake/module/game/snake/BodyInfo;->addZorder()V

    .line 125
    invoke-virtual {p0}, Lcom/wepie/snake/module/game/snake/BodyInfo;->refreshBodyWidth()V

    .line 126
    return-void
.end method

.method public addRevivePoints(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wepie/snake/module/game/snake/PointInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, "revivePoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/module/game/snake/PointInfo;>;"
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->reviveArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 296
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->reviveArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 297
    return-void
.end method

.method public addZorder()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->zOrderArray:Ljava/util/ArrayList;

    sget-object v1, Lcom/wepie/snake/module/game/skin/SkinInfo;->bodyZIndexArray:[I

    iget v2, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->zIndex:I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-direct {p0}, Lcom/wepie/snake/module/game/snake/BodyInfo;->nextZIndex()V

    .line 131
    return-void
.end method

.method public clearZorder()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->zOrderArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->zIndex:I

    .line 141
    return-void
.end method

.method public doRevive()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 301
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->reviveArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 302
    invoke-virtual {p0}, Lcom/wepie/snake/module/game/snake/BodyInfo;->refreshBodyWidth()V

    .line 303
    return-void
.end method

.method public getBodyCount()I
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/wepie/snake/module/game/snake/GameConfig;->PER_NODE_POINT_COUNT:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getHeadPoint()Lcom/wepie/snake/module/game/snake/PointInfo;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/module/game/snake/PointInfo;

    return-object v0
.end method

.method public getTailPoint()Lcom/wepie/snake/module/game/snake/PointInfo;
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lcom/wepie/snake/module/game/snake/GameConfig;->PER_NODE_POINT_COUNT:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/module/game/snake/PointInfo;

    return-object v0
.end method

.method public initBodyPoints(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wepie/snake/module/game/snake/PointInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/module/game/snake/PointInfo;>;"
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 42
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    return-void
.end method

.method public moveBody(FFIF)V
    .locals 9
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "speedRate"    # I
    .param p4, "dir"    # F

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 63
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wepie/snake/module/game/snake/PointInfo;

    .line 64
    .local v1, "pointInfo":Lcom/wepie/snake/module/game/snake/PointInfo;
    if-nez v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget v2, v1, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    .line 67
    .local v2, "x":F
    iget v3, v1, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    .line 68
    .local v3, "y":F
    const/4 v4, 0x1

    if-ne p3, v4, :cond_2

    .line 69
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->movePoint0:Lcom/wepie/snake/module/game/snake/PointInfo;

    add-float v5, v2, p1

    iput v5, v4, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    .line 70
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->movePoint0:Lcom/wepie/snake/module/game/snake/PointInfo;

    add-float v5, v3, p2

    iput v5, v4, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    .line 71
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->movePoint0:Lcom/wepie/snake/module/game/snake/PointInfo;

    invoke-virtual {v4, v8, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 72
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->movePoint0:Lcom/wepie/snake/module/game/snake/PointInfo;

    iget v5, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->bodyGlWith:F

    iget-object v6, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->movePoint0:Lcom/wepie/snake/module/game/snake/PointInfo;

    iget v6, v6, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    iget-object v7, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->movePoint0:Lcom/wepie/snake/module/game/snake/PointInfo;

    iget v7, v7, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    invoke-virtual {v4, v5, v6, v7, p4}, Lcom/wepie/snake/module/game/snake/PointInfo;->setPointsByDirection(FFFF)V

    .line 74
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 75
    .local v0, "lastIndex":I
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wepie/snake/module/game/snake/PointInfo;

    iput-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->movePoint0:Lcom/wepie/snake/module/game/snake/PointInfo;

    .line 76
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 78
    .end local v0    # "lastIndex":I
    :cond_2
    const/4 v4, 0x2

    if-ne p3, v4, :cond_0

    .line 79
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->movePoint0:Lcom/wepie/snake/module/game/snake/PointInfo;

    mul-float v5, p1, v6

    add-float/2addr v5, v2

    iput v5, v4, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    .line 80
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->movePoint0:Lcom/wepie/snake/module/game/snake/PointInfo;

    mul-float v5, p2, v6

    add-float/2addr v5, v3

    iput v5, v4, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    .line 81
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->movePoint0:Lcom/wepie/snake/module/game/snake/PointInfo;

    iget v5, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->bodyGlWith:F

    iget-object v6, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->movePoint0:Lcom/wepie/snake/module/game/snake/PointInfo;

    iget v6, v6, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    iget-object v7, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->movePoint0:Lcom/wepie/snake/module/game/snake/PointInfo;

    iget v7, v7, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    invoke-virtual {v4, v5, v6, v7, p4}, Lcom/wepie/snake/module/game/snake/PointInfo;->setPointsByDirection(FFFF)V

    .line 83
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->movePoint1:Lcom/wepie/snake/module/game/snake/PointInfo;

    add-float v5, v2, p1

    iput v5, v4, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    .line 84
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->movePoint1:Lcom/wepie/snake/module/game/snake/PointInfo;

    add-float v5, v3, p2

    iput v5, v4, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    .line 85
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->movePoint1:Lcom/wepie/snake/module/game/snake/PointInfo;

    iget v5, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->bodyGlWith:F

    iget-object v6, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->movePoint1:Lcom/wepie/snake/module/game/snake/PointInfo;

    iget v6, v6, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    iget-object v7, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->movePoint1:Lcom/wepie/snake/module/game/snake/PointInfo;

    iget v7, v7, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    invoke-virtual {v4, v5, v6, v7, p4}, Lcom/wepie/snake/module/game/snake/PointInfo;->setPointsByDirection(FFFF)V

    .line 87
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->movePoint1:Lcom/wepie/snake/module/game/snake/PointInfo;

    invoke-virtual {v4, v8, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 88
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->movePoint0:Lcom/wepie/snake/module/game/snake/PointInfo;

    invoke-virtual {v4, v8, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 90
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 91
    .restart local v0    # "lastIndex":I
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wepie/snake/module/game/snake/PointInfo;

    iput-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->movePoint0:Lcom/wepie/snake/module/game/snake/PointInfo;

    .line 92
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 94
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 95
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wepie/snake/module/game/snake/PointInfo;

    iput-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->movePoint1:Lcom/wepie/snake/module/game/snake/PointInfo;

    .line 96
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public refreshBodyWidth()V
    .locals 5

    .prologue
    .line 156
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    invoke-virtual {v2}, Lcom/wepie/snake/module/game/snake/SnakeInfo;->getLength()I

    move-result v0

    .line 157
    .local v0, "length":I
    sget v2, Lcom/wepie/snake/module/game/snake/BodyInfo;->BODY_GL_WIDTH_DEFAULT:F

    int-to-float v3, v0

    sget v4, Lcom/wepie/snake/module/game/snake/BodyInfo;->BODY_SCALE_RATE:F

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 158
    .local v1, "result":F
    sget v2, Lcom/wepie/snake/module/game/snake/BodyInfo;->BODY_GL_WIDTH_MAX:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    sget v1, Lcom/wepie/snake/module/game/snake/BodyInfo;->BODY_GL_WIDTH_MAX:F

    .line 159
    :cond_0
    iput v1, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->bodyGlWith:F

    .line 161
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-boolean v2, v2, Lcom/wepie/snake/module/game/snake/SnakeInfo;->isSnakeAi:Z

    if-nez v2, :cond_1

    .line 162
    invoke-direct {p0, v0}, Lcom/wepie/snake/module/game/snake/BodyInfo;->refreshMapScaleFactor(I)V

    .line 164
    :cond_1
    return-void
.end method

.method public refreshMesh(Lcom/wepie/snake/module/game/snake/MeshUtil;)V
    .locals 5
    .param p1, "meshUtil"    # Lcom/wepie/snake/module/game/snake/MeshUtil;

    .prologue
    .line 285
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 286
    .local v2, "size":I
    sget v3, Lcom/wepie/snake/module/game/snake/GameConfig;->PER_NODE_POINT_COUNT:I

    .line 288
    .local v3, "step":I
    sub-int v0, v2, v3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 289
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wepie/snake/module/game/snake/PointInfo;

    .line 290
    .local v1, "pointInfo":Lcom/wepie/snake/module/game/snake/PointInfo;
    invoke-virtual {p1, v1}, Lcom/wepie/snake/module/game/snake/MeshUtil;->addBodyMesh(Lcom/wepie/snake/module/game/snake/PointInfo;)V

    .line 288
    sub-int/2addr v0, v3

    goto :goto_0

    .line 292
    .end local v1    # "pointInfo":Lcom/wepie/snake/module/game/snake/PointInfo;
    :cond_0
    return-void
.end method

.method public refreshVertexArray([FI)V
    .locals 17
    .param p1, "destArray"    # [F
    .param p2, "vindex"    # I

    .prologue
    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 174
    .local v4, "size":I
    sget v5, Lcom/wepie/snake/module/game/snake/GameConfig;->PER_NODE_POINT_COUNT:I

    .line 175
    .local v5, "step":I
    sget v1, Lcom/wepie/snake/module/game/snake/GameConfig;->factor:F

    .line 177
    .local v1, "factor":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/BodyInfo;->zOrderArray:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v15, v16, -0x1

    .line 180
    .local v15, "zindex":I
    sub-int v2, v4, v5

    .local v2, "i":I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wepie/snake/module/game/snake/PointInfo;

    .line 182
    .local v3, "pointInfo":Lcom/wepie/snake/module/game/snake/PointInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/BodyInfo;->zOrderArray:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    int-to-float v14, v0

    .line 183
    .local v14, "z":F
    add-int/lit8 v15, v15, -0x1

    .line 185
    iget v0, v3, Lcom/wepie/snake/module/game/snake/PointInfo;->x1:F

    move/from16 v16, v0

    mul-float v6, v16, v1

    .line 186
    .local v6, "x1":F
    iget v0, v3, Lcom/wepie/snake/module/game/snake/PointInfo;->x2:F

    move/from16 v16, v0

    mul-float v7, v16, v1

    .line 187
    .local v7, "x2":F
    iget v0, v3, Lcom/wepie/snake/module/game/snake/PointInfo;->x3:F

    move/from16 v16, v0

    mul-float v8, v16, v1

    .line 188
    .local v8, "x3":F
    iget v0, v3, Lcom/wepie/snake/module/game/snake/PointInfo;->x4:F

    move/from16 v16, v0

    mul-float v9, v16, v1

    .line 190
    .local v9, "x4":F
    iget v0, v3, Lcom/wepie/snake/module/game/snake/PointInfo;->y1:F

    move/from16 v16, v0

    mul-float v10, v16, v1

    .line 191
    .local v10, "y1":F
    iget v0, v3, Lcom/wepie/snake/module/game/snake/PointInfo;->y2:F

    move/from16 v16, v0

    mul-float v11, v16, v1

    .line 192
    .local v11, "y2":F
    iget v0, v3, Lcom/wepie/snake/module/game/snake/PointInfo;->y3:F

    move/from16 v16, v0

    mul-float v12, v16, v1

    .line 193
    .local v12, "y3":F
    iget v0, v3, Lcom/wepie/snake/module/game/snake/PointInfo;->y4:F

    move/from16 v16, v0

    mul-float v13, v16, v1

    .line 196
    .local v13, "y4":F
    aput v7, p1, p2

    .line 197
    add-int/lit8 v16, p2, 0x1

    aput v11, p1, v16

    .line 198
    add-int/lit8 v16, p2, 0x2

    aput v14, p1, v16

    .line 201
    add-int/lit8 v16, p2, 0x3

    aput v8, p1, v16

    .line 202
    add-int/lit8 v16, p2, 0x4

    aput v12, p1, v16

    .line 203
    add-int/lit8 v16, p2, 0x5

    aput v14, p1, v16

    .line 206
    add-int/lit8 v16, p2, 0x6

    aput v9, p1, v16

    .line 207
    add-int/lit8 v16, p2, 0x7

    aput v13, p1, v16

    .line 208
    add-int/lit8 v16, p2, 0x8

    aput v14, p1, v16

    .line 211
    add-int/lit8 v16, p2, 0x9

    aput v9, p1, v16

    .line 212
    add-int/lit8 v16, p2, 0xa

    aput v13, p1, v16

    .line 213
    add-int/lit8 v16, p2, 0xb

    aput v14, p1, v16

    .line 216
    add-int/lit8 v16, p2, 0xc

    aput v6, p1, v16

    .line 217
    add-int/lit8 v16, p2, 0xd

    aput v10, p1, v16

    .line 218
    add-int/lit8 v16, p2, 0xe

    aput v14, p1, v16

    .line 221
    add-int/lit8 v16, p2, 0xf

    aput v7, p1, v16

    .line 222
    add-int/lit8 v16, p2, 0x10

    aput v11, p1, v16

    .line 223
    add-int/lit8 v16, p2, 0x11

    aput v14, p1, v16

    .line 225
    add-int/lit8 p2, p2, 0x12

    .line 180
    sub-int/2addr v2, v5

    goto/16 :goto_0

    .line 227
    .end local v3    # "pointInfo":Lcom/wepie/snake/module/game/snake/PointInfo;
    .end local v6    # "x1":F
    .end local v7    # "x2":F
    .end local v8    # "x3":F
    .end local v9    # "x4":F
    .end local v10    # "y1":F
    .end local v11    # "y2":F
    .end local v12    # "y3":F
    .end local v13    # "y4":F
    .end local v14    # "z":F
    :cond_0
    return-void
.end method

.method public removeNode()V
    .locals 4

    .prologue
    .line 144
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 145
    .local v1, "lastIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/wepie/snake/module/game/snake/GameConfig;->PER_NODE_POINT_COUNT:I

    if-ge v0, v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    sub-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->zOrderArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->zOrderArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 149
    iget v2, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->zIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->zIndex:I

    .line 150
    iget v2, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->zIndex:I

    if-gez v2, :cond_1

    iget v2, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->bodyTypeCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/wepie/snake/module/game/snake/BodyInfo;->zIndex:I

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/wepie/snake/module/game/snake/BodyInfo;->refreshBodyWidth()V

    .line 153
    return-void
.end method
