.class public Lcom/wepie/snake/module/game/snake/PointInfo;
.super Ljava/lang/Object;
.source "PointInfo.java"


# instance fields
.field public direction:F

.field public snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;

.field public x:F

.field public x1:F

.field public x2:F

.field public x3:F

.field public x4:F

.field public y:F

.field public y1:F

.field public y2:F

.field public y3:F

.field public y4:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setPointsByDirection(FFFF)V
    .locals 14
    .param p1, "r"    # F
    .param p2, "cx"    # F
    .param p3, "cy"    # F
    .param p4, "dir"    # F

    .prologue
    .line 28
    move/from16 v0, p4

    iput v0, p0, Lcom/wepie/snake/module/game/snake/PointInfo;->direction:F

    .line 29
    move/from16 v0, p4

    float-to-double v10, v0

    const-wide v12, 0x4012d97c7f3321d2L    # 4.71238898038469

    add-double/2addr v10, v12

    double-to-float v0, v10

    move/from16 p4, v0

    .line 30
    float-to-double v10, p1

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-float v2, v10

    .line 31
    .local v2, "R":F
    const-wide v10, 0x3fe921fb54442d18L    # 0.7853981633974483

    move/from16 v0, p4

    float-to-double v12, v0

    add-double/2addr v10, v12

    double-to-float v3, v10

    .line 32
    .local v3, "rad1":F
    const-wide v10, 0x4002d97c7f3321d2L    # 2.356194490192345

    move/from16 v0, p4

    float-to-double v12, v0

    add-double/2addr v10, v12

    double-to-float v4, v10

    .line 34
    .local v4, "rad2":F
    float-to-double v10, v2

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-float v5, v10

    .line 35
    .local v5, "x01":F
    float-to-double v10, v2

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-float v7, v10

    .line 36
    .local v7, "y01":F
    float-to-double v10, v2

    float-to-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-float v6, v10

    .line 37
    .local v6, "x02":F
    float-to-double v10, v2

    float-to-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-float v8, v10

    .line 39
    .local v8, "y02":F
    add-float v9, p2, v5

    iput v9, p0, Lcom/wepie/snake/module/game/snake/PointInfo;->x1:F

    .line 40
    add-float v9, p3, v7

    iput v9, p0, Lcom/wepie/snake/module/game/snake/PointInfo;->y1:F

    .line 42
    add-float v9, p2, v6

    iput v9, p0, Lcom/wepie/snake/module/game/snake/PointInfo;->x2:F

    .line 43
    add-float v9, p3, v8

    iput v9, p0, Lcom/wepie/snake/module/game/snake/PointInfo;->y2:F

    .line 45
    sub-float v9, p2, v5

    iput v9, p0, Lcom/wepie/snake/module/game/snake/PointInfo;->x3:F

    .line 46
    sub-float v9, p3, v7

    iput v9, p0, Lcom/wepie/snake/module/game/snake/PointInfo;->y3:F

    .line 48
    sub-float v9, p2, v6

    iput v9, p0, Lcom/wepie/snake/module/game/snake/PointInfo;->x4:F

    .line 49
    sub-float v9, p3, v8

    iput v9, p0, Lcom/wepie/snake/module/game/snake/PointInfo;->y4:F

    .line 63
    return-void
.end method
