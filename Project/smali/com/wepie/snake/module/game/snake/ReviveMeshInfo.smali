.class public Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;
.super Ljava/lang/Object;
.source "ReviveMeshInfo.java"


# static fields
.field private static final PER_MESH_BODY_COUNT:I = 0x3e8


# instance fields
.field public bodyIndex:I

.field public bodyInfos:[Lcom/wepie/snake/module/game/snake/PointInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x3e8

    new-array v0, v0, [Lcom/wepie/snake/module/game/snake/PointInfo;

    iput-object v0, p0, Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;->bodyInfos:[Lcom/wepie/snake/module/game/snake/PointInfo;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;->bodyIndex:I

    return-void
.end method


# virtual methods
.method public addBody(Lcom/wepie/snake/module/game/snake/PointInfo;)V
    .locals 4
    .param p1, "pointInfo"    # Lcom/wepie/snake/module/game/snake/PointInfo;

    .prologue
    const/4 v3, 0x0

    .line 14
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;->bodyInfos:[Lcom/wepie/snake/module/game/snake/PointInfo;

    array-length v1, v2

    .line 15
    .local v1, "len":I
    iget v2, p0, Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;->bodyIndex:I

    if-lt v2, v1, :cond_0

    .line 16
    add-int/lit16 v2, v1, 0x3e8

    new-array v0, v2, [Lcom/wepie/snake/module/game/snake/PointInfo;

    .line 17
    .local v0, "array":[Lcom/wepie/snake/module/game/snake/PointInfo;
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;->bodyInfos:[Lcom/wepie/snake/module/game/snake/PointInfo;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    iput-object v0, p0, Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;->bodyInfos:[Lcom/wepie/snake/module/game/snake/PointInfo;

    .line 21
    .end local v0    # "array":[Lcom/wepie/snake/module/game/snake/PointInfo;
    :cond_0
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;->bodyInfos:[Lcom/wepie/snake/module/game/snake/PointInfo;

    iget v3, p0, Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;->bodyIndex:I

    aput-object p1, v2, v3

    .line 22
    iget v2, p0, Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;->bodyIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;->bodyIndex:I

    .line 23
    return-void
.end method
