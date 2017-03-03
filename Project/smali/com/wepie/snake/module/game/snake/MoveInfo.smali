.class public Lcom/wepie/snake/module/game/snake/MoveInfo;
.super Ljava/lang/Object;
.source "MoveInfo.java"


# static fields
.field public static final DIR_TYPE_BODY:I = 0x1

.field public static final DIR_TYPE_BORDER:I = 0x2

.field public static final DIR_TYPE_WRECK:I = 0x3

.field public static final per_frame_rad:F = 0.17453292f


# instance fields
.field public changeDirectionType:I

.field public cur_direction:F

.field public dirTargetX:F

.field public dirTargetY:F

.field public dx:F

.field public dy:F

.field public target_rad:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/wepie/snake/module/game/snake/MoveInfo;->cur_direction:F

    .line 12
    iput v0, p0, Lcom/wepie/snake/module/game/snake/MoveInfo;->target_rad:F

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/wepie/snake/module/game/snake/MoveInfo;->changeDirectionType:I

    return-void
.end method


# virtual methods
.method public moveByDirection(F)V
    .locals 11
    .param p1, "v"    # F

    .prologue
    const v10, 0x3e32b8c2

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    .line 29
    iget v4, p0, Lcom/wepie/snake/module/game/snake/MoveInfo;->target_rad:F

    iget v5, p0, Lcom/wepie/snake/module/game/snake/MoveInfo;->cur_direction:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 31
    iget v4, p0, Lcom/wepie/snake/module/game/snake/MoveInfo;->target_rad:F

    iget v5, p0, Lcom/wepie/snake/module/game/snake/MoveInfo;->cur_direction:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 32
    .local v1, "dr":F
    cmpg-float v4, v1, v10

    if-gtz v4, :cond_1

    .line 33
    iget v4, p0, Lcom/wepie/snake/module/game/snake/MoveInfo;->target_rad:F

    iput v4, p0, Lcom/wepie/snake/module/game/snake/MoveInfo;->cur_direction:F

    .line 55
    .end local v1    # "dr":F
    :cond_0
    :goto_0
    float-to-double v4, p1

    iget v6, p0, Lcom/wepie/snake/module/game/snake/MoveInfo;->cur_direction:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v2, v4

    .line 56
    .local v2, "vx":F
    float-to-double v4, p1

    iget v6, p0, Lcom/wepie/snake/module/game/snake/MoveInfo;->cur_direction:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v3, v4

    .line 58
    .local v3, "vy":F
    invoke-static {v2}, Lcom/wepie/snake/module/game/util/CoordUtil;->screenSize2GLSize(F)F

    move-result v4

    iput v4, p0, Lcom/wepie/snake/module/game/snake/MoveInfo;->dx:F

    .line 59
    invoke-static {v3}, Lcom/wepie/snake/module/game/util/CoordUtil;->screenSize2GLSize(F)F

    move-result v4

    iput v4, p0, Lcom/wepie/snake/module/game/snake/MoveInfo;->dy:F

    .line 60
    return-void

    .line 35
    .end local v2    # "vx":F
    .end local v3    # "vy":F
    .restart local v1    # "dr":F
    :cond_1
    iget v4, p0, Lcom/wepie/snake/module/game/snake/MoveInfo;->target_rad:F

    iget v5, p0, Lcom/wepie/snake/module/game/snake/MoveInfo;->cur_direction:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 36
    float-to-double v4, v1

    cmpg-double v4, v4, v8

    if-gez v4, :cond_3

    .line 37
    const/4 v0, 0x1

    .line 48
    .local v0, "dir":I
    :goto_1
    iget v4, p0, Lcom/wepie/snake/module/game/snake/MoveInfo;->cur_direction:F

    int-to-float v5, v0

    mul-float/2addr v5, v10

    add-float/2addr v4, v5

    iput v4, p0, Lcom/wepie/snake/module/game/snake/MoveInfo;->cur_direction:F

    .line 49
    iget v4, p0, Lcom/wepie/snake/module/game/snake/MoveInfo;->cur_direction:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    iget v4, p0, Lcom/wepie/snake/module/game/snake/MoveInfo;->cur_direction:F

    float-to-double v4, v4

    add-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, p0, Lcom/wepie/snake/module/game/snake/MoveInfo;->cur_direction:F

    .line 50
    :cond_2
    iget v4, p0, Lcom/wepie/snake/module/game/snake/MoveInfo;->cur_direction:F

    float-to-double v4, v4

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/wepie/snake/module/game/snake/MoveInfo;->cur_direction:F

    float-to-double v4, v4

    sub-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, p0, Lcom/wepie/snake/module/game/snake/MoveInfo;->cur_direction:F

    goto :goto_0

    .line 39
    .end local v0    # "dir":I
    :cond_3
    const/4 v0, -0x1

    .restart local v0    # "dir":I
    goto :goto_1

    .line 42
    .end local v0    # "dir":I
    :cond_4
    float-to-double v4, v1

    cmpl-double v4, v4, v8

    if-lez v4, :cond_5

    .line 43
    const/4 v0, 0x1

    .restart local v0    # "dir":I
    goto :goto_1

    .line 45
    .end local v0    # "dir":I
    :cond_5
    const/4 v0, -0x1

    .restart local v0    # "dir":I
    goto :goto_1
.end method

.method public setTargetDirection(F)V
    .locals 0
    .param p1, "targetDirection"    # F

    .prologue
    .line 25
    iput p1, p0, Lcom/wepie/snake/module/game/snake/MoveInfo;->target_rad:F

    .line 26
    return-void
.end method
