.class public Lcom/wepie/snake/module/game/food/WreckFactory;
.super Ljava/lang/Object;
.source "WreckFactory.java"


# instance fields
.field private meshUtil:Lcom/wepie/snake/module/game/snake/MeshUtil;

.field private wreckMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/wepie/snake/module/game/skin/SkinInfo;",
            "Lcom/wepie/snake/module/game/food/Wreck;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/wepie/snake/module/game/snake/MeshUtil;)V
    .locals 1
    .param p1, "meshUtil"    # Lcom/wepie/snake/module/game/snake/MeshUtil;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/game/food/WreckFactory;->wreckMap:Ljava/util/HashMap;

    .line 19
    iput-object p1, p0, Lcom/wepie/snake/module/game/food/WreckFactory;->meshUtil:Lcom/wepie/snake/module/game/snake/MeshUtil;

    .line 20
    return-void
.end method


# virtual methods
.method public addWrecks(Lcom/wepie/snake/module/game/snake/SnakeInfo;)V
    .locals 3
    .param p1, "snakeInfo"    # Lcom/wepie/snake/module/game/snake/SnakeInfo;

    .prologue
    .line 49
    iget-object v0, p1, Lcom/wepie/snake/module/game/snake/SnakeInfo;->skinInfo:Lcom/wepie/snake/module/game/skin/SkinInfo;

    .line 50
    .local v0, "skinInfo":Lcom/wepie/snake/module/game/skin/SkinInfo;
    iget-object v2, p0, Lcom/wepie/snake/module/game/food/WreckFactory;->wreckMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    new-instance v1, Lcom/wepie/snake/module/game/food/Wreck;

    invoke-direct {v1, v0}, Lcom/wepie/snake/module/game/food/Wreck;-><init>(Lcom/wepie/snake/module/game/skin/SkinInfo;)V

    .line 52
    .local v1, "wreck":Lcom/wepie/snake/module/game/food/Wreck;
    iget-object v2, p0, Lcom/wepie/snake/module/game/food/WreckFactory;->wreckMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .end local v1    # "wreck":Lcom/wepie/snake/module/game/food/Wreck;
    :cond_0
    iget-object v2, p0, Lcom/wepie/snake/module/game/food/WreckFactory;->wreckMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wepie/snake/module/game/food/Wreck;

    .line 55
    .restart local v1    # "wreck":Lcom/wepie/snake/module/game/food/Wreck;
    iget-object v2, p1, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    iget-object v2, v2, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/wepie/snake/module/game/food/Wreck;->addWrecks(Ljava/util/ArrayList;)V

    .line 56
    return-void
.end method

.method public drawWrecks()V
    .locals 4

    .prologue
    .line 42
    iget-object v2, p0, Lcom/wepie/snake/module/game/food/WreckFactory;->wreckMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 43
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/wepie/snake/module/game/skin/SkinInfo;Lcom/wepie/snake/module/game/food/Wreck;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wepie/snake/module/game/food/Wreck;

    .line 44
    .local v1, "wreck":Lcom/wepie/snake/module/game/food/Wreck;
    invoke-virtual {v1}, Lcom/wepie/snake/module/game/food/Wreck;->drawSelf()V

    goto :goto_0

    .line 46
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/wepie/snake/module/game/skin/SkinInfo;Lcom/wepie/snake/module/game/food/Wreck;>;"
    .end local v1    # "wreck":Lcom/wepie/snake/module/game/food/Wreck;
    :cond_0
    return-void
.end method

.method public initWreckMesh()V
    .locals 5

    .prologue
    .line 35
    iget-object v2, p0, Lcom/wepie/snake/module/game/food/WreckFactory;->wreckMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 36
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/wepie/snake/module/game/skin/SkinInfo;Lcom/wepie/snake/module/game/food/Wreck;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wepie/snake/module/game/food/Wreck;

    .line 37
    .local v1, "wreck":Lcom/wepie/snake/module/game/food/Wreck;
    iget-object v3, p0, Lcom/wepie/snake/module/game/food/WreckFactory;->meshUtil:Lcom/wepie/snake/module/game/snake/MeshUtil;

    iget-object v4, v1, Lcom/wepie/snake/module/game/food/Wreck;->foodInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/wepie/snake/module/game/snake/MeshUtil;->refreshWreckMesh(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 39
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/wepie/snake/module/game/skin/SkinInfo;Lcom/wepie/snake/module/game/food/Wreck;>;"
    .end local v1    # "wreck":Lcom/wepie/snake/module/game/food/Wreck;
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 8

    .prologue
    .line 23
    iget-object v6, p0, Lcom/wepie/snake/module/game/food/WreckFactory;->wreckMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 24
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/wepie/snake/module/game/skin/SkinInfo;Lcom/wepie/snake/module/game/food/Wreck;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wepie/snake/module/game/food/Wreck;

    .line 25
    .local v5, "wreck":Lcom/wepie/snake/module/game/food/Wreck;
    iget-object v2, v5, Lcom/wepie/snake/module/game/food/Wreck;->foodInfos:Ljava/util/ArrayList;

    .line 26
    .local v2, "foodInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/module/game/food/FoodInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 27
    .local v4, "size":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 28
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wepie/snake/module/game/food/FoodInfo;

    .line 29
    .local v1, "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    const/4 v7, 0x3

    iput v7, v1, Lcom/wepie/snake/module/game/food/FoodInfo;->status:I

    .line 27
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 32
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/wepie/snake/module/game/skin/SkinInfo;Lcom/wepie/snake/module/game/food/Wreck;>;"
    .end local v1    # "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    .end local v2    # "foodInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/module/game/food/FoodInfo;>;"
    .end local v3    # "j":I
    .end local v4    # "size":I
    .end local v5    # "wreck":Lcom/wepie/snake/module/game/food/Wreck;
    :cond_1
    return-void
.end method
