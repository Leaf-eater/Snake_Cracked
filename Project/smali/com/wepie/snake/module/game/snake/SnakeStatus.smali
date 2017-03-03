.class public Lcom/wepie/snake/module/game/snake/SnakeStatus;
.super Ljava/lang/Object;
.source "SnakeStatus.java"


# static fields
.field public static final CODE_DEFAULT:I = 0x0

.field public static final CODE_DROP_FOOD:I = 0x2

.field public static final CODE_DROP_NODE:I = 0x1

.field public static final EAT_FOOD_COUNT_FOR_INCREASE_NODE:I = 0x6

.field private static final EAT_WRECK_FOR_INCREASE_FOOD:I = 0x3

.field public static final REVIVE_FRAME:I = 0x64

.field public static final SUPER_FRAME_COUNT:I = 0x3c


# instance fields
.field public foodCount:I

.field public isAlive:Z

.field public isReviving:Z

.field public killNum:I

.field public needRevive:Z

.field public reviveFrameCount:I

.field public speedRate:I

.field private speedUpFrameCount:I

.field public superFrameCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean v1, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->isAlive:Z

    .line 8
    iput-boolean v0, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->needRevive:Z

    .line 9
    iput-boolean v0, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->isReviving:Z

    .line 11
    iput v1, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->speedRate:I

    .line 12
    iput v0, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->foodCount:I

    .line 13
    iput v0, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->killNum:I

    .line 15
    iput v0, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->speedUpFrameCount:I

    .line 16
    iput v0, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->reviveFrameCount:I

    .line 17
    iput v0, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->superFrameCount:I

    .line 30
    return-void
.end method


# virtual methods
.method public doDie()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->isAlive:Z

    .line 87
    iput v0, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->reviveFrameCount:I

    .line 88
    iput v0, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->killNum:I

    .line 89
    iput v0, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->foodCount:I

    .line 90
    iput v0, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->speedUpFrameCount:I

    .line 91
    return-void
.end method

.method public eatFood2Increase(I)Z
    .locals 3
    .param p1, "bodyCount"    # I

    .prologue
    const/4 v0, 0x0

    .line 59
    iget v1, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->foodCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->foodCount:I

    .line 60
    const/16 v1, 0x1388

    if-lt p1, v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    iget v1, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->foodCount:I

    invoke-virtual {p0, p1}, Lcom/wepie/snake/module/game/snake/SnakeStatus;->getFoodCountForIncreaseNode(I)I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 63
    iput v0, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->foodCount:I

    .line 64
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public eatWreck2Increase(I)Z
    .locals 3
    .param p1, "bodyCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 70
    iget v2, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->foodCount:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->foodCount:I

    .line 71
    const/16 v2, 0x1388

    if-lt p1, v2, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v1

    .line 73
    :cond_1
    invoke-virtual {p0, p1}, Lcom/wepie/snake/module/game/snake/SnakeStatus;->getFoodCountForIncreaseNode(I)I

    move-result v0

    .line 74
    .local v0, "step":I
    iget v2, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->foodCount:I

    if-lt v2, v0, :cond_0

    .line 75
    iget v1, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->foodCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->foodCount:I

    .line 76
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getFoodCountForIncreaseNode(I)I
    .locals 1
    .param p1, "bodyCount"    # I

    .prologue
    .line 82
    div-int/lit16 v0, p1, 0xfa

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public speedDown()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->speedRate:I

    .line 100
    return-void
.end method

.method public speedUp(I)V
    .locals 1
    .param p1, "bodyCount"    # I

    .prologue
    .line 94
    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->speedRate:I

    goto :goto_0
.end method

.method public updateMoveStatus(I)I
    .locals 4
    .param p1, "bodyCount"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x2

    .line 34
    iget v2, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->superFrameCount:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->superFrameCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->superFrameCount:I

    .line 35
    :cond_0
    iget v2, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->speedRate:I

    if-ne v2, v0, :cond_3

    .line 36
    iget v2, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->speedUpFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->speedUpFrameCount:I

    .line 37
    iget v2, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->speedUpFrameCount:I

    sget v3, Lcom/wepie/snake/module/game/snake/GameConfig;->FRAMES_COUNT_FOR_DROP_FOOD:I

    if-le v2, v3, :cond_3

    .line 38
    iput v1, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->speedUpFrameCount:I

    .line 39
    iget v2, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->foodCount:I

    if-nez v2, :cond_1

    .line 40
    const/4 v2, 0x5

    if-gt p1, v2, :cond_2

    .line 41
    invoke-virtual {p0}, Lcom/wepie/snake/module/game/snake/SnakeStatus;->speedDown()V

    .line 48
    :cond_1
    iget v2, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->speedRate:I

    if-ne v2, v0, :cond_3

    .line 49
    iget v1, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->foodCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->foodCount:I

    .line 55
    :goto_0
    return v0

    .line 43
    :cond_2
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/game/snake/SnakeStatus;->getFoodCountForIncreaseNode(I)I

    move-result v0

    iput v0, p0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->foodCount:I

    .line 44
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 55
    goto :goto_0
.end method
