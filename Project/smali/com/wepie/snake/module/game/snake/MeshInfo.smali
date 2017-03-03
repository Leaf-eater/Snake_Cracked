.class public Lcom/wepie/snake/module/game/snake/MeshInfo;
.super Ljava/lang/Object;
.source "MeshInfo.java"


# static fields
.field private static final PER_MESH_BODY_COUNT:I = 0x12c

.field private static final PER_MESH_FOOD_COUNT:I = 0x32

.field private static final PER_MESH_WRECK_COUNT:I = 0x32


# instance fields
.field public bodyIndex:I

.field public bodyInfos:[Lcom/wepie/snake/module/game/snake/PointInfo;

.field public foodIndex:I

.field public foodInfos:[Lcom/wepie/snake/module/game/food/FoodInfo;

.field public wreckIndex:I

.field public wreckInfos:[Lcom/wepie/snake/module/game/food/FoodInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x32

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, 0x12c

    new-array v0, v0, [Lcom/wepie/snake/module/game/snake/PointInfo;

    iput-object v0, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->bodyInfos:[Lcom/wepie/snake/module/game/snake/PointInfo;

    .line 14
    new-array v0, v2, [Lcom/wepie/snake/module/game/food/FoodInfo;

    iput-object v0, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->foodInfos:[Lcom/wepie/snake/module/game/food/FoodInfo;

    .line 15
    new-array v0, v2, [Lcom/wepie/snake/module/game/food/FoodInfo;

    iput-object v0, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->wreckInfos:[Lcom/wepie/snake/module/game/food/FoodInfo;

    .line 17
    iput v1, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->foodIndex:I

    .line 18
    iput v1, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->wreckIndex:I

    .line 19
    iput v1, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->bodyIndex:I

    return-void
.end method


# virtual methods
.method public addBody(Lcom/wepie/snake/module/game/snake/PointInfo;)V
    .locals 5
    .param p1, "pointInfo"    # Lcom/wepie/snake/module/game/snake/PointInfo;

    .prologue
    const/4 v3, 0x0

    .line 52
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->bodyInfos:[Lcom/wepie/snake/module/game/snake/PointInfo;

    array-length v1, v2

    .line 53
    .local v1, "len":I
    iget v2, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->bodyIndex:I

    if-lt v2, v1, :cond_0

    .line 54
    add-int/lit16 v2, v1, 0x12c

    new-array v0, v2, [Lcom/wepie/snake/module/game/snake/PointInfo;

    .line 55
    .local v0, "array":[Lcom/wepie/snake/module/game/snake/PointInfo;
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->bodyInfos:[Lcom/wepie/snake/module/game/snake/PointInfo;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iput-object v0, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->bodyInfos:[Lcom/wepie/snake/module/game/snake/PointInfo;

    .line 57
    const-string v2, "999"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----->bodyarray expand len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->bodyIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .end local v0    # "array":[Lcom/wepie/snake/module/game/snake/PointInfo;
    :cond_0
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->bodyInfos:[Lcom/wepie/snake/module/game/snake/PointInfo;

    iget v3, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->bodyIndex:I

    aput-object p1, v2, v3

    .line 61
    iget v2, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->bodyIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->bodyIndex:I

    .line 62
    return-void
.end method

.method public addFood(Lcom/wepie/snake/module/game/food/FoodInfo;)V
    .locals 5
    .param p1, "foodInfo"    # Lcom/wepie/snake/module/game/food/FoodInfo;

    .prologue
    const/4 v3, 0x0

    .line 28
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->foodInfos:[Lcom/wepie/snake/module/game/food/FoodInfo;

    array-length v1, v2

    .line 29
    .local v1, "len":I
    iget v2, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->foodIndex:I

    if-lt v2, v1, :cond_0

    .line 30
    add-int/lit8 v2, v1, 0x32

    new-array v0, v2, [Lcom/wepie/snake/module/game/food/FoodInfo;

    .line 31
    .local v0, "array":[Lcom/wepie/snake/module/game/food/FoodInfo;
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->foodInfos:[Lcom/wepie/snake/module/game/food/FoodInfo;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iput-object v0, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->foodInfos:[Lcom/wepie/snake/module/game/food/FoodInfo;

    .line 33
    const-string v2, "999"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----->foodarray expand len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->foodIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .end local v0    # "array":[Lcom/wepie/snake/module/game/food/FoodInfo;
    :cond_0
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->foodInfos:[Lcom/wepie/snake/module/game/food/FoodInfo;

    iget v3, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->foodIndex:I

    aput-object p1, v2, v3

    .line 36
    iget v2, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->foodIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->foodIndex:I

    .line 37
    return-void
.end method

.method public addWreck(Lcom/wepie/snake/module/game/food/FoodInfo;)V
    .locals 5
    .param p1, "foodInfo"    # Lcom/wepie/snake/module/game/food/FoodInfo;

    .prologue
    const/4 v3, 0x0

    .line 40
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->wreckInfos:[Lcom/wepie/snake/module/game/food/FoodInfo;

    array-length v1, v2

    .line 41
    .local v1, "len":I
    iget v2, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->wreckIndex:I

    if-lt v2, v1, :cond_0

    .line 42
    add-int/lit8 v2, v1, 0x32

    new-array v0, v2, [Lcom/wepie/snake/module/game/food/FoodInfo;

    .line 43
    .local v0, "array":[Lcom/wepie/snake/module/game/food/FoodInfo;
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->wreckInfos:[Lcom/wepie/snake/module/game/food/FoodInfo;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iput-object v0, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->wreckInfos:[Lcom/wepie/snake/module/game/food/FoodInfo;

    .line 45
    const-string v2, "999"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----->wreckArray expand len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->wreckIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .end local v0    # "array":[Lcom/wepie/snake/module/game/food/FoodInfo;
    :cond_0
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->wreckInfos:[Lcom/wepie/snake/module/game/food/FoodInfo;

    iget v3, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->wreckIndex:I

    aput-object p1, v2, v3

    .line 48
    iget v2, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->wreckIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->wreckIndex:I

    .line 49
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->foodIndex:I

    .line 23
    iput v0, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->bodyIndex:I

    .line 24
    iput v0, p0, Lcom/wepie/snake/module/game/snake/MeshInfo;->wreckIndex:I

    .line 25
    return-void
.end method
