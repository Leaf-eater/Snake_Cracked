.class Lcom/wepie/snake/module/game/snake/ReviveMeshUtil$MeshComparator;
.super Ljava/lang/Object;
.source "ReviveMeshUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MeshComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil$MeshComparator;->this$0:Lcom/wepie/snake/module/game/snake/ReviveMeshUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;)I
    .locals 3
    .param p1, "ml"    # Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;
    .param p2, "mr"    # Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;

    .prologue
    .line 90
    iget v0, p1, Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;->bodyIndex:I

    .line 91
    .local v0, "leftIndex":I
    iget v1, p2, Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;->bodyIndex:I

    .line 92
    .local v1, "rightIndex":I
    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    .line 93
    :goto_0
    return v2

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 86
    check-cast p1, Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;

    check-cast p2, Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;

    invoke-virtual {p0, p1, p2}, Lcom/wepie/snake/module/game/snake/ReviveMeshUtil$MeshComparator;->compare(Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;Lcom/wepie/snake/module/game/snake/ReviveMeshInfo;)I

    move-result v0

    return v0
.end method
