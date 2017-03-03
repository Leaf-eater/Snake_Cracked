.class public Lcom/wepie/snake/module/game/food/Wreck;
.super Ljava/lang/Object;
.source "Wreck.java"


# static fields
.field private static final CACHE_V_COUNT:I = 0x64

.field private static final START_Z_ORDER:I = 0x1

.field public static final ur:F


# instance fields
.field public foodInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wepie/snake/module/game/food/FoodInfo;",
            ">;"
        }
    .end annotation
.end field

.field public node:Lcom/wepie/snake/module/game/main/MultiNode;

.field private random:Ljava/util/Random;

.field public recycleArray:[Lcom/wepie/snake/module/game/food/FoodInfo;

.field private zorderStep:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 25
    sget v0, Lcom/wepie/snake/module/game/food/Food;->ur:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, v1

    sput v0, Lcom/wepie/snake/module/game/food/Wreck;->ur:F

    return-void
.end method

.method public constructor <init>(Lcom/wepie/snake/module/game/skin/SkinInfo;)V
    .locals 2
    .param p1, "skinInfo"    # Lcom/wepie/snake/module/game/skin/SkinInfo;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/game/food/Wreck;->foodInfos:Ljava/util/ArrayList;

    .line 23
    const/16 v0, 0x12c

    new-array v0, v0, [Lcom/wepie/snake/module/game/food/FoodInfo;

    iput-object v0, p0, Lcom/wepie/snake/module/game/food/Wreck;->recycleArray:[Lcom/wepie/snake/module/game/food/FoodInfo;

    .line 28
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/game/food/Wreck;->random:Ljava/util/Random;

    .line 31
    new-instance v0, Lcom/wepie/snake/module/game/main/MultiNode;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/wepie/snake/module/game/main/MultiNode;-><init>(I)V

    iput-object v0, p0, Lcom/wepie/snake/module/game/food/Wreck;->node:Lcom/wepie/snake/module/game/main/MultiNode;

    .line 32
    iget-object v0, p0, Lcom/wepie/snake/module/game/food/Wreck;->node:Lcom/wepie/snake/module/game/main/MultiNode;

    invoke-virtual {p1}, Lcom/wepie/snake/module/game/skin/SkinInfo;->getWreckTextures()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/game/main/MultiNode;->initTextures([Ljava/lang/Object;)V

    .line 33
    iget-object v0, p1, Lcom/wepie/snake/module/game/skin/SkinInfo;->wreck_ids:[I

    array-length v0, v0

    iput v0, p0, Lcom/wepie/snake/module/game/food/Wreck;->zorderStep:I

    .line 34
    return-void
.end method

.method private getCurValidRecyleLenght()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 109
    const/4 v4, 0x0

    .line 111
    .local v4, "validRecycleIndex":I
    iget-object v5, p0, Lcom/wepie/snake/module/game/food/Wreck;->foodInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 112
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 113
    iget-object v5, p0, Lcom/wepie/snake/module/game/food/Wreck;->foodInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/module/game/food/FoodInfo;

    .line 114
    .local v0, "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    invoke-virtual {v0}, Lcom/wepie/snake/module/game/food/FoodInfo;->isDie()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 115
    iget-object v5, p0, Lcom/wepie/snake/module/game/food/Wreck;->recycleArray:[Lcom/wepie/snake/module/game/food/FoodInfo;

    array-length v5, v5

    if-lt v4, v5, :cond_0

    .line 116
    iget-object v5, p0, Lcom/wepie/snake/module/game/food/Wreck;->recycleArray:[Lcom/wepie/snake/module/game/food/FoodInfo;

    array-length v5, v5

    add-int/lit16 v5, v5, 0x3e8

    new-array v3, v5, [Lcom/wepie/snake/module/game/food/FoodInfo;

    .line 117
    .local v3, "tempArray":[Lcom/wepie/snake/module/game/food/FoodInfo;
    iget-object v5, p0, Lcom/wepie/snake/module/game/food/Wreck;->recycleArray:[Lcom/wepie/snake/module/game/food/FoodInfo;

    iget-object v6, p0, Lcom/wepie/snake/module/game/food/Wreck;->recycleArray:[Lcom/wepie/snake/module/game/food/FoodInfo;

    array-length v6, v6

    invoke-static {v5, v7, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iput-object v3, p0, Lcom/wepie/snake/module/game/food/Wreck;->recycleArray:[Lcom/wepie/snake/module/game/food/FoodInfo;

    .line 120
    .end local v3    # "tempArray":[Lcom/wepie/snake/module/game/food/FoodInfo;
    :cond_0
    iget-object v5, p0, Lcom/wepie/snake/module/game/food/Wreck;->recycleArray:[Lcom/wepie/snake/module/game/food/FoodInfo;

    aput-object v0, v5, v4

    .line 121
    add-int/lit8 v4, v4, 0x1

    .line 112
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    :cond_2
    return v4
.end method

.method private refreshVertexArray([F)V
    .locals 10
    .param p1, "destArray"    # [F

    .prologue
    .line 45
    iget-object v0, p0, Lcom/wepie/snake/module/game/food/Wreck;->foodInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 47
    .local v9, "size":I
    const/4 v1, 0x0

    .line 48
    .local v1, "vindex":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_2

    .line 49
    iget-object v0, p0, Lcom/wepie/snake/module/game/food/Wreck;->foodInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wepie/snake/module/game/food/FoodInfo;

    .line 52
    .local v7, "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    invoke-virtual {v7}, Lcom/wepie/snake/module/game/food/FoodInfo;->isDie()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/high16 v2, -0x3d380000    # -100.0f

    .line 54
    .local v2, "x":F
    const/high16 v3, -0x3d380000    # -100.0f

    .line 63
    .local v3, "y":F
    :goto_1
    iget v0, v7, Lcom/wepie/snake/module/game/food/FoodInfo;->zorder:I

    int-to-float v6, v0

    .line 64
    .local v6, "z":F
    sget v4, Lcom/wepie/snake/module/game/food/Wreck;->ur:F

    sget v5, Lcom/wepie/snake/module/game/food/Wreck;->ur:F

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/wepie/snake/module/game/snake/BaseVertexInfo;->updateVertexBySize([FIFFFFF)V

    .line 65
    add-int/lit8 v1, v1, 0x12

    .line 48
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 55
    .end local v2    # "x":F
    .end local v3    # "y":F
    .end local v6    # "z":F
    :cond_0
    invoke-virtual {v7}, Lcom/wepie/snake/module/game/food/FoodInfo;->isAniming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {v7}, Lcom/wepie/snake/module/game/food/FoodInfo;->getAnimX()F

    move-result v2

    .line 57
    .restart local v2    # "x":F
    invoke-virtual {v7}, Lcom/wepie/snake/module/game/food/FoodInfo;->getAnimY()F

    move-result v3

    .restart local v3    # "y":F
    goto :goto_1

    .line 59
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_1
    iget v2, v7, Lcom/wepie/snake/module/game/food/FoodInfo;->x:F

    .line 60
    .restart local v2    # "x":F
    iget v3, v7, Lcom/wepie/snake/module/game/food/FoodInfo;->y:F

    .restart local v3    # "y":F
    goto :goto_1

    .line 67
    .end local v2    # "x":F
    .end local v3    # "y":F
    .end local v7    # "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    :cond_2
    return-void
.end method


# virtual methods
.method public addWrecks(Ljava/util/ArrayList;)V
    .locals 14
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
    .local p1, "pointInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/module/game/snake/PointInfo;>;"
    const/16 v13, 0x14

    .line 70
    invoke-direct {p0}, Lcom/wepie/snake/module/game/food/Wreck;->getCurValidRecyleLenght()I

    move-result v7

    .line 71
    .local v7, "validRecycleIndex":I
    const/4 v10, 0x1

    .line 73
    .local v10, "zorder":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 74
    .local v5, "size":I
    sget v6, Lcom/wepie/snake/module/game/snake/GameConfig;->PER_NODE_POINT_COUNT:I

    .line 75
    .local v6, "step":I
    const/4 v0, 0x0

    .line 76
    .local v0, "curRecycleIndex":I
    sub-int v2, v5, v6

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 77
    iget-object v11, p0, Lcom/wepie/snake/module/game/food/Wreck;->random:Ljava/util/Random;

    invoke-virtual {v11, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int v3, v2, v11

    .line 78
    .local v3, "index":I
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wepie/snake/module/game/snake/PointInfo;

    .line 79
    .local v4, "pointInfo":Lcom/wepie/snake/module/game/snake/PointInfo;
    iget v8, v4, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    .line 80
    .local v8, "x":F
    iget v9, v4, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    .line 81
    .local v9, "y":F
    sget v11, Lcom/wepie/snake/module/game/snake/CollisionUtil;->leftBorder:F

    cmpg-float v11, v8, v11

    if-ltz v11, :cond_0

    sget v11, Lcom/wepie/snake/module/game/snake/CollisionUtil;->rightBorder:F

    cmpl-float v11, v8, v11

    if-gtz v11, :cond_0

    sget v11, Lcom/wepie/snake/module/game/snake/CollisionUtil;->topBorder:F

    cmpl-float v11, v9, v11

    if-gtz v11, :cond_0

    sget v11, Lcom/wepie/snake/module/game/snake/CollisionUtil;->bottomBorder:F

    cmpg-float v11, v9, v11

    if-gez v11, :cond_1

    .line 76
    :cond_0
    :goto_1
    sub-int/2addr v2, v6

    goto :goto_0

    .line 86
    :cond_1
    iget-object v11, p0, Lcom/wepie/snake/module/game/food/Wreck;->random:Ljava/util/Random;

    invoke-virtual {v11, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/lit8 v11, v11, -0xa

    int-to-float v11, v11

    invoke-static {v11}, Lcom/wepie/snake/module/game/util/CoordUtil;->screenSize2GLSize(F)F

    move-result v11

    add-float/2addr v8, v11

    .line 87
    iget-object v11, p0, Lcom/wepie/snake/module/game/food/Wreck;->random:Ljava/util/Random;

    invoke-virtual {v11, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/lit8 v11, v11, -0xa

    int-to-float v11, v11

    invoke-static {v11}, Lcom/wepie/snake/module/game/util/CoordUtil;->screenSize2GLSize(F)F

    move-result v11

    add-float/2addr v9, v11

    .line 89
    if-ge v0, v7, :cond_2

    .line 90
    iget-object v11, p0, Lcom/wepie/snake/module/game/food/Wreck;->recycleArray:[Lcom/wepie/snake/module/game/food/FoodInfo;

    aget-object v1, v11, v0

    .line 91
    .local v1, "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    add-int/lit8 v0, v0, 0x1

    .line 92
    iput v8, v1, Lcom/wepie/snake/module/game/food/FoodInfo;->x:F

    .line 93
    iput v9, v1, Lcom/wepie/snake/module/game/food/FoodInfo;->y:F

    .line 94
    const/4 v11, 0x1

    iput v11, v1, Lcom/wepie/snake/module/game/food/FoodInfo;->status:I

    .line 95
    iput v10, v1, Lcom/wepie/snake/module/game/food/FoodInfo;->zorder:I

    .line 103
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 104
    add-int/lit8 v11, v10, -0x1

    iget v12, p0, Lcom/wepie/snake/module/game/food/Wreck;->zorderStep:I

    if-lt v11, v12, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    .line 97
    .end local v1    # "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    :cond_2
    new-instance v1, Lcom/wepie/snake/module/game/food/FoodInfo;

    invoke-direct {v1, v8, v9}, Lcom/wepie/snake/module/game/food/FoodInfo;-><init>(FF)V

    .line 98
    .restart local v1    # "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    const/4 v11, 0x2

    iput v11, v1, Lcom/wepie/snake/module/game/food/FoodInfo;->type:I

    .line 99
    const/4 v11, 0x5

    iput v11, v1, Lcom/wepie/snake/module/game/food/FoodInfo;->anim_frame_count:I

    .line 100
    iput v10, v1, Lcom/wepie/snake/module/game/food/FoodInfo;->zorder:I

    .line 101
    iget-object v11, p0, Lcom/wepie/snake/module/game/food/Wreck;->foodInfos:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 106
    .end local v1    # "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    .end local v3    # "index":I
    .end local v4    # "pointInfo":Lcom/wepie/snake/module/game/snake/PointInfo;
    .end local v8    # "x":F
    .end local v9    # "y":F
    :cond_3
    return-void
.end method

.method public drawSelf()V
    .locals 4

    .prologue
    .line 37
    iget-object v2, p0, Lcom/wepie/snake/module/game/food/Wreck;->foodInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 38
    .local v0, "nodeCount":I
    iget-object v2, p0, Lcom/wepie/snake/module/game/food/Wreck;->node:Lcom/wepie/snake/module/game/main/MultiNode;

    invoke-virtual {v2, v0}, Lcom/wepie/snake/module/game/main/MultiNode;->getVertexArray(I)[F

    move-result-object v1

    .line 39
    .local v1, "vertexArray":[F
    invoke-direct {p0, v1}, Lcom/wepie/snake/module/game/food/Wreck;->refreshVertexArray([F)V

    .line 40
    iget-object v2, p0, Lcom/wepie/snake/module/game/food/Wreck;->node:Lcom/wepie/snake/module/game/main/MultiNode;

    invoke-virtual {v2}, Lcom/wepie/snake/module/game/main/MultiNode;->refreshVertexBuffer()V

    .line 41
    iget-object v2, p0, Lcom/wepie/snake/module/game/food/Wreck;->node:Lcom/wepie/snake/module/game/main/MultiNode;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/wepie/snake/module/game/main/MultiNode;->drawSelf(F)V

    .line 42
    return-void
.end method
