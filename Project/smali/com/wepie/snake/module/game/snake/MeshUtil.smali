.class public Lcom/wepie/snake/module/game/snake/MeshUtil;
.super Ljava/lang/Object;
.source "MeshUtil.java"


# static fields
.field public static heightHalfBorder:F

.field static len:I

.field public static unitx:F

.field public static unity:F

.field public static withHalfBorder:F


# instance fields
.field public meshInfos:[Lcom/wepie/snake/module/game/snake/MeshInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v2, 0x40000000    # 2.0f

    .line 13
    sget v0, Lcom/wepie/snake/module/game/snake/GameConfig;->MAP_WIDTH:F

    sget v1, Lcom/wepie/snake/module/game/util/CoordUtil;->camera_left:F

    mul-float/2addr v0, v1

    sput v0, Lcom/wepie/snake/module/game/snake/MeshUtil;->withHalfBorder:F

    .line 14
    sget v0, Lcom/wepie/snake/module/game/snake/GameConfig;->MAP_HEIGHT:F

    sget v1, Lcom/wepie/snake/module/game/util/CoordUtil;->camera_top:F

    mul-float/2addr v0, v1

    sput v0, Lcom/wepie/snake/module/game/snake/MeshUtil;->heightHalfBorder:F

    .line 15
    sget v0, Lcom/wepie/snake/module/game/snake/MeshUtil;->withHalfBorder:F

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    sput v0, Lcom/wepie/snake/module/game/snake/MeshUtil;->unitx:F

    .line 16
    sget v0, Lcom/wepie/snake/module/game/snake/MeshUtil;->heightHalfBorder:F

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    sput v0, Lcom/wepie/snake/module/game/snake/MeshUtil;->unity:F

    .line 19
    const/16 v0, 0x100

    sput v0, Lcom/wepie/snake/module/game/snake/MeshUtil;->len:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget v2, Lcom/wepie/snake/module/game/snake/MeshUtil;->len:I

    new-array v2, v2, [Lcom/wepie/snake/module/game/snake/MeshInfo;

    iput-object v2, p0, Lcom/wepie/snake/module/game/snake/MeshUtil;->meshInfos:[Lcom/wepie/snake/module/game/snake/MeshInfo;

    .line 23
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/wepie/snake/module/game/snake/MeshUtil;->len:I

    if-ge v0, v2, :cond_0

    .line 24
    new-instance v1, Lcom/wepie/snake/module/game/snake/MeshInfo;

    invoke-direct {v1}, Lcom/wepie/snake/module/game/snake/MeshInfo;-><init>()V

    .line 25
    .local v1, "meshInfo":Lcom/wepie/snake/module/game/snake/MeshInfo;
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/MeshUtil;->meshInfos:[Lcom/wepie/snake/module/game/snake/MeshInfo;

    aput-object v1, v2, v0

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    .end local v1    # "meshInfo":Lcom/wepie/snake/module/game/snake/MeshInfo;
    :cond_0
    return-void
.end method

.method public static getMeshNum(FF)I
    .locals 5
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 42
    sget v3, Lcom/wepie/snake/module/game/snake/MeshUtil;->withHalfBorder:F

    add-float/2addr v3, p0

    sget v4, Lcom/wepie/snake/module/game/snake/MeshUtil;->unitx:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v0, v3, 0x1

    .line 43
    .local v0, "column":I
    sget v3, Lcom/wepie/snake/module/game/snake/MeshUtil;->heightHalfBorder:F

    sub-float/2addr v3, p1

    sget v4, Lcom/wepie/snake/module/game/snake/MeshUtil;->unity:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v2, v3, 0x1

    .line 45
    .local v2, "row":I
    add-int/lit8 v3, v2, -0x1

    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v0

    add-int/lit8 v1, v3, -0x1

    .line 46
    .local v1, "num":I
    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 47
    :cond_0
    sget v3, Lcom/wepie/snake/module/game/snake/MeshUtil;->len:I

    add-int/lit8 v3, v3, -0x1

    if-le v1, v3, :cond_1

    sget v3, Lcom/wepie/snake/module/game/snake/MeshUtil;->len:I

    add-int/lit8 v1, v3, -0x1

    .line 48
    :cond_1
    return v1
.end method

.method public static getMeshStartX(I)F
    .locals 3
    .param p0, "meshNum"    # I

    .prologue
    .line 52
    rem-int/lit8 v0, p0, 0x10

    .line 53
    .local v0, "m":I
    sget v1, Lcom/wepie/snake/module/game/snake/MeshUtil;->unitx:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    sget v2, Lcom/wepie/snake/module/game/snake/MeshUtil;->withHalfBorder:F

    sub-float/2addr v1, v2

    return v1
.end method

.method public static getMeshStartY(I)F
    .locals 4
    .param p0, "meshNum"    # I

    .prologue
    .line 57
    div-int/lit8 v0, p0, 0x10

    .line 58
    .local v0, "n":I
    sget v1, Lcom/wepie/snake/module/game/snake/MeshUtil;->heightHalfBorder:F

    sget v2, Lcom/wepie/snake/module/game/snake/MeshUtil;->unity:F

    int-to-float v3, v0

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    return v1
.end method


# virtual methods
.method public addBodyMesh(Lcom/wepie/snake/module/game/snake/PointInfo;)V
    .locals 4
    .param p1, "pointInfo"    # Lcom/wepie/snake/module/game/snake/PointInfo;

    .prologue
    .line 84
    iget v2, p1, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    iget v3, p1, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    invoke-static {v2, v3}, Lcom/wepie/snake/module/game/snake/MeshUtil;->getMeshNum(FF)I

    move-result v1

    .line 85
    .local v1, "num":I
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/MeshUtil;->meshInfos:[Lcom/wepie/snake/module/game/snake/MeshInfo;

    aget-object v0, v2, v1

    .line 86
    .local v0, "meshInfo":Lcom/wepie/snake/module/game/snake/MeshInfo;
    invoke-virtual {v0, p1}, Lcom/wepie/snake/module/game/snake/MeshInfo;->addBody(Lcom/wepie/snake/module/game/snake/PointInfo;)V

    .line 87
    return-void
.end method

.method public refreshFoodMesh(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wepie/snake/module/game/food/FoodInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "foodInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/module/game/food/FoodInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 63
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 64
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/module/game/food/FoodInfo;

    .line 65
    .local v0, "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    invoke-virtual {v0}, Lcom/wepie/snake/module/game/food/FoodInfo;->isNormal()Z

    move-result v5

    if-nez v5, :cond_0

    .line 63
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_0
    iget v5, v0, Lcom/wepie/snake/module/game/food/FoodInfo;->x:F

    iget v6, v0, Lcom/wepie/snake/module/game/food/FoodInfo;->y:F

    invoke-static {v5, v6}, Lcom/wepie/snake/module/game/snake/MeshUtil;->getMeshNum(FF)I

    move-result v3

    .line 67
    .local v3, "num":I
    iget-object v5, p0, Lcom/wepie/snake/module/game/snake/MeshUtil;->meshInfos:[Lcom/wepie/snake/module/game/snake/MeshInfo;

    aget-object v2, v5, v3

    .line 68
    .local v2, "meshInfo":Lcom/wepie/snake/module/game/snake/MeshInfo;
    invoke-virtual {v2, v0}, Lcom/wepie/snake/module/game/snake/MeshInfo;->addFood(Lcom/wepie/snake/module/game/food/FoodInfo;)V

    goto :goto_1

    .line 70
    .end local v0    # "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    .end local v2    # "meshInfo":Lcom/wepie/snake/module/game/snake/MeshInfo;
    .end local v3    # "num":I
    :cond_1
    return-void
.end method

.method public refreshWreckMesh(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wepie/snake/module/game/food/FoodInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "foodInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/module/game/food/FoodInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 74
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 75
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/module/game/food/FoodInfo;

    .line 76
    .local v0, "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    invoke-virtual {v0}, Lcom/wepie/snake/module/game/food/FoodInfo;->isNormal()Z

    move-result v5

    if-nez v5, :cond_0

    .line 74
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_0
    iget v5, v0, Lcom/wepie/snake/module/game/food/FoodInfo;->x:F

    iget v6, v0, Lcom/wepie/snake/module/game/food/FoodInfo;->y:F

    invoke-static {v5, v6}, Lcom/wepie/snake/module/game/snake/MeshUtil;->getMeshNum(FF)I

    move-result v3

    .line 78
    .local v3, "num":I
    iget-object v5, p0, Lcom/wepie/snake/module/game/snake/MeshUtil;->meshInfos:[Lcom/wepie/snake/module/game/snake/MeshInfo;

    aget-object v2, v5, v3

    .line 79
    .local v2, "meshInfo":Lcom/wepie/snake/module/game/snake/MeshInfo;
    invoke-virtual {v2, v0}, Lcom/wepie/snake/module/game/snake/MeshInfo;->addWreck(Lcom/wepie/snake/module/game/food/FoodInfo;)V

    goto :goto_1

    .line 81
    .end local v0    # "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    .end local v2    # "meshInfo":Lcom/wepie/snake/module/game/snake/MeshInfo;
    .end local v3    # "num":I
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 30
    invoke-static {}, Lcom/wepie/snake/module/game/util/TimeLog;->mark()V

    .line 31
    iget-object v3, p0, Lcom/wepie/snake/module/game/snake/MeshUtil;->meshInfos:[Lcom/wepie/snake/module/game/snake/MeshInfo;

    array-length v1, v3

    .line 32
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 33
    iget-object v3, p0, Lcom/wepie/snake/module/game/snake/MeshUtil;->meshInfos:[Lcom/wepie/snake/module/game/snake/MeshInfo;

    aget-object v2, v3, v0

    .line 34
    .local v2, "meshInfo":Lcom/wepie/snake/module/game/snake/MeshInfo;
    iput v4, v2, Lcom/wepie/snake/module/game/snake/MeshInfo;->bodyIndex:I

    .line 35
    iput v4, v2, Lcom/wepie/snake/module/game/snake/MeshInfo;->foodIndex:I

    .line 36
    iput v4, v2, Lcom/wepie/snake/module/game/snake/MeshInfo;->wreckIndex:I

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    .end local v2    # "meshInfo":Lcom/wepie/snake/module/game/snake/MeshInfo;
    :cond_0
    return-void
.end method
