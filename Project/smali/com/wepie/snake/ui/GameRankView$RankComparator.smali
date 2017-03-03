.class Lcom/wepie/snake/ui/GameRankView$RankComparator;
.super Ljava/lang/Object;
.source "GameRankView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wepie/snake/ui/GameRankView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RankComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/wepie/snake/module/game/snake/SnakeInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/ui/GameRankView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/ui/GameRankView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/ui/GameRankView;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/wepie/snake/ui/GameRankView$RankComparator;->this$0:Lcom/wepie/snake/ui/GameRankView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/wepie/snake/module/game/snake/SnakeInfo;Lcom/wepie/snake/module/game/snake/SnakeInfo;)I
    .locals 3
    .param p1, "snakeLeft"    # Lcom/wepie/snake/module/game/snake/SnakeInfo;
    .param p2, "snakeRight"    # Lcom/wepie/snake/module/game/snake/SnakeInfo;

    .prologue
    .line 184
    invoke-virtual {p1}, Lcom/wepie/snake/module/game/snake/SnakeInfo;->getLength()I

    move-result v0

    .line 185
    .local v0, "scoreLeft":I
    invoke-virtual {p2}, Lcom/wepie/snake/module/game/snake/SnakeInfo;->getLength()I

    move-result v1

    .line 186
    .local v1, "scoreRight":I
    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    .line 187
    :goto_0
    return v2

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 181
    check-cast p1, Lcom/wepie/snake/module/game/snake/SnakeInfo;

    check-cast p2, Lcom/wepie/snake/module/game/snake/SnakeInfo;

    invoke-virtual {p0, p1, p2}, Lcom/wepie/snake/ui/GameRankView$RankComparator;->compare(Lcom/wepie/snake/module/game/snake/SnakeInfo;Lcom/wepie/snake/module/game/snake/SnakeInfo;)I

    move-result v0

    return v0
.end method
