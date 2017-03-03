.class public Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;
.super Ljava/lang/Object;
.source "ReviveMeshUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/module/game/snake/ReviveMeshUtil$MeshComparator;
    }
.end annotation


# static fields
.field private static final REVIVE_M:I = 0x4

.field private static final REVIVE_N:I = 0x4

.field public static heightHalfBorder:F

.field public static len:I

.field public static unitx:F

.field public static unity:F

.field public static withHalfBorder:F


# instance fields
.field private comparator:Lcom/wepie/snake/module/game/snake/ReviveMeshUtil$MeshComparator;

.field public meshInfoArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;",
            ">;"
        }
    .end annotation
.end field

.field public meshInfos:[Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v2, 0x40000000    # 2.0f

    .line 15
    sget v0, Lcom/wepie/snake/module/game/snake/GameConfig;->MAP_WIDTH:F

    sget v1, Lcom/wepie/snake/module/game/util/CoordUtil;->camera_left:F

    mul-float/2addr v0, v1

    sput v0, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->withHalfBorder:F

    .line 16
    sget v0, Lcom/wepie/snake/module/game/snake/GameConfig;->MAP_HEIGHT:F

    sget v1, Lcom/wepie/snake/module/game/util/CoordUtil;->camera_top:F

    mul-float/2addr v0, v1

    sput v0, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->heightHalfBorder:F

    .line 17
    sget v0, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->withHalfBorder:F

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    sput v0, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->unitx:F

    .line 18
    sget v0, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->heightHalfBorder:F

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    sput v0, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->unity:F

    .line 23
    const/16 v0, 0x10

    sput v0, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->len:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->meshInfoArray:Ljava/util/ArrayList;

    .line 22
    new-instance v2, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil$MeshComparator;

    invoke-direct {v2, p0}, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil$MeshComparator;-><init>(Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;)V

    iput-object v2, p0, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->comparator:Lcom/wepie/snake/module/game/snake/ReviveMeshUtil$MeshComparator;

    .line 26
    sget v2, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->len:I

    new-array v2, v2, [Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;

    iput-object v2, p0, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->meshInfos:[Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;

    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->len:I

    if-ge v0, v2, :cond_0

    .line 28
    new-instance v1, Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;

    invoke-direct {v1}, Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;-><init>()V

    .line 29
    .local v1, "meshInfo":Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->meshInfos:[Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;

    aput-object v1, v2, v0

    .line 30
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->meshInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    .end local v1    # "meshInfo":Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;
    :cond_0
    return-void
.end method

.method public static getMeshNum(FF)I
    .locals 5
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 59
    sget v3, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->withHalfBorder:F

    add-float/2addr v3, p0

    sget v4, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->unitx:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v0, v3, 0x1

    .line 60
    .local v0, "column":I
    sget v3, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->heightHalfBorder:F

    sub-float/2addr v3, p1

    sget v4, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->unity:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v2, v3, 0x1

    .line 62
    .local v2, "row":I
    add-int/lit8 v3, v2, -0x1

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v0

    add-int/lit8 v1, v3, -0x1

    .line 63
    .local v1, "num":I
    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 64
    :cond_0
    sget v3, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->len:I

    add-int/lit8 v3, v3, -0x1

    if-le v1, v3, :cond_1

    sget v3, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->len:I

    add-int/lit8 v1, v3, -0x1

    .line 65
    :cond_1
    return v1
.end method

.method public static getMeshStartX(I)F
    .locals 3
    .param p0, "meshNum"    # I

    .prologue
    .line 77
    rem-int/lit8 v0, p0, 0x4

    .line 78
    .local v0, "m":I
    sget v1, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->unitx:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    sget v2, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->withHalfBorder:F

    sub-float/2addr v1, v2

    return v1
.end method

.method public static getMeshStartY(I)F
    .locals 4
    .param p0, "meshNum"    # I

    .prologue
    .line 82
    div-int/lit8 v0, p0, 0x4

    .line 83
    .local v0, "n":I
    sget v1, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->heightHalfBorder:F

    sget v2, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->unity:F

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
    .line 53
    iget v2, p1, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    iget v3, p1, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    invoke-static {v2, v3}, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->getMeshNum(FF)I

    move-result v1

    .line 54
    .local v1, "num":I
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->meshInfos:[Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;

    aget-object v0, v2, v1

    .line 55
    .local v0, "meshInfo":Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;
    invoke-virtual {v0, p1}, Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;->addBody(Lcom/wepie/snake/module/game/snake/PointInfo;)V

    .line 56
    return-void
.end method

.method public getMinSelfBodyMeshNum(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 69
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->meshInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;

    .line 70
    .local v1, "meshInfo":Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->len:I

    if-ge v0, v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->meshInfos:[Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;

    aget-object v2, v2, v0

    if-ne v2, v1, :cond_0

    .line 73
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 70
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public refreshMeshInfo(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 43
    .local p1, "pointArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/module/game/snake/PointInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 44
    .local v2, "size":I
    sget v3, Lcom/wepie/snake/module/game/snake/GameConfig;->PER_NODE_POINT_COUNT:I

    .line 45
    .local v3, "step":I
    sub-int v0, v2, v3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 46
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wepie/snake/module/game/snake/PointInfo;

    .line 47
    .local v1, "pointInfo":Lcom/wepie/snake/module/game/snake/PointInfo;
    invoke-virtual {p0, v1}, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->addBodyMesh(Lcom/wepie/snake/module/game/snake/PointInfo;)V

    .line 45
    sub-int/2addr v0, v3

    goto :goto_0

    .line 49
    .end local v1    # "pointInfo":Lcom/wepie/snake/module/game/snake/PointInfo;
    :cond_0
    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->meshInfoArray:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->comparator:Lcom/wepie/snake/module/game/snake/ReviveMeshUtil$MeshComparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 50
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 35
    iget-object v3, p0, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->meshInfos:[Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;

    array-length v1, v3

    .line 36
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 37
    iget-object v3, p0, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;->meshInfos:[Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;

    aget-object v2, v3, v0

    .line 38
    .local v2, "meshInfo":Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;
    const/4 v3, 0x0

    iput v3, v2, Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;->bodyIndex:I

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    .end local v2    # "meshInfo":Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;
    :cond_0
    return-void
.end method
