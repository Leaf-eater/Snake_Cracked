.class public Lcom/wepie/snake/module/game/food/FoodFactory;
.super Ljava/lang/Object;
.source "FoodFactory.java"


# static fields
.field private static final DEFAULT_FOOD_COUNT:I = 0x12c

.field private static mapHeight:I

.field private static mapWidth:I

.field private static r:Ljava/util/Random;


# instance fields
.field dropFoodArray:[Lcom/wepie/snake/module/game/food/FoodInfo;

.field foodResArray:[I

.field foodSpirits:[Lcom/wepie/snake/module/game/main/Spirit;

.field foods:[Lcom/wepie/snake/module/game/food/Food;

.field private meshUtil:Lcom/wepie/snake/module/game/snake/MeshUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/wepie/snake/module/game/food/FoodFactory;->r:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/wepie/snake/module/game/snake/MeshUtil;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "meshUtil"    # Lcom/wepie/snake/module/game/snake/MeshUtil;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v4, 0xd

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->foodResArray:[I

    .line 125
    const/16 v4, 0xc8

    new-array v4, v4, [Lcom/wepie/snake/module/game/food/FoodInfo;

    iput-object v4, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->dropFoodArray:[Lcom/wepie/snake/module/game/food/FoodInfo;

    .line 36
    iput-object p2, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->meshUtil:Lcom/wepie/snake/module/game/snake/MeshUtil;

    .line 37
    invoke-static {}, Lcom/wepie/snake/module/game/util/ScreenUtil;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/wepie/snake/module/game/snake/GameConfig;->MAP_WIDTH:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcom/wepie/snake/module/game/food/FoodFactory;->mapWidth:I

    .line 38
    invoke-static {}, Lcom/wepie/snake/module/game/util/ScreenUtil;->getScreenHeight()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/wepie/snake/module/game/snake/GameConfig;->MAP_HEIGHT:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcom/wepie/snake/module/game/food/FoodFactory;->mapHeight:I

    .line 40
    iget-object v4, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->foodResArray:[I

    array-length v2, v4

    .line 41
    .local v2, "len":I
    new-array v4, v2, [Lcom/wepie/snake/module/game/main/Spirit;

    iput-object v4, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->foodSpirits:[Lcom/wepie/snake/module/game/main/Spirit;

    .line 42
    new-array v4, v2, [Lcom/wepie/snake/module/game/food/Food;

    iput-object v4, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->foods:[Lcom/wepie/snake/module/game/food/Food;

    .line 44
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 45
    new-instance v3, Lcom/wepie/snake/module/game/main/Spirit;

    iget-object v4, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->foodResArray:[I

    aget v4, v4, v1

    const/16 v5, 0x12c

    invoke-direct {v3, p1, v4, v5}, Lcom/wepie/snake/module/game/main/Spirit;-><init>(Landroid/content/Context;II)V

    .line 46
    .local v3, "spirit":Lcom/wepie/snake/module/game/main/Spirit;
    iget-object v4, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->foodSpirits:[Lcom/wepie/snake/module/game/main/Spirit;

    aput-object v3, v4, v1

    .line 48
    new-instance v0, Lcom/wepie/snake/module/game/food/Food;

    invoke-direct {v0}, Lcom/wepie/snake/module/game/food/Food;-><init>()V

    .line 49
    .local v0, "food":Lcom/wepie/snake/module/game/food/Food;
    iget-object v4, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->foods:[Lcom/wepie/snake/module/game/food/Food;

    aput-object v0, v4, v1

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "food":Lcom/wepie/snake/module/game/food/Food;
    .end local v3    # "spirit":Lcom/wepie/snake/module/game/main/Spirit;
    :cond_0
    invoke-direct {p0}, Lcom/wepie/snake/module/game/food/FoodFactory;->createFoods()V

    .line 52
    return-void

    .line 26
    nop

    :array_0
    .array-data 4
        0x7f0200ad
        0x7f0200b2
        0x7f0200b3
        0x7f0200b4
        0x7f0200b5
        0x7f0200b6
        0x7f0200b7
        0x7f0200b8
        0x7f0200b9
        0x7f0200ae
        0x7f0200af
        0x7f0200b0
        0x7f0200b1
    .end array-data
.end method

.method private addNewFood(FFI)Lcom/wepie/snake/module/game/food/FoodInfo;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "textureIndex"    # I

    .prologue
    .line 151
    new-instance v0, Lcom/wepie/snake/module/game/food/FoodInfo;

    invoke-direct {v0, p1, p2}, Lcom/wepie/snake/module/game/food/FoodInfo;-><init>(FF)V

    .line 152
    .local v0, "newFood":Lcom/wepie/snake/module/game/food/FoodInfo;
    const/4 v1, 0x3

    iput v1, v0, Lcom/wepie/snake/module/game/food/FoodInfo;->type:I

    .line 153
    iput p3, v0, Lcom/wepie/snake/module/game/food/FoodInfo;->textureId:I

    .line 154
    iget-object v1, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->foods:[Lcom/wepie/snake/module/game/food/Food;

    aget-object v1, v1, p3

    iget-object v1, v1, Lcom/wepie/snake/module/game/food/Food;->foodInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    return-object v0
.end method

.method private createFoods()V
    .locals 5

    .prologue
    .line 76
    iget-object v4, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->foods:[Lcom/wepie/snake/module/game/food/Food;

    array-length v3, v4

    .line 77
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 78
    iget-object v4, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->foods:[Lcom/wepie/snake/module/game/food/Food;

    aget-object v1, v4, v2

    .line 79
    .local v1, "food":Lcom/wepie/snake/module/game/food/Food;
    const/16 v0, 0x28

    .line 80
    .local v0, "count":I
    invoke-direct {p0, v0, v2}, Lcom/wepie/snake/module/game/food/FoodFactory;->initFoodPoints(II)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v1, Lcom/wepie/snake/module/game/food/Food;->foodInfos:Ljava/util/ArrayList;

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "count":I
    .end local v1    # "food":Lcom/wepie/snake/module/game/food/Food;
    :cond_0
    return-void
.end method

.method public static getRandomFoodX()F
    .locals 4

    .prologue
    .line 114
    sget-object v2, Lcom/wepie/snake/module/game/food/FoodFactory;->r:Ljava/util/Random;

    sget v3, Lcom/wepie/snake/module/game/food/FoodFactory;->mapWidth:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sget v3, Lcom/wepie/snake/module/game/food/Food;->foodWidth:I

    sub-int v1, v2, v3

    .line 115
    .local v1, "x":I
    sget-object v2, Lcom/wepie/snake/module/game/food/FoodFactory;->r:Ljava/util/Random;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, -0x1

    .line 116
    .local v0, "dirX":I
    :goto_0
    mul-int v2, v1, v0

    int-to-float v2, v2

    invoke-static {v2}, Lcom/wepie/snake/module/game/util/CoordUtil;->screenSize2GLSize(F)F

    move-result v2

    return v2

    .line 115
    .end local v0    # "dirX":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getRandomFoodY()F
    .locals 4

    .prologue
    .line 120
    sget-object v2, Lcom/wepie/snake/module/game/food/FoodFactory;->r:Ljava/util/Random;

    sget v3, Lcom/wepie/snake/module/game/food/FoodFactory;->mapHeight:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sget v3, Lcom/wepie/snake/module/game/food/Food;->foodWidth:I

    sub-int v1, v2, v3

    .line 121
    .local v1, "y":I
    sget-object v2, Lcom/wepie/snake/module/game/food/FoodFactory;->r:Ljava/util/Random;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, -0x1

    .line 122
    .local v0, "dirY":I
    :goto_0
    mul-int v2, v1, v0

    int-to-float v2, v2

    invoke-static {v2}, Lcom/wepie/snake/module/game/util/CoordUtil;->screenSize2GLSize(F)F

    move-result v2

    return v2

    .line 121
    .end local v0    # "dirY":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initFoodPoints(II)Ljava/util/ArrayList;
    .locals 5
    .param p1, "size"    # I
    .param p2, "textureId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wepie/snake/module/game/food/FoodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v1, "foodInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/module/game/food/FoodInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_0

    .line 104
    invoke-static {}, Lcom/wepie/snake/module/game/food/FoodFactory;->getRandomFoodX()F

    move-result v2

    .line 105
    .local v2, "fx":F
    invoke-static {}, Lcom/wepie/snake/module/game/food/FoodFactory;->getRandomFoodY()F

    move-result v3

    .line 106
    .local v3, "fy":F
    new-instance v0, Lcom/wepie/snake/module/game/food/FoodInfo;

    invoke-direct {v0, v2, v3}, Lcom/wepie/snake/module/game/food/FoodInfo;-><init>(FF)V

    .line 107
    .local v0, "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    iput p2, v0, Lcom/wepie/snake/module/game/food/FoodInfo;->textureId:I

    .line 108
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    .end local v2    # "fx":F
    .end local v3    # "fy":F
    :cond_0
    return-object v1
.end method


# virtual methods
.method public addFood(FFI)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "textureIndex"    # I

    .prologue
    const/4 v6, 0x0

    .line 127
    iget-object v5, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->dropFoodArray:[Lcom/wepie/snake/module/game/food/FoodInfo;

    array-length v3, v5

    .line 128
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 129
    iget-object v5, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->dropFoodArray:[Lcom/wepie/snake/module/game/food/FoodInfo;

    aget-object v1, v5, v2

    .line 130
    .local v1, "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    if-nez v1, :cond_0

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/wepie/snake/module/game/food/FoodFactory;->addNewFood(FFI)Lcom/wepie/snake/module/game/food/FoodInfo;

    move-result-object v4

    .line 132
    .local v4, "newFood":Lcom/wepie/snake/module/game/food/FoodInfo;
    iget-object v5, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->dropFoodArray:[Lcom/wepie/snake/module/game/food/FoodInfo;

    aput-object v4, v5, v2

    .line 148
    .end local v1    # "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    .end local v4    # "newFood":Lcom/wepie/snake/module/game/food/FoodInfo;
    :goto_1
    return-void

    .line 134
    .restart local v1    # "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    :cond_0
    invoke-virtual {v1}, Lcom/wepie/snake/module/game/food/FoodInfo;->isDie()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v1, Lcom/wepie/snake/module/game/food/FoodInfo;->textureId:I

    if-ne v5, p3, :cond_1

    .line 135
    iput p1, v1, Lcom/wepie/snake/module/game/food/FoodInfo;->x:F

    .line 136
    iput p2, v1, Lcom/wepie/snake/module/game/food/FoodInfo;->y:F

    .line 137
    const/4 v5, 0x1

    iput v5, v1, Lcom/wepie/snake/module/game/food/FoodInfo;->status:I

    goto :goto_1

    .line 128
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    :cond_2
    add-int/lit16 v5, v3, 0x1f4

    new-array v0, v5, [Lcom/wepie/snake/module/game/food/FoodInfo;

    .line 144
    .local v0, "array":[Lcom/wepie/snake/module/game/food/FoodInfo;
    iget-object v5, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->dropFoodArray:[Lcom/wepie/snake/module/game/food/FoodInfo;

    invoke-static {v5, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    iput-object v0, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->dropFoodArray:[Lcom/wepie/snake/module/game/food/FoodInfo;

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/wepie/snake/module/game/food/FoodFactory;->addNewFood(FFI)Lcom/wepie/snake/module/game/food/FoodInfo;

    move-result-object v4

    .line 147
    .restart local v4    # "newFood":Lcom/wepie/snake/module/game/food/FoodInfo;
    iget-object v5, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->dropFoodArray:[Lcom/wepie/snake/module/game/food/FoodInfo;

    aput-object v4, v5, v3

    goto :goto_1
.end method

.method public drawFoods()V
    .locals 7

    .prologue
    .line 55
    iget-object v6, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->foods:[Lcom/wepie/snake/module/game/food/Food;

    array-length v3, v6

    .line 56
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 57
    iget-object v6, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->foods:[Lcom/wepie/snake/module/game/food/Food;

    aget-object v0, v6, v2

    .line 58
    .local v0, "food":Lcom/wepie/snake/module/game/food/Food;
    iget-object v6, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->foodSpirits:[Lcom/wepie/snake/module/game/main/Spirit;

    aget-object v4, v6, v2

    .line 59
    .local v4, "spirit":Lcom/wepie/snake/module/game/main/Spirit;
    invoke-virtual {v0}, Lcom/wepie/snake/module/game/food/Food;->getFoodCount()I

    move-result v1

    .line 60
    .local v1, "foodCount":I
    invoke-virtual {v4, v1}, Lcom/wepie/snake/module/game/main/Spirit;->getVertexArray(I)[F

    move-result-object v5

    .line 61
    .local v5, "vertexArray":[F
    invoke-virtual {v0, v5}, Lcom/wepie/snake/module/game/food/Food;->refreshVertexArray([F)V

    .line 62
    invoke-virtual {v4}, Lcom/wepie/snake/module/game/main/Spirit;->refreshVertexBuffer()V

    .line 63
    invoke-virtual {v4}, Lcom/wepie/snake/module/game/main/Spirit;->drawSelf()V

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "food":Lcom/wepie/snake/module/game/food/Food;
    .end local v1    # "foodCount":I
    .end local v4    # "spirit":Lcom/wepie/snake/module/game/main/Spirit;
    .end local v5    # "vertexArray":[F
    :cond_0
    return-void
.end method

.method public initFoodMesh()V
    .locals 5

    .prologue
    .line 68
    iget-object v3, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->foods:[Lcom/wepie/snake/module/game/food/Food;

    array-length v2, v3

    .line 69
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 70
    iget-object v3, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->foods:[Lcom/wepie/snake/module/game/food/Food;

    aget-object v0, v3, v1

    .line 71
    .local v0, "food":Lcom/wepie/snake/module/game/food/Food;
    iget-object v3, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->meshUtil:Lcom/wepie/snake/module/game/snake/MeshUtil;

    iget-object v4, v0, Lcom/wepie/snake/module/game/food/Food;->foodInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/wepie/snake/module/game/snake/MeshUtil;->refreshFoodMesh(Ljava/util/ArrayList;)V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "food":Lcom/wepie/snake/module/game/food/Food;
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 10

    .prologue
    .line 85
    iget-object v9, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->foods:[Lcom/wepie/snake/module/game/food/Food;

    array-length v7, v9

    .line 86
    .local v7, "len":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_1

    .line 87
    iget-object v9, p0, Lcom/wepie/snake/module/game/food/FoodFactory;->foods:[Lcom/wepie/snake/module/game/food/Food;

    aget-object v0, v9, v5

    .line 88
    .local v0, "food":Lcom/wepie/snake/module/game/food/Food;
    iget-object v2, v0, Lcom/wepie/snake/module/game/food/Food;->foodInfos:Ljava/util/ArrayList;

    .line 89
    .local v2, "foodInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/module/game/food/FoodInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 90
    .local v8, "size":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v8, :cond_0

    .line 91
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wepie/snake/module/game/food/FoodInfo;

    .line 92
    .local v1, "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    invoke-static {}, Lcom/wepie/snake/module/game/food/FoodFactory;->getRandomFoodX()F

    move-result v3

    .line 93
    .local v3, "fx":F
    invoke-static {}, Lcom/wepie/snake/module/game/food/FoodFactory;->getRandomFoodY()F

    move-result v4

    .line 94
    .local v4, "fy":F
    iput v3, v1, Lcom/wepie/snake/module/game/food/FoodInfo;->x:F

    .line 95
    iput v4, v1, Lcom/wepie/snake/module/game/food/FoodInfo;->y:F

    .line 96
    const/4 v9, 0x1

    iput v9, v1, Lcom/wepie/snake/module/game/food/FoodInfo;->status:I

    .line 90
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 86
    .end local v1    # "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    .end local v3    # "fx":F
    .end local v4    # "fy":F
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "food":Lcom/wepie/snake/module/game/food/Food;
    .end local v2    # "foodInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/module/game/food/FoodInfo;>;"
    .end local v6    # "j":I
    .end local v8    # "size":I
    :cond_1
    return-void
.end method
