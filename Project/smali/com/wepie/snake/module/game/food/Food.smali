.class public Lcom/wepie/snake/module/game/food/Food;
.super Ljava/lang/Object;
.source "Food.java"


# static fields
.field public static final foodWidth:I

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v0

    sput v0, Lcom/wepie/snake/module/game/food/Food;->foodWidth:I

    .line 15
    sget v0, Lcom/wepie/snake/module/game/food/Food;->foodWidth:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/CoordUtil;->screenSize2GLSize(F)F

    move-result v0

    sput v0, Lcom/wepie/snake/module/game/food/Food;->ur:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/game/food/Food;->foodInfos:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getFoodCount()I
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/wepie/snake/module/game/food/Food;->foodInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public refreshVertexArray([F)V
    .locals 11
    .param p1, "vertexArray"    # [F

    .prologue
    .line 22
    sget v0, Lcom/wepie/snake/module/game/snake/GameConfig;->factor:F

    .line 23
    .local v0, "factor":F
    sget v9, Lcom/wepie/snake/module/game/food/Food;->ur:F

    mul-float v5, v9, v0

    .line 24
    .local v5, "r":F
    const/high16 v8, 0x40400000    # 3.0f

    .line 25
    .local v8, "z":F
    iget-object v9, p0, Lcom/wepie/snake/module/game/food/Food;->foodInfos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 27
    .local v1, "foodCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 28
    iget-object v9, p0, Lcom/wepie/snake/module/game/food/Food;->foodInfos:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wepie/snake/module/game/food/FoodInfo;

    .line 31
    .local v2, "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    invoke-virtual {v2}, Lcom/wepie/snake/module/game/food/FoodInfo;->isDie()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 33
    iget v9, v2, Lcom/wepie/snake/module/game/food/FoodInfo;->type:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 34
    const/high16 v6, -0x3d380000    # -100.0f

    .line 35
    .local v6, "x":F
    const/high16 v7, -0x3d380000    # -100.0f

    .line 52
    .local v7, "y":F
    :goto_1
    mul-float/2addr v6, v0

    .line 53
    mul-float/2addr v7, v0

    .line 55
    mul-int/lit8 v4, v3, 0x12

    .line 57
    .local v4, "index":I
    neg-float v9, v5

    add-float/2addr v9, v6

    aput v9, p1, v4

    .line 58
    add-int/lit8 v9, v4, 0x1

    add-float v10, v5, v7

    aput v10, p1, v9

    .line 59
    add-int/lit8 v9, v4, 0x2

    aput v8, p1, v9

    .line 62
    add-int/lit8 v9, v4, 0x3

    neg-float v10, v5

    add-float/2addr v10, v6

    aput v10, p1, v9

    .line 63
    add-int/lit8 v9, v4, 0x4

    neg-float v10, v5

    add-float/2addr v10, v7

    aput v10, p1, v9

    .line 64
    add-int/lit8 v9, v4, 0x5

    aput v8, p1, v9

    .line 67
    add-int/lit8 v9, v4, 0x6

    add-float v10, v5, v6

    aput v10, p1, v9

    .line 68
    add-int/lit8 v9, v4, 0x7

    neg-float v10, v5

    add-float/2addr v10, v7

    aput v10, p1, v9

    .line 69
    add-int/lit8 v9, v4, 0x8

    aput v8, p1, v9

    .line 72
    add-int/lit8 v9, v4, 0x9

    add-float v10, v5, v6

    aput v10, p1, v9

    .line 73
    add-int/lit8 v9, v4, 0xa

    neg-float v10, v5

    add-float/2addr v10, v7

    aput v10, p1, v9

    .line 74
    add-int/lit8 v9, v4, 0xb

    aput v8, p1, v9

    .line 77
    add-int/lit8 v9, v4, 0xc

    add-float v10, v5, v6

    aput v10, p1, v9

    .line 78
    add-int/lit8 v9, v4, 0xd

    add-float v10, v5, v7

    aput v10, p1, v9

    .line 79
    add-int/lit8 v9, v4, 0xe

    aput v8, p1, v9

    .line 82
    add-int/lit8 v9, v4, 0xf

    neg-float v10, v5

    add-float/2addr v10, v6

    aput v10, p1, v9

    .line 83
    add-int/lit8 v9, v4, 0x10

    add-float v10, v5, v7

    aput v10, p1, v9

    .line 84
    add-int/lit8 v9, v4, 0x11

    aput v8, p1, v9

    .line 27
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 37
    .end local v4    # "index":I
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_0
    invoke-static {}, Lcom/wepie/snake/module/game/food/FoodFactory;->getRandomFoodX()F

    move-result v6

    .line 38
    .restart local v6    # "x":F
    invoke-static {}, Lcom/wepie/snake/module/game/food/FoodFactory;->getRandomFoodY()F

    move-result v7

    .line 39
    .restart local v7    # "y":F
    iput v6, v2, Lcom/wepie/snake/module/game/food/FoodInfo;->x:F

    .line 40
    iput v7, v2, Lcom/wepie/snake/module/game/food/FoodInfo;->y:F

    .line 41
    const/4 v9, 0x1

    iput v9, v2, Lcom/wepie/snake/module/game/food/FoodInfo;->status:I

    goto :goto_1

    .line 44
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_1
    invoke-virtual {v2}, Lcom/wepie/snake/module/game/food/FoodInfo;->isAniming()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 45
    invoke-virtual {v2}, Lcom/wepie/snake/module/game/food/FoodInfo;->getAnimX()F

    move-result v6

    .line 46
    .restart local v6    # "x":F
    invoke-virtual {v2}, Lcom/wepie/snake/module/game/food/FoodInfo;->getAnimY()F

    move-result v7

    .restart local v7    # "y":F
    goto/16 :goto_1

    .line 48
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_2
    iget v6, v2, Lcom/wepie/snake/module/game/food/FoodInfo;->x:F

    .line 49
    .restart local v6    # "x":F
    iget v7, v2, Lcom/wepie/snake/module/game/food/FoodInfo;->y:F

    .restart local v7    # "y":F
    goto/16 :goto_1

    .line 86
    .end local v2    # "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_3
    return-void
.end method
